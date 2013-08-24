
[Source](https://www.dartlang.org/codelabs/web-ui-writer/ "Permalink to IO 2013 Dart Codelab")

# IO 2013 Dart Codelab

Please click [here][1] if you are not redirected within a few seconds.

![][2]

Dart on the Modern Web

Google I/O 2013 — Code lab

Dart on the Modern Web![][3]

Using Dart to Build a Modern Web App

* * *

Welcome to Dart! We built Dart to help developers from all platforms build awesome apps for the modern web. Dart compiles to JavaScript to run across all modern browsers. Dart is an easy-to-learn language at the hub of &nbsp;a powerful set of tools for structured web app engineering. The Dart SDK contains a rich set of libraries, a powerful editor, a package manager, and much more.

In this code lab, you’ll build a simple, single-page, modern web app for desktop and mobile.

You will learn:

  1. A bit of the Dart language and libraries
  2. Client-side templating
  3. Declarative dynamic DOM generation
  4. MDV-style data binding to sync UI elements with data
  5. How to use the Dart HTML and Web UI libraries
  6. How to store data locally in your browser
  7. Optimizing for mobile&nbsp;devices

## Prerequisites

This code lab assumes that you are familiar with web programming (HTML, CSS) and object-oriented programming. You do not need to be an expert in web programming to enjoy this code lab.

This code lab requires Dart Editor, which you will download and install in Step 0.

Note:&nbsp;Dart Editor runs on Windows (Vista, 7, or 8), Linux, or Mac.

* * *

## Resources

There are numerous resources for the new Dart developer. Here are some of our&nbsp;recommendations:

  1. [A Game of Darts - Tutorials][4]
  2. [Target 6: Get Started with Web UI][5]
  3. [Dart Language Tour][6]
  4. [Dart Library Tour][7]
  5. [Programmer's Guide][8]

* * *

This step sets the stage. You make sure you have the right software, can run the finished app, and know how to use Dart Editor’s integrated debugger.

## Objectives

  1. Get the latest version of Dart Editor
  2. Download the source code for the sample app
  3. Run the finished version of the app
  4. Look at debugging information for the running app

## Concepts overview

  1. Dartium&nbsp;(Chromium with a built-in Dart VM) and the Dart SDK are included in Dart Editor download.
  2. You can run Dart web apps in Dartium or in any modern browser. (Dart Editor compiles the Dart code to JavaScript, using an SDK tool called dart2js.)

## Walkthrough

### Download or update Dart Editor

If you don’t have a copy of Dart Editor, get it:

  1. Go to [dartlang.org/editor/][9].
  2. Download the version for your OS.
  3. Unzip the file. You’re done!
  4. Launch Dart Editor by double-clicking the DartEditor&nbsp;executable file.

![][10]

Note:&nbsp;If you’re on a Mac, you might see an “unidentified developer” error. Here’s the solution: Instead of double-clicking the DartEditor&nbsp;executable file, right-click (or Ctl%2Bclick) it to bring up a context menu, and choose Open. Then, in the dialog that comes up, click Open. An alternative workaround is to change your security settings (see [Troubleshooting Dart Editor][11]).

If you do&nbsp;already have a copy of Dart Editor, make sure you’re on the latest build:

  1. Launch Dart Editor.
  2. Close Preferences&nbsp;if you’ve opened it.
  3. Open About Dart Editor.
  4. If the button at the bottom right (Check for Update or Download Update)&nbsp;is enabled, click it, and download the update.
  5. When the button says Apply Update, click it.

### Download the app’s source code

You can either clone the git repo or download the ZIP file.

To clone the repo from the command line:

git clone 

To get the source as a ZIP file:

  1. Go to [https://github.com/dart-lang/io-2013-dart-codela][12][b][12]
  2. Click the Download ZIP button&nbsp;in the right-hand column.

![][10]

### Run the finished application

Now that you’ve downloaded the source code, try out the finished application.

  1. If you haven’t already done so, launch Dart Editor by double-clicking the DartEditor&nbsp;executable file.

![][10]

If you have trouble, see [Troubleshooting Dart Editor][11].


  1. In Dart Editor, type Ctl%2BO&nbsp;(Linux/Windows) or Cmd%2BO&nbsp;(Mac) or choose File &gt; Open Existing Folder.

  2. Select the io-2013-codelab-finished&nbsp;directory in the folder where you extracted the source code, and click Open.&nbsp;

IMPORTANT: Make sure you open io-2013-codelab-finished&nbsp;and not&nbsp;its parent directory. Dart Editor analyzes all of the code in the open folder. For this code lab, it is more efficient to open just the directory for your active step rather than the top-level directory containing all of the steps.

![][10]

Dart Editor installs the app’s dependencies and starts building it. The progress bar is in the lower right corner of the window. Dart Editor keeps the dependencies and compiled version up-to-date. However, if you ever need or want to build the app manually, you can follow these steps:

  1. In the Files view, right-click pubspec.yaml&nbsp;and choose Pub Install.
  2. In the Tools menu, choose Reanalyze Sources.
(The editor might beat you to this, but it won’t hurt to do it twice.)
  3. In the Files view, right-click&nbsp;build.dart&nbsp;and choose Run.
The output should look something&nbsp;like the following.

Total time spent on web/index.html &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -- 1159 ms

Total time &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -- 1194 ms

Build finished!

  1. Run the app in Dartium:
  1. In the Files view, find the web&nbsp;directory and right-click its index.html&nbsp;file.
  2. Choose Run in Dartium. The app initially looks like this:

![][10]
Note: If you don’t see an Untitled document, try steps 3a-3c. Also check that the web&nbsp;directory contains an out&nbsp;directory. Try running web/out/index.html. If it still doesn’t work, restart Dart Editor.

  1. Play with the app:
  1. Click the %2B button to create an untitled document.
  2. Rename the untitled document by editing the title in the right-hand pane.
  3. Put some text in the document.
  4. Use the %2B button to create more documents.
  5. Use the Filter documents&nbsp;field to limit the documents shown to those that have a certain string in their title or contents.

![][10]

  1. Make the window narrower, and observe how the layout changes.
  1. Copy the app’s URL from the tab that’s running the app, then close that tab. Open another tab and navigate to the app’s URL. Notice how all the documents you created remain, as long as you’re using the same browser and profile.
  1. Now that you’ve see the app running in Dartium, try running it in your default browser and in another browser:
  1. Quit the Dartium app, either by closing its tab or by clicking the red square&nbsp;in the Debugger pane.

![][10]

  1. To run the app in your default browser (probably [Chrome][13]), right-click web/index.html and choose Run as JavaScript.
  2. To run it in another browser:
  1. From the Run&nbsp;menu, choose Manage Launches.
  2. Click the gray world button (to the left of the big red X) to create a new dart2js&nbsp;launch.
![][10]
  3. Enter information for the launch. For example:
▸ Change “New launch” to Writer in Firefox
▸ For the HTML file, enter /io-2013-codelab-finished/web/index.html

▸ Uncheck “Use system default browser”, and select the browser you need. For example, you might set the Browser field to /Applications/Firefox.app

![][10]

  1. Click Run. Your app should look the same as it did in Dartium and your default browser:
![][10]
From now on, you can use the little arrow next to the Run button ![][10]&nbsp;to choose the launch you want to use.

![][10]

### Debug the running app

The easiest way to debug a Dart app is with Dart Editor and Dartium. Try this:

  1. Open web/app.dart&nbsp;in Dart Editor. (Double-click it in the Files view.)
  2. In app.dart, find the createDocument() function (line 34).
Trick: Right-click in the Editor pane and choose Outline File. Then click createDocument.

![][10]&nbsp; &nbsp; ![][10]

  1. Set a breakpoint in the function by double-clicking the gray bar to the left of “void createDocument() ...”.

![][10]

  1. Stop&nbsp;the app if it’s already running. You can close the browser window the app is running in or click the red&nbsp;stop button in Dart Editor.

![][10]

  1. Run the app in Dartium. If you are using the launches menu, choose the launch with the mini blue&nbsp;Chromium icon.![][10]
  2. Get the app to hit the breakpoint.
  1. If you do not have any documents saved, the app hits the breakpoint on startup because it needs to create a new document to begin with.
  2. If the app starts up without hitting the breakpoint, create a new&nbsp;document by clicking the %2B button.
The app hits the breakpoint.
  1. In the Debugger pane, open top-level and then click the documents&nbsp;variable (not the document&nbsp;variable). It’s an array of Document objects.&nbsp;In the image below, the array contains three Document objects.

![][10]

  1. Use F5 or click the “Step Into” icon.

![][10]
Whoops, now you’re in library code!

  1. Use F7 or the&nbsp;“Step Return” icon&nbsp;to get back into app.dart code.

![][10]

  1. In the Debugger pane, look at the doc&nbsp;variable, which is an instance of Document.
  2. Use F6 or “Step Over” to get to the next line of code.

![][10]

  1. Look at the top-level documents variable again. The array contains one more item than it did before.![][10]
  2. Continue playing with the debugger.


Note: Don’t open Developer Tools in Dartium while you’re debugging. Due to a bug, this crashes the debugger.

* * *

Begin with skeletal app

![][10]&nbsp;

Add document word count to the footer

![][10]

Create side bar

![][10]

Add the ability to create, select, and delete&nbsp;documents

![][10]

Add search filter

![][10]

Add local storage (provides document persistence between invocations)

![][10]

Optimize layout for mobile devices

Index ![][10]&nbsp; Contents &nbsp; ![][10]

Now that you have Dart Editor set up and understand how the application works, let’s rebuild the app step-by-step, starting with a skeletal version. The code you downloaded from github contains a directory for each completed step of the code lab. So if necessary, you can begin each step with a correct version of the app. In the walkthrough portion of this step, you begin with the code in io-2013-codelab-step1.

## What you will learn

You can display the value of a Dart variable on your web page directly within the HTML code. When the value of the variable changes within the Dart program, the UI automatically updates.&nbsp;This capability, called one-way data binding, is implemented by the Web UI public package. The Writer application uses one-way data binding to display the current document’s word count in the footer of the page.

## Concepts overview

  1. Import public packages.
  2. Libraries.
  3. One-way data binding with Web UI.
  4. Getters.

### Import public packages

A package&nbsp;is a distributable bundle of code, often containing one or more libraries. The pub package manager helps you install and manage 3rd party packages. Dart’s public repository [pub.dartlang.org][14]&nbsp;hosts many useful packages, including the Web UI package, which you need later for this step. The code below is a package import, which includes the Web UI package in a Dart file.

import 'package:web_ui/web_ui.dart'; &nbsp;// import the Web UI package

Libraries

Dart code can be organized into libraries. A library is a namespace that can contain top-level fields, top-level functions, classes, and more. A library can import other libraries, and be imported into other libraries.

The Dart core libraries start with "dart:", such as dart:core, dart:collection, and dart:async. These libraries come from the Dart SDK. For example, to import the core async library, simply add this to the top of your library:

import 'dart:async'; &nbsp;// an important&nbsp;Dart core library

A library can be split across multiple files, also known as parts. We don't show an example of parts in the code lab.

One-way data binding with Web UI

The Web UI package implements one-way data binding, which provides dynamic and automatic synchronization between an HTML element and an observable Dart variable. The @observable&nbsp;meta-data annotation marks a variable to be observed. The Web UI compiler, dwc, generates extra code that notes changes to an observable variable and keeps the UI in sync with those changes. Here is an observable string:

@observable String aStringOfNote = 'Hello, World!';

The value of an observable variable can be embedded in an HTML page, by including the variable name between double curly braces, {{name_of_observable_var}},&nbsp;within normal HTML code, as shown:

 {{aStringOfNote}} 

Later, if the value of the variable changes in the Dart code, the web page automatically updates to reflect the new value of the variable. For example, after the following line of Dart code runs, the paragraph element changes from “Hello, World!”&nbsp;to “Goodbye, cruel world!”

aStringOfNote = 'Hello, Universe!';

### Getters

Dart allows you to create getters and setters that look like fields when used. This means your design can start with simple fields, and evolve over time to use getters and setters. No more defensive and preemptive encapsulation!

Here is an example. Consider a simple Car&nbsp;class with a single field called isRunning.

class Car {

&nbsp; bool isRunning;

}

main() {

&nbsp; var car = new Car();

&nbsp; print(car.isRunning);

}

Imagine that you later add an Engine&nbsp;field to Car. Engine&nbsp;knows if it's running, thereby making Car's isRunning&nbsp;field obsolete. Do you break existing users? No way! Use a getter method!

class Engine {

&nbsp; bool isRunning;

}

class Car {

&nbsp; Engine engine;

&nbsp; bool get isRunning =&gt; engine.isRunning;

}

main() {

&nbsp; var car = new Car();

&nbsp; print(car.isRunning);

}

Notice how the usage of the car.isRunning&nbsp;is the same with both the getter and the field.&nbsp;The users of the Car&nbsp;class did not have to update their code when you changed the implementation of Car.

## Walkthrough

### Open the code for step 1

Close the io-2013-codelab-finished&nbsp;directory: right-click on the folder in the Files view of Dart Editor and select Close Folder from the menu.

![][10]

Open io-2013-codelab-step1&nbsp;with File &gt; Open Existing Folder&nbsp;as you did with the finished directory in the previous step.

IMPORTANT: Make sure you open io-2013-codelab-step1&nbsp;and not&nbsp;its parent directory. Dart Editor analyzes all of the code in the open folder. For this code lab, it is more efficient to open just the directory for your active step rather than the top-level directory containing all of the steps.

![][10]

Dart Editor installs&nbsp;the app’s dependencies and builds it.

### Run the app

Right click web/index.html&nbsp;and choose Run in Dartium.... The app should initially look like this:

![][10]

### Import the Web UI package

The lib/document.dart&nbsp;file contains the code that implements a plain text document. The Document keeps track of its creation time, has a title, and text content. In this step, you add a getter to the Document class that calculates the number of words in the document.

Double click lib/document.dart&nbsp;to open the file.

Near the top of the file, notice this comment.

…

/// STEP 1: Import the Web UI package

…

Comments of this style appear throughout the code, clearly marking what to do for each numbered step. The lib/document.dart&nbsp;file has three comments for step one.

Beneath&nbsp;the comment, type in the import directive for including the Web UI package. In the gray code boxes throughout this code lab, the code you need to add is bold. Code you need to delete is&nbsp;struck through.

// lib/document.dart

…

/// STEP 1: Import the Web UI package.

import 'package:web_ui/web_ui.dart';

…

### Mark the Document class with @observable

Find the next STEP 1&nbsp;comment; it appears a few lines below the import directive you just entered.

…

/// STEP 1: Mark the class with @observable.

…

Mark&nbsp;the Document class with the @observable&nbsp;meta-data annotation. This makes all fields of an instance of the Document class observable.

// lib/document.dart

…

/// STEP 1: Mark the class with @observable.

@observable

class Document {

…

### Calculate the word count for the current document

To find the final task for step 1 in the lib/document.dart&nbsp;file,&nbsp;search for “STEP 1” and locate the comment for the wordCount method in the code.

…

&nbsp; /// STEP 1: Add wordCount&nbsp;method.

…

To search in Dart Editor, go to the Edit&nbsp;menu and choose Find/Replace.... Then type “STEP 1” into the text field and click Find.

Under the comment, add&nbsp;the code for a new getter called wordCount. The getter uses the RegExp class, which is provided in the dart:core library, to calculate how many words are in the document. The return value of this getter is embedded in the HTML in the next step.

// lib/document.dart

…

&nbsp; /// STEP 1: Add wordCount method.

&nbsp; /**

&nbsp; &nbsp;* &nbsp;Number of words in the document.

&nbsp; &nbsp;*

&nbsp; &nbsp;* &nbsp;A "word" is a string of characters separated by a space or a newline.

&nbsp; &nbsp;*/

&nbsp; String get wordCount {

&nbsp; &nbsp; int count = new RegExp(r"(\w|\')%2B").allMatches(_content).length;

&nbsp; &nbsp; if (count &gt; 1) {

&nbsp; &nbsp; &nbsp; return '$count words';

&nbsp; &nbsp; } else if (count == 1) {

&nbsp; &nbsp; &nbsp; return '$count word';

&nbsp; &nbsp; }

&nbsp; &nbsp; return 'No words - Yo, Yo write something...';

&nbsp; }

…

###

Save the file using File &gt; Save. You have completed all of the step 1 tasks in the lib/document.dart file.

### Embed the word count in the footer of the web page.

The HTML page that hosts the Writer app is web/index.html. Let’s add the word count to the footer of the page.

Double click&nbsp;web/index.html to open it.

Search for “STEP 1” and locate the code for the footer.

Add the code to display the word count in the footer of the document, using the double curly bracket syntax.

// web/index.html

…

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {{activeDocument.wordCount}}

&nbsp; &nbsp; &nbsp; &nbsp; 

…

Save your changes with File &gt; Save. You have completed all of the step 1 tasks.

### Run the revised version of the app.

Run the app again, and type in the document. As you type, the word count updates at the bottom of the page:

![][10]

Congratulations! You’ve completed the first step.

* * *

The family of Web Component specifications, such as custom elements and HTML imports, give the web developer real encapsulation of the structure, style, and behaviors of elements in the DOM. With help from the Web UI package, you can make your own tags!

In this step, using the  tag,&nbsp;you create a custom element to implement the behavior and view of a sidebar that lists the documents. Then, you use the new custom element to create a sidebar in the Writer app.

## What you will learn

  1. Define custom elements.
  2. Import HTML into HTML.
  3. Use custom elements.
  4. One-line functions.

## Concepts overview

### Define custom elements

A custom element extends the lexicon of HTML.&nbsp;A custom element definition encapsulates the structure (the HTML), styles (CSS), and behavior (Dart or JavaScript code) of a new kind of element. For example, you can extend &nbsp;to create a&nbsp;&nbsp;tag, with new custom behaviors and appearance.

By convention, custom element names begin with x-. For example . Custom element names must&nbsp;have a hyphen (-) in their name, such as . Following the x-&nbsp;naming convention ensures that your custom element &nbsp;names always have a hyphen.

The new &nbsp;tag allows you to declare a new element (using HTML to declare HTML, I like it!) Here is an example:



&nbsp; 

&nbsp; &nbsp; {{name}}

&nbsp; &nbsp; 

&nbsp; 

&nbsp;&nbsp;

&nbsp; &nbsp; import 'package:web_ui/web_ui.dart';

&nbsp; &nbsp; class CommentComponent extends WebComponent {

&nbsp; &nbsp; &nbsp; String name;

&nbsp; &nbsp; &nbsp; String comment;

&nbsp; &nbsp; }

&nbsp; [[a]][15]



The element tag defines a new kind of HTML element. To create an instance of a custom element use the element name as you would any other HTML tag. To create an instance of the element defined above, write . A custom element instance must&nbsp;have a closing tag .

Within the template definition above, notice the  tag. When an  element is instantiated, you can use other HTML elements between  and , a paragraph, a span, a list, for example. Those elements replace the  tag for that instantiation. Using attributes, you can filter for specific elements to replace the  tag.

### Import HTML into HTML

To use a custom element, you often import&nbsp;the HTML that contains the &nbsp;tag. Luckily, HTML has a method for including resources: the &nbsp;tag. Here is an example:



The &nbsp;tag must appear in the &nbsp;of the document.

### Use custom elements

Once you have imported the custom element, you can use it in your document. Here is an example:



&nbsp; I totally agree!

&nbsp; I totally disagree!



### One-line functions

Dart makes it easy and terse to write one-line functions with the "fat arrow" syntax. Here is an example:

int nextNumber() =&gt; i%2B%2B;

The above code is syntactic sugar for:

int nextNumber() {

&nbsp; return i%2B%2B;

}

## Walkthrough

### The custom element's file

First, create a new file for the custom element inside of the web/&nbsp;directory.

  1. Right-click on the web&nbsp;directory and select "New File".
  2. Name this file "https://www.dartlang.org/document_item.html". Dart Editor provides some boilerplate code. Delete it.
  3. Open __for_later/document_item.html, copy its contents, and paste it into web/document_item.html.

### Declare the custom element

Ensure you are working in web/document_item.html, and add the following code:

// web/document_item.html



&nbsp; 

&nbsp; &nbsp; 

&nbsp; &nbsp; 

&nbsp; &nbsp; 

&nbsp; &nbsp; 

&nbsp; &nbsp; 

&nbsp; 



…

A few notes about the code above:

  1. The name of the element is x-document-item.
  2. The custom element extends . That is, x-document-item&nbsp;is a special kind of div.
  3. Some behavior of the x-document-item&nbsp;is implemented by a Dart class named DocumentItem. You will create and include this class below.
  4. The apply-author-styles&nbsp;attribute indicates that styles from the larger HTML document apply to the contents of the custom component.

Notice the &nbsp;tag inside of . A custom element can define its own structure with the &nbsp;tag. Fill in this template now.

### The template

Add the code for the template as shown. You need to also add the comments&nbsp;for STEP 3 just as we have them in the code. You need the comments to orient yourself later when you implement Step 3.

// web/document_item.html

…

&nbsp; &nbsp; 

&nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {{title}}

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; {{modified}}

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; 

…

You can use one-way data binding in a template. Each time a custom element is instantiated, an instance of the Dart class is created and associated with the custom element. Data bindings in the template are bound to fields in that Dart instance. For example, {{title}}&nbsp;binds to a field from the instance of DocumentItem that is created when an element of this type is created. It's a good idea to move all logic into the Dart class, and just use fields and getters for the HTML.

Speaking of the class, let's add that now!

The script

Use a &nbsp;tag to declare the Dart class that goes with the custom element. The Dart class contains any state and behavior applicable to the view.

Ensure you are still editing web/document_item.html, and add the following code inside the  and  tags:

// web/document_item.html

…

&nbsp; &nbsp; 

&nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; import 'package:web_ui/web_ui.dart';

&nbsp; &nbsp; &nbsp; import 'package:writer/document.dart';

&nbsp; &nbsp; &nbsp; import 'app.dart' as app;

&nbsp; &nbsp; &nbsp; /**

&nbsp; &nbsp; &nbsp; &nbsp;* This Dart class defines the behavior and

&nbsp; &nbsp; &nbsp; &nbsp;* state of the custom element.

&nbsp; &nbsp; &nbsp; &nbsp;*/

&nbsp; &nbsp; &nbsp; class DocumentItem extends WebComponent {

&nbsp; &nbsp; &nbsp; &nbsp; Document doc;

&nbsp; &nbsp; &nbsp; &nbsp;

&nbsp; &nbsp; &nbsp; &nbsp; String get title =&gt; doc.title.isEmpty ? 'Untitled' : doc.title;

&nbsp; &nbsp; &nbsp; &nbsp;

&nbsp; &nbsp; &nbsp; &nbsp; String get modified =&gt; dateFormat.format(doc.modified);

&nbsp; &nbsp; &nbsp; &nbsp;

&nbsp; &nbsp; &nbsp; &nbsp; String get isActiveClass =&gt; doc == app.activeDocument ? 'active' :&nbsp;'';

&nbsp; &nbsp; &nbsp; }

&nbsp; &nbsp; 

…

Note: Dart Editor doesn't yet fully support Dart code embedded inside of &nbsp;tags. For example, you can't use code completion inside of a &nbsp;tag yet. We anticipate that the editor will have this functionality in time for 1.0.

A few notes about the code above:

  1. The DocumentItem&nbsp;class acts as a View Model, encapsulating any state used by the view, and linking model classes like Document to the view. We use getters for title, modified, and isActiveClass&nbsp;because&nbsp;calling a getter is shorter than calling a method.
  2. A DocumentItem&nbsp;uses a Document&nbsp;object, called doc, for its data model. The doc&nbsp;field gets initialized when the custom element gets instantiated. You’ll see this later when you add the sidebar in the HTML code.
  3. The Document&nbsp;class defines a top-level object, called dateFormat, used to format the modified date. (Look at the bottom of lib/document.dart&nbsp;for the code that creates dateFormat.) The DateFormat&nbsp;class is provided by the intl&nbsp;package.

&nbsp;Save your changes to web/document_item.html.

### Import the custom element into the main HTML

To create instances of , the main application's HTML needs to import the code that defines the custom  tag. Luckily, HTML already has a mechanism to link to other resources: the  tag!

Open web/index.html&nbsp;and add the following code:

// web/index.html

…

&nbsp; &nbsp; 

&nbsp; &nbsp; 

&nbsp; &nbsp; 

&nbsp; 

…

### Add the sidebar

With the custom element implemented, and imported, time to use !

Make sure you are still editing web/index.html. And&nbsp;yes, you need to write all those comments&nbsp;just as we have them in the code. You will add more functionality in the following steps, so you need the comments to ensure you can orient yourself later.

Add the following code:

// web/index.html

…

&nbsp; 

&nbsp; &nbsp; 

&nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; View Source

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; 

&nbsp; &nbsp; 

&nbsp; &nbsp; 

…

Take a look at . The active document is bound into the x-document-item&nbsp;tag via the doc&nbsp;attribute. The activeDocument&nbsp;object is a top-level variable from app.dart.

Save your changes in web/index.html&nbsp;and in web/document_item.html, if you haven’t already done so.

Depending on the order in which you saved the files, you might see warnings or errors in Dart Editor complaining about unknown custom elements. Try running Tools &gt; Reanalyze Sources.

Run the app. On the left side of the app is a sidebar that contains a document.

![][10]

* * *

In this step, you’ll implement support for creating, deleting, and selecting documents. Your code will use an observable list to keep track of which documents exist.

## What you will learn

  1. Using Web UI’s&nbsp;toObservable()&nbsp;function to make a list observable.
  2. Using &nbsp;to create an element for each item in a list.

## Concepts overview

### The toObservable() function

Use the toObservable()&nbsp;function from the Web UI library to make a List or a Map observable. In the Writer app, making the list of documents observable enables Web UI to update your app’s UI whenever a document is created or deleted.

### Template iterate

Template loops allow iteration over Iterable Dart objects, such as Collections. To create a loop that operates on each item in an Iterable object, use the iterate attribute in a  tag. The code below displays the alphabet by looping over a list of strings, of which each string contains a single character.

// in Dart code

List alphabet = toObservable(‘abcdefghijklmnopqrstuvwxyz’.split(''));

// in HTML code

 {{letter}} 

## Walkthrough

You’ll be editing three files this time: web/app.dart, web/index.html, and web/document_item.html.

(Optional: Remember that if necessary, you can start with clean files for each step. If you want to, close the directory for step 2 and open the &nbsp;io-2013-codelab-step3&nbsp;directory now.)

### Add an observable list of documents

Open web/app.dart and add the line of code shown below that creates an empty, observable list of documents.

// web/app.dart

// STEP 3: Add an observed list of documents.

final List documents = toObservable([]);

### Add functions for creating, deleting, and selecting documents

First, let’s implement creating documents.

Continue editing web/app.dart.

Add the createDocument()&nbsp;function to web/app.dart where indicated by the comments. The new function calls another function, called selectDocument(), which&nbsp;is not defined yet and about which Dart Editor issues warnings. You’ll add that function just below, so ignore the warnings for now.

// web/app.dart

// STEP 3: Create a new document.

void createDocument() {

&nbsp; // Create a new document.

&nbsp; var doc = new Document('Untitled', '');

&nbsp; documents.add(doc);

&nbsp; selectDocument(doc);

}

Next, let’s implement deleting a document.

// web/app.dart

// STEP 3: Add code to delete a document

void deleteDocument(Document doc) {

&nbsp; documents.remove(doc);

&nbsp; // STEP 5: Also delete from local storage.

}

Now, let’s implement setting the currently selected, or active,&nbsp;document.

// web/app.dart

// STEP 3: Add code to select a document.

void selectDocument(Document doc, {bool markActive: false}) {

&nbsp; if (documents.isEmpty) {

&nbsp; &nbsp; activeDocument = null;

&nbsp; } else if (doc != null &amp;&amp; documents.contains(doc) &amp;&amp; doc != activeDocument) {

&nbsp; &nbsp; // Change active document.

&nbsp; &nbsp; activeDocument = doc;

&nbsp; } else if (activeDocument != null &amp;&amp; documents.contains(activeDocument)) {

&nbsp; &nbsp; // Stay on the active document and display the editing window.

&nbsp; &nbsp; contentActive = markActive &amp;&amp; doc == activeDocument;

&nbsp; } else&nbsp;{

&nbsp; &nbsp; // Fall back to the last document.

&nbsp; &nbsp; activeDocument = documents.last;

&nbsp; }

}

A quick note about Dart syntax. The second argument, markActive, is optional as indicated by the curly brackets. If the caller does not provide the argument, the value is false.

Save web/app.dart. The Dart Editor warnings should go away.

### Add document initialization to main()

We need a little more Dart code&nbsp;to create&nbsp;and select the first document.

Find the main()&nbsp;function and add two lines of code:

// web/app.dart

void main() {

&nbsp; // STEP 5: Initialize with all documents from local storage.

&nbsp; // STEP 3: Create a new document if there are none.

&nbsp; if (documents.isEmpty) createDocument();

&nbsp; // STEP 3: Select the first document in the list of documents.

&nbsp; selectDocument(documents.first);

}

Save web/app.dart.

Now that we have functions that let us create, delete, and select documents, we can create elements that provide a UI to use that functionality.

### Create new elements in web/index.html

Open web/index.html.

Create a %2B button, and set our new createDocument()&nbsp;function as the button’s mouse click callback function.

// web/index.html

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; %2B

...

Delete the old code that created a single , and replace it with code that creates one &nbsp;for each item in the documents list.

// web/index.html

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 





Save web/index.html.

### Add code to select a document and to delete a document

Open web/document_item.html.

Now that we have selectDocument()&nbsp;and deleteDocument() functions, our custom component can use them. The following code uses the new selection function and adds an “X” button to &nbsp;that deletes the item.

// web/document_item.html

&nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

…

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ×

Save web/document_item.html.

### Try out the new functionality

Try it out! Run the app.

  1. Click the %2B button to create a new document.
  2. Type in some text.
  3. Change the document name.
  4. Click on a document in the sidebar to select a document. A red&nbsp;vertical line appears on the left and its contents appears in the text area.
  5. Hover the mouse over a document in the sidebar and an ‘X’ appears. Click the ‘X’ to delete the document.

![][10]

In this step, you will learn how to connect an HTML input field to a Dart object, and then conditionally display DOM elements based on the contents from the input field.

## What you will learn

  1. Instantiate DOM elements based on conditionals.
  2. Bind an input field to a Dart object (aka two-way data binding).

## Concepts overview

### Template conditionals

The contents of a &nbsp;tag can be added to, or removed from, the DOM based on a conditional. If a conditional is true, the contents of the &nbsp;are added to the DOM (in other words, the contents are displayed on the page). If the conditional is false, the contents are removed from the page.

Here is a simple example of a conditional template:



&nbsp; Thanks for clicking agree!



Every time the conditional changes (from false to true, or from true to false), the contents are added or removed.

### Field binding

An HTML input field, such as a text input, can be bound to a Dart object. Whenever the input field's value changes, the Dart object's value changes. Whenever the Dart object's value changes, the input field changes. This is known as two-way binding.

Here is a simple User class:

class User {

&nbsp; String username;

}

Here is a simple example of an input field binding:



The value property of the input field is bound to the username field of the user&nbsp;object—an instance of the User&nbsp;class.

## Walkthrough

### Create a new library

To help you get started, we've given you the shell for the new search library.

  1. Right-click on the lib&nbsp;directory and select "New File".
  2. Name this file "search.dart".
  3. Open __for_later/search.dart, copy its contents, and paste into lib/search.dart.

### Observe the search filter

You need to add a top-level field that will contain the search filter.

Add the following code to lib/search.dart.

// lib/search.dart

import 'package:writer/document.dart';

// STEP 4: Add an observed string to filter documents.

@observable

String searchFilter = '';

…

### Filter documents

Now that you have an observable searchFilter&nbsp;string, you can filter documents.

Inside of lib/search.dart, add the following code:

// lib/search.dart

// STEP 4: Add function to check if a document matches the search filter.

bool matchesSearchFilter(Document doc) {

&nbsp; if (searchFilter.isEmpty) {

&nbsp; &nbsp; return true;

&nbsp; }

&nbsp; return doc.title.toLowerCase().contains(searchFilter.toLowerCase()) ||

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;doc.content.toLowerCase().contains(searchFilter.toLowerCase());

}

Notice that searchFilter.isEmpty&nbsp;is a getter—it doesn’t have trailing parentheses.

Save your changes.

### Import search into app

With the search library complete, you need to import it into the main application.

Open web/app.dart&nbsp;and add the following code:

// web/app.dart

import 'package:writer/document.dart';

// STEP 4: Import search.dart.

import 'package:writer/search.dart';

// STEP 5: Import storage.dart.

…

To keep the path to search.dart&nbsp;relative to app.dart, we use the package:&nbsp;import method to import the search.dart library from the writer package. The pubspec.yaml&nbsp;file declares the writer package. The pub&nbsp;command creates all the necessary symlinks to allow you to not have to create import paths like '../../lib/search.dart'.

Save your changes.

### Input field for filter

Let's turn our attention to the HTML for the search box. You added the observable searchFilter&nbsp;field in search.dart, now let's bind that into an HTML input field.

Open web/index.html&nbsp;and add the following code:

// web/index.html

…

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

…

The variable name searchFilter&nbsp;must match the string inside of the bind-value attribute.

### Dynamically hide or show docs based on the filter

When the search filter changes, we want to dynamically update the documents displayed on the page.

Continue editing web/index.html&nbsp;and add the following code:

// web/index.html

…

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

…

Notice that you are placing the conditional template within the template loop.

The Web UI library knows that matchesSearchFilter&nbsp;relies on searchFilter, so whenever searchFilter&nbsp;changes, it re-runs this template. Only those documents that pass matchesSearchFilter&nbsp;will be displayed with the custom &nbsp;tag.

## Run the code

Time to run the code! After completing this step, you should be able to search for documents by title or contents. The search results are live. Note: there is a known bug, if the currently opened document does not match the filter, it won't disappear.

![][10]

If you do not see the input field for the filter, run Tools &gt; Reanalyze Sources.

* * *

In this step, you learn how to save the user’s documents in local storage, and later to remove the documents. In addition to saving the documents in local storage, the app also maintains a list of document IDs in local storage. The main()&nbsp;function uses this list to initialize the app and load the first document. The app saves the documents as JSON-formatted strings. You also learn how to use the JSON library to serialize and revive the document contents.

## What you will learn

  1. Save documents in local storage.
  2. Remove documents from local storage.
  3. Maintain a list of document IDs in local storage.
  4. Use JSON to read and write the contents of the documents.

## Concepts overview

### Local storage

Local storage can be use&nbsp;to keep persistent data between invocations of your app. The data may only be accessed by the origin that created it. The Window object that hosts the web app has a localStorage object that your code can use to store and retrieve data. The local storage object is implemented as a Map.

Save data in local storage by putting a key/value pair in the localStorage object.

window.localStorage['key1'] = 'val1';
window.localStorage['key2'] = 'val2';
window.localStorage['key3'] = 'val3';

Delete data from local storage by removing a key/value pair from the localStorage&nbsp;object.

window.localStorage.remove(['key1']);

You can use [Map][16]&nbsp;APIs such as containsValue(), clear(), and length:

assert(window.localStorage.containsValue('does not exist') == false);
window.localStorage.clear();
assert(window.localStorage.length == 0);

### JSON

JSON is a text-based, human-friendly format for representing data of different types. The dart:json library has two useful functions for converting data to/from JSON: stringify() and parse(). Here’s a small example that converts a list of objects to JSON and back again.

import 'dart:json'&nbsp;as JSON;

var list = [1, "two", 3.0]; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // a list of objects

String listAsString = JSON.stringify(list); // convert list of objects to JSON string

print(listAsString); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;// [1,"two",3.0]

var revivedList = JSON.parse(listAsString); // convert JSON string to list object

print(revivedList); &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; // [1, two, 3.0]

## Walkthrough

### Create a library to handle local storage.

This step requires you to edit three files: lib/storage.dart, web/index.html, and web/app.dart. Let’s begin with storage.dart.

### Save a document to local storage. Add the document ID to the list.

To help you get started, we've given you the shell for the new local storage library.

  1. Right-click on the lib&nbsp;directory and select "New File".
  2. Name this file "storage.dart".
  3. Open __for_later/storage.dart, copy its contents, and paste it into lib/storage.dart.

Modify the saveDocument()&nbsp;function. Add the code, shown in bold below,

  1. to convert the document to a JSON-formatted string and save it in the window’s local storage,
  2. to add the document ID to the internal list of IDs, if necessary,
  3. and finally, to save the list of document IDs, in JSON format, to the local storage.

// storage.dart

…

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

/// Save the document to local storage.

void saveDocument(Document doc) {

&nbsp; // STEP 5: Save the serialized version of the document to local storage.

&nbsp; window.localStorage[doc.id] = doc.toJson();

&nbsp; // STEP 5: Add the new document ID to our list of document IDs.

&nbsp; if (!_storedIds.contains(doc.id)) {

&nbsp; &nbsp; _storedIds.add(doc.id);

&nbsp; }

&nbsp; // STEP 5: Update local storage map of IDs.

&nbsp; window.localStorage[DOCUMENT_ID_KEY] = JSON.stringify(_storedIds);

}

…

### Remove the document from local storage. Remove the document ID from the list.

Continue editing lib/storage.dart.

Modify the removeDocument()&nbsp;function. Add the code

  1. to remove the document ID from the internal list,
  2. to remove the document from local storage,
  3. and to save the list of document IDs in local storage.

// storage.dart

…

/// Removes the document from local storage.

void removeDocument(Document doc) {

&nbsp; // STEP 5: Remove the document from local storage.

&nbsp; _storedIds.remove(doc.id);

&nbsp; window.localStorage.remove(doc.id);

&nbsp; window.localStorage[DOCUMENT_ID_KEY] = JSON.stringify(_storedIds);

}

…

### Load the list of IDs from local storage. Then load the documents.

Continue editing lib/storage.dart.

Modify the fetchDocuments()&nbsp;function. Add the code

  1. to get the list of document IDs
  2. to load all of the documents from local storage using the private method _fetchDocument()
  3. and to display one of the documents.

// storage.dart

…

// Returns a collection of all documents from local storage.

Iterable fetchDocuments() {

&nbsp; // STEP 5: Get all document IDs from local storage.

&nbsp; if (window.localStorage[DOCUMENT_ID_KEY] != null) {

&nbsp; &nbsp; _storedIds = JSON.parse(window.localStorage[DOCUMENT_ID_KEY]);

&nbsp; }

&nbsp; // STEP 5: Get all documents from local storage.

&nbsp; return _storedIds.map(_fetchDocument);

}

/// Gets a document from local storage.

Document _fetchDocument(String id) {

&nbsp; // STEP 5: Return one deserialized document from local storage.

&nbsp; return new Document.fromJson(window.localStorage[id]);

}

…

Save your changes to lib/storage.dart.

### Add event handlers to HTML elements to save the document.

Now that you’ve written the library code that saves and retrieves documents, you can use the new functions in the app. The app saves the documents based on user-generated events in the UI. So let’s add event handlers to the HTML elements for saving the documents.

Open the web/index.html file.

Find the code that creates the text element for the document titles.

Add a key-up event handler to the text field. Each time the user types a character in the document title, the event handler saves the document.

// index.html

…

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

…

Now, find the textarea used to enter the contents of a document.

Add a key-up event handler to the textarea. Each time the user types a character into the document, the event handler saves the document.

// index.html

…

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

&nbsp; &nbsp; &nbsp; &nbsp; 

…

Save your changes to web/index.html .

### Import storage.dart

For removing documents and initializing the app, you need to edit the Dart code.

Open web/app.dart.

Add an import directive near the top of the file to include the storage.dart&nbsp;library you just wrote.

// app.dart

@observable

library writer;

import 'dart:html' hide Document;

import 'package:web_ui/web_ui.dart';

import 'package:writer/document.dart';

// STEP 4: Import search.dart.

import 'package:writer/search.dart';

// STEP 5: Import storage.dart.

import 'package:writer/storage.dart';

// STEP 3: Add an observed list of documents.

final List documents = toObservable([]);

…

### Initialize the app with the locally stored documents.

Continue editing web/app.dart.

Modify the main()&nbsp;function in app.dart. Use the fetchDocuments()&nbsp;function from the storage.dart library to initialize the app with the saved documents.

// app.dart

…

/// Starts the application.

void main() {

&nbsp; // STEP 5: Initialize with all documents from local storage.

&nbsp; documents.addAll(fetchDocuments());

&nbsp; // STEP 3: Create a new document if there are none.

&nbsp; if (documents.isEmpty) createDocument();

&nbsp; // STEP 3: Select the first document in the list of documents.

&nbsp; selectDocument(documents.first);

}

…

### Remove the document from local storage.

Continue editing web/app.dart.

Find the deleteDocument()&nbsp;function. Add code to remove the document from local storage when the user deletes the document from the app.

// app.dart

…

// STEP 3: Add code to delete a document

void deleteDocument(Document doc) {

&nbsp; documents.remove(doc);

&nbsp; // STEP 5: Also delete from local storage.

&nbsp; removeDocument(doc);

}

…

###

Save your changes to web/app.dart.

### Run the revised version of the app.

You’ve completed the code edits for this step. Make sure all of your changes are saved.

Run the app again. Create and name several documents. Kill the app and start it up again. The documents you saved persist between invocations of the app.

![][10]

* * *

Your app already works on mobile, since many gestures emulate mouse events, such as clicks. But we can do better. In this step, you’ll make your app feel more native on mobile by adding some code to control layout on mobile devices and by adding some specialized CSS styles.

## What you will learn

  1. Using a meta tag to control layout on mobile devices
  2. CSS styles for mobile devices

## Concepts overview

### Control&nbsp;layout on mobile devices

The  tag, with the viewport attribute, helps to optimize your site for mobile devices. Here’s what the Mozilla developer website has to say about mobile-optimization:

A typical mobile-optimized site contains something like the following:



The width property controls the size of the viewport. It can be set to a specific number of pixels, like width=600, or to the special value device-width, which is the width of the screen in CSS pixels at a scale of 100%. (The content attribute also supports corresponding height and device-height values, which may be useful for pages with elements that change size or position based on the viewport height.)

The initial-scale property controls the zoom level when the page is first loaded. The maximum-scale, minimum-scale, and user-scalable properties control how users are allowed to zoom the page in or out.

### CSS styles for mobile devices

The @media rule allows different style rules for different media in the same style sheet. Shown below are two rules, one which applies when the app runs in an environment, such as a small mobile device, which has a maximum width of 500 pixels. The other applies when the app runs in an environment that allows a larger width.

@media all and (max-width: 500px) {

&nbsp; …

}

@media all and (min-width: 501px) {

&nbsp; …

} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;

## Walkthrough

### Run the app in a small browser window

Before you start changing the code, run the app in a tiny window so you can emulate the app’s behavior on a mobile phone. You can contrast this behavior with the revised version of the app at the end of this step.

Run the app. Shrink the window down as small as you can.

The UI is not too cluttered and has a double scroll bar. We can do better!

![][10]

### Add meta viewport tag to HTML code

Open web/index.html.

At the top of the file, within the &nbsp;section add this meta tag:

// web/index.html

…

&nbsp; &nbsp; 

&nbsp; &nbsp; 

…

This tag fixes the size of the app to the exact size of the device.

Save your changes.

### Add CSS styles for mobile

Open web/css.css.

At the bottom of the CSS file, add all of the code in bold (79 lines):

// web/css.css

…

/* STEP 6: Add styles for mobile devices */

/* Mobile styles. */

@media all and (max-width: 500px) {

&nbsp; body {

&nbsp; &nbsp; overflow: hidden;

&nbsp; }

&nbsp; #sidebar .touched .item {

&nbsp; &nbsp; background-color:rgba(250, 150, 150, .8);

&nbsp; &nbsp; -webkit-transition: all .7s cubic-bezier(.65,-0.50,.76,1.32);

&nbsp; &nbsp; -moz-transition: all .7s cubic-bezier(.65,-0.50,.76,1.32);

&nbsp; &nbsp; transition: all .7s cubic-bezier(.65,-0.50,.76,1.32);

&nbsp; }

&nbsp; #sidebar {

&nbsp; &nbsp; top: 0;

&nbsp; &nbsp; left: 0;

&nbsp; &nbsp; right: 0;

&nbsp; &nbsp; bottom: 0;

&nbsp; &nbsp; width: 100%;

&nbsp; &nbsp; -webkit-transition: -webkit-transform 0.3s ease-in-out;

&nbsp; &nbsp; -moz-transition: -moz-transform 0.3s ease-in-out;

&nbsp; &nbsp; transition: transform 0.3s ease-in-out;

&nbsp; &nbsp; -webkit-transform: translate3d(-20%, 0, 0);

&nbsp; &nbsp; -moz-transform: translate3d(-20%, 0, 0);

&nbsp; &nbsp; transform: translate3d(-20%, 0, 0);

&nbsp; }

&nbsp; #sidebar.active {

&nbsp; &nbsp; -webkit-transform: translate3d(0, 0, 0);

&nbsp; &nbsp; -moz-transform: translate3d(0, 0, 0);

&nbsp; &nbsp; transform: translate3d(0, 0, 0);

&nbsp; }

&nbsp; #sidebar .item.active .delete {

&nbsp; &nbsp; opacity: .7;

&nbsp; }

&nbsp; #main {

&nbsp; &nbsp; top: 0;

&nbsp; &nbsp; left: 0;

&nbsp; &nbsp; right: 0;

&nbsp; &nbsp; bottom: 0;

&nbsp; &nbsp; -webkit-transition: -webkit-transform 0.3s ease-in-out;

&nbsp; &nbsp; -moz-transition: -moz-transform 0.3s ease-in-out;

&nbsp; &nbsp; transition: transform 0.3s ease-in-out;

&nbsp; &nbsp; -webkit-transform: translate3d(100%, 0, 0);

&nbsp; &nbsp; -moz-transform: translate3d(100%, 0, 0);

&nbsp; &nbsp; transform: translate3d(100%, 0, 0);

&nbsp; }

