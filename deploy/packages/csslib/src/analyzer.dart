// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of parser;

// TODO(terry): Detect invalid directive usage.  All @imports must occur before
//              all rules other than @charset directive.  Any @import directive
//              after any non @charset or @import directive are ignored. e.g.,
//                  @import "a.css";
//                  div { color: red; }
//                  @import "b.css";
//              becomes:
//                  @import "a.css";
//                  div { color: red; }
// <http://www.w3.org/TR/css3-syntax/#at-rules>

/**
 * Analysis phase will validate/fixup any new CSS feature or any SASS style
 * feature.
 */
class Analyzer {
  final List<StyleSheet> _styleSheets;
  final Messages _messages;
  VarDefinitions varDefs;

  Analyzer(this._styleSheets, this._messages);

  void run() {
    varDefs = new VarDefinitions(_styleSheets);

    // Any cycles?
    var cycles = findAllCycles();
    for (var cycle in cycles) {
      _messages.warning("var cycle detected var-${cycle.definedName}",
          cycle.span);
      // TODO(terry): What if no var definition for a var usage an error?
      // TODO(terry): Ensure a var definition imported from a different style
      //              sheet works.
    }

    // Remove any var definition from the stylesheet that has a cycle.
    _styleSheets.forEach((styleSheet) =>
        new RemoveVarDefinitions(cycles).visitStyleSheet(styleSheet));
  }

  List<VarDefinition> findAllCycles() {
    var cycles = [];

    varDefs.map.values.forEach((value) {
      if (hasCycle(value.property)) cycles.add(value);
     });

    // Update our local list of known varDefs remove any varDefs with a cycle.
    // So the same varDef cycle isn't reported for each style sheet processed.
    for (var cycle in cycles) {
      varDefs.map.remove(cycle.property);
    }

    return cycles;
  }

  Iterable<VarUsage> variablesOf(Expressions exprs) =>
      exprs.expressions.where((e) => e is VarUsage);

  bool hasCycle(String varName, {Set<String> visiting, Set<String> visited}) {
    if (visiting == null) visiting = new Set();
    if (visited == null) visited = new Set();
    if (visiting.contains(varName)) return true;
    if (visited.contains(varName)) return false;
    visiting.add(varName);
    visited.add(varName);
    bool cycleDetected = false;
    if (varDefs.map[varName] != null) {
      for (var usage in variablesOf(varDefs.map[varName].expression)) {
        if (hasCycle(usage.name, visiting: visiting, visited: visited)) {
          cycleDetected = true;
          break;
        }
      }
    }
    visiting.remove(varName);
    return cycleDetected;
  }

  // TODO(terry): Need to start supporting @host, custom pseudo elements,
  //              composition, intrinsics, etc.
}


/** Find all var definitions from a list of stylesheets. */
class VarDefinitions extends Visitor {
  /** Map of variable name key to it's definition. */
  final Map<String, VarDefinition> map = new Map<String, VarDefinition>();

  VarDefinitions(List<StyleSheet> styleSheets) {
    for (var styleSheet in styleSheets) {
      visitTree(styleSheet);
    }
  }

  void visitVarDefinition(VarDefinition node) {
    // Replace with latest variable definition.
    map[node.definedName] = node;
    super.visitVarDefinition(node);
  }

  void visitVarDefinitionDirective(VarDefinitionDirective node) {
    visitVarDefinition(node.def);
  }
}

/**
 * Remove the var definition from the stylesheet where it is defined; if it is
 * a definition from the list to delete.
 */
class RemoveVarDefinitions extends Visitor {
  final List<VarDefinition> _varDefsToRemove;

  RemoveVarDefinitions(this._varDefsToRemove);

  void visitTree(StyleSheet tree) {
    visitStyleSheet(tree);
  }

  void visitStyleSheet(StyleSheet ss) {
    var idx = ss.topLevels.length;
    while(--idx >= 0) {
      var topLevel = ss.topLevels[idx];
      if (topLevel is VarDefinitionDirective &&
          _varDefsToRemove.contains(topLevel.def)) {
        ss.topLevels.removeAt(idx);
      }
    }

    super.visitStyleSheet(ss);
  }

  void visitDeclarationGroup(DeclarationGroup node) {
    var idx = node.declarations.length;
    while (--idx >= 0) {
      var decl = node.declarations[idx];
      if (decl is VarDefinition && _varDefsToRemove.contains(decl)) {
        node.declarations.removeAt(idx);
      }
    }

    super.visitDeclarationGroup(node);
  }
}
