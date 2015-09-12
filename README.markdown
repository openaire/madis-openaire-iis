This is a **fork of the [madIS](https://code.google.com/p/madis/) project**. The goal of this fork is to make the original code easy to distribute and install in the operating system. This is needed in order to cleanly integrate madIS with [OpenAIRE's IIS](https://github.com/openaire/iis) system. 

When creating this fork, the intention was to introduce minimal changes in order to keep the fork as much aligned with the original code as possible. Ideally, these changes should be limited to moving some of the source files to different places and adding some boilerplate files. Unfortunately, in order to make it work, we also had to introduce changes in the code itself in couple places. See source code commit history for details.

madIS itself is "an extensible relational database system built on top of the SQLite database with extensions implemented in Python." It's original source code is available here: [https://code.google.com/p/madis/](https://code.google.com/p/madis/).
