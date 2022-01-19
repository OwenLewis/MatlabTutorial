<h1> Simple Matlab Tutorial</h1>

This repository began as a tutorial and simple simulation distribution idea for my Math 412 class.
I have modified it slightly to make it less specific to that course. Now it will serve as a very bare bones help document to assist students who have never used Matlab for university coursework before. 


<h2>Matlab</h2>

Matlab is a general purpose mathematics and computing environment sold by MathWorks.
As a UNM Student, you have access to a free download of Matlab with your UNM ID. 
To install it on your personal computing device, follow the instructions found on the UNM IT website [here](http://it.unm.edu/download/). 


<h3>Starting Matlab</h3>
Starting the Matlab environment differs depending on your operating system and/or computing environment. 
On many systems, running Matlab is as simple as clicking the icon on your desktop. 
Below you can see a screenshot of the Matlab icon on the Dock of my Mac (it's the icon that looks like an orange mountain with a flat blue valley behind it). 
Starting Matlab on a Windows machine is a very similar process.

![Running Matlab](./starting.png)

If you are using a Linux operating system (or even on Mac), you may want/need to start Matlab via the shell. 
To do so, you simply type the command 

```bash
	matlab
```
and Matlab should fire right up with its normal graphical interface. 
The ``matlab`` command accepts a wide variety of options and flags to customize your experience. 
In the interest of reducing the system resources demanded by Matlab, I often like to forgoe the standard graphical interface, and also skip the "splash screen" at startup. 
To do this, you can add the ``-nodesktop`` and ``-nosplash`` options (see below). 

```bash
	matlab -nodesktop -nosplash
```
![No Graphics, no splash](./command.png)

<h3>Using Matlab</h3>
Once you have started Matlab on your computer, you will be greated with something similar to the following screenshot (assuming you did not supress the graphical interface at startup). 
Not everyone's Matlab environment will be laid out the same way. Users have the ability to move/alter some of the relevant pieces, so yours may look slightly different. 
However, you should have access to the same relevant functionalities. 

![Matlab Environment](./gui_example.png)

The relevant areas are:
* The "Toolbar" (at the top). This toolbar contains many various functions such as creating new Matlab files/scripts (more on these later), changing the path (more on this later), altering your preferences, and many more. 
* The "Current Folder" window (at the left). This shows the contents of the current (or present) working directory. The full path leading to the current directory is also shown in the long horizontal bar just below the toolbar. 
* The "Command Window" (in the center). This is the main interface for Matlab. Here you will type the commands you wish to execute (followed by "enter"). This is also where Matlab will print any textual information that results from the commands you run. 
* The "Workspace" (on the right). This shows all of the variables that Matlab currently has stored in memory (that are within scope), as well as a tiny amount of information pertaining to those variables (i.e. what "type" they are, etc). 

If you chose to start Matlab from your shell (Linux & Mac users) without the graphical interface then you will be greated instead with something like this:

![Matlab Environment](./nodesktop.png)

What you see is effectively _just_ the "Command Window" from before, but sitting inside my computer's terminal. 
Anything that can be done in the "Command Window" from the previous image can be accomplished by typing the same commands into this prompt. 

<h2>Directories, Working Directories, and Path</h2>

Matlab uses a "path" system in order to know where to look for functions and data in order to carry out whatever tasks you attempt. 
Roughly speaking, the "path" is giant list of directories on your computer where Matlab will look for functions that you call. 
If information is not in the path, Matlabe effectively does not know about it. 
By default, the path contains a large collection of directories within the location that Matlab was installed on your system. 
If you wish to see the default path, you can use the following Matlab command by typing it into the Command Window and pressing enter:
```matlab
path
```

You will be greeted with a staggering list of places that Matlab has stored all of its built in functions:

![Default Matlab Path](./path.png)

The path _can_ be edited.
This is even something you might want to do once you've built up a large collection of Matlab files that you use regularly. 
However, I recommend that you do not remove any of these directories from the path, and that you do not modify any of the files in the default path. 
These are the nuts & bolts of Matlab, and tinkering with them can have unintended consequences.
Instead I recommend that you make a new directory on your computer (probably under "Documents", and certainly not underneath the standard Matlab installation) where you can store all of your various projects in their own sub-directories.  

<h3>Present Working Directory</h3>
At any given time, Matlab is "running" in some directory on your computer. 
This is known as the "Present Working Directory". 
When you run any command, Matlab will look for the necessary files/data in the present working directory, in addition to the path. 
This means that if you place all of your Matlab files in a well organized folder, as long as that folder is the present working directory, Matlab will have access to all of your work (and the built in functions) without needing to modify the path in any way. 
If you want to know what the present working directory is, you can use the command ``pwd``. 
Matlab will return some text along the lines of 

```matlab
ans =

    '/Users/OwenLewis/directory/where/I/currently/am'
```


In order to change the present working directory, you can use the ``cd`` command (for "change directory"). 
For example, I could type 

```matlab
cd /Users/OwenLewis/directory/where/I/want/to/work
```

![Present Working Directory](./directory1.png)