&nbsp; #main.active {

&nbsp; &nbsp; -webkit-transform: translate3d(0, 0, 0);

&nbsp; &nbsp; -moz-transform: translate3d(0, 0, 0);

&nbsp; &nbsp; transform: translate3d(0, 0, 0);

&nbsp; }

&nbsp; #main .title button {

&nbsp; &nbsp; display: block;

&nbsp; }

&nbsp; #main .title .input-wrap {

&nbsp; &nbsp; margin-left: 40px;

&nbsp; }

&nbsp; /* Let's not go there. It is a silly place. */

&nbsp; #main:only-of-type {

&nbsp; &nbsp; -moz-transition: none;

&nbsp; &nbsp; -webkit-transition: none;

&nbsp; &nbsp; transition: none;

&nbsp; }

&nbsp; #main:only-of-type button {

&nbsp; &nbsp; display: none;

&nbsp; }

&nbsp; #main:only-of-type .title .input-wrap {

&nbsp; &nbsp; margin-left: 0;

&nbsp; }

}

This code separates the app into two panels: one for the index of documents and one for the content of the current document. Choosing a document from the index slides the content panel into view. In the contents panel, a new button slides from the documents contents back to the index.

Save your changes.

### Run the revised version of the app

Run the new version of the app in your browser and shrink the window down as small as possible once again.

