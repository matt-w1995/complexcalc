# Greetings!
This exercise is designed to test your ability to work with functions as first-class citizens in the
Swift programming language.

Your task is simple: Make the code compile, and make all the unit tests pass. You may not change the
tests that already exist; you may, however, add a few tests, as well.

## To get started...
... you must first obtain a copy of the source. Do that by cloning this repository:

    git clone https://bitbucket.org/TedNeward/uw-ios-complexcalc complexcalc

This will create a local copy of the project. However, in order to *store* your changes to your own
GitHub account, you need to create a new repository on GitHub (call it `complexcalc`), and then
change the project's settings to point to that new repository as the remote origin.

    git remote set-url origin https://github.com/[your-ID]/complexcalc.git

This will work regardless of whether you got the syntax of the URL correct or not, so do a quick
push to make sure it all worked correctly:

    git push

Git will ask you for your username and password, then (if everything was done correctly), it will
upload the code to the new repository, and this is your new "home" for this project going forward.
Verify the files are there by viewing your GitHub project through the browser.

***NOTE:*** Your grade for this assignment (and all future assignments) will be based on what we
see in the GitHub repository, and nothing else. If it isn't in GitHub, it doesn't exist.

Now, you can begin to work on the homework code.

## Your tasks
You are creating a calculator class that exposes a number of functions that perform the canonical
operations of a calculator (add, subtract, multiply, etc) as well as a few other operations. In
fact, part of the goal is to make the calculator a little more flexible than the creators intended,
and able to provide calculation using custom-built operations that the Calculator doesn't know
about. In order to do that, the Calculator will be using "higher-order functions" to carry out
its operations.

Additionally, certain mathematical operations (add, multiply) support more than
two parameters, which we should also support. These will take arrays of Integers as the single
parameter.

On top of that, we should be able to perform some operations on some different data types, such
as Cartesian points (x,y pairs), so our Calculator will need to support those as well.
(Implementation note: by the use of the word "pairs" here, I mean to use tuples--specifically,
Int-Int tuples. Two-element tuples are commonly called "pairs", three-element tuples are
sometimes called "triplets", and four-element tuples are sometimes called "quads".)

And, because your professor is an evil, evil man, we also want the Calculator to be able to add
and subtract Cartesian points represented in "String-to-Int" dictionaries, as well.

All of these will be backed by unit tests, so that you can know whether your code is working
according to specification or not. The tests are available in the project, and you are free to
look at them, but **you may not modify them**. (If you want to add to them, that's acceptable, so long
as you do it in the space provided.)

As the project stands now, the code will not compile, because you will not have the functions
written that the test code calls. You may find it helpful to comment out certain tests in 
`main.swift` until you are  ready to tackle the bit of code they test, so that you can 
compile-and-run the code incrementally. 

(It is **strongly** suggested that as you get each test working, commit your code to GitHub.
Each time you get a little bit working, commit to GitHub. It is far, far easier for I and the TA
to figure out where something went wrong and get you partial credit if we have a commit history
to examine, as opposed to a "commit everything when I'm done" style that college students so
often prefer.)

The project is configured to run as a command-line application on macOS (not iOS), and should
have everything set up, including some unit tests to make sure that you are covering a good 
range of possibilities. Your assignment is to:

* make the code compile
* make the code pass the unit tests

All of the work you will do will be in the "Calculator.swift" file, inside of the "Calculator" class.
The "main.swift" file contains a set of simple tests using Swift's native "assert" facility, which
is a way of doing quick-and-easy unit testing when writing Swift. If there is any question about
what to name a function or its parameters, check the test code to see how it is expected to be used.
(Some functions will expect "nameless" parameters, using the `_` syntax of Swift.)

**NOTE:** Do not modify the tests listed in the section with the comment "Do not modify code in this
section." Changing the tests to make your code work is not good form, and is frowned upon by the
other developers. All of the tests can pass--you need to figure out the Swift syntax to declare the
functions properly in the Calculator class so that the code can compile and work as intended.