On the document index panel, you see a list of the documents you’ve created.

Click a document to view its contents.

![][10]

On the document contents panel, a small button with an arrow ‘  



Original io-2013-dart-codelab
=============================

A modern web focused codelab built for Google I/O 2013.
For detailed instructions, see
[Dart code lab for Google I/O 2013](http://www.dartlang.org/codelabs/web-ui-writer/)

Build Status
------------

This badge passes when the `finished` directory is running successfully.

[![Build Status](https://drone.io/github.com/dart-lang/io-2013-dart-codelab/status.png)](https://drone.io/github.com/dart-lang/io-2013-dart-codelab/latest)

Acknowledgements
----------------

This codelab is based largely on timothyarmstrong/web-ui-writer

Many thanks to Tim!

License
-------

    Copyright 2013, the Dart project authors. All rights reserved.
    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are
    met:
        * Redistributions of source code must retain the above copyright
          notice, this list of conditions and the following disclaimer.
        * Redistributions in binary form must reproduce the above
          copyright notice, this list of conditions and the following
          disclaimer in the documentation and/or other materials provided
          with the distribution.
        * Neither the name of Google Inc. nor the names of its
          contributors may be used to endorse or promote products derived
          from this software without specific prior written permission.
    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
    A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
    OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
    SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
    LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
    DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
    THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
    OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
