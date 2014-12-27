bpwrapper
=========

A simple plain C wrapper for C++ Google Breakpad.
What is Google Breakpad client library? Read about it here: <a href="https://code.google.com/p/google-breakpad/wiki/GettingStartedWithBreakpad"> Getting Started With Breakpad</a>

Why do I need it?
---------
Actually, you don't need this wrapper, you need Google Breakpad. But Google Breakpad is a c++ library with c++ headers. So, if you have a plain C project, that you want Google Breakpad to use with, you will need simple wrapper.

How to use it?
---------
You need breakpad sources and compiled 'libbreakpad_client.a' file.
Then look at 'build.sh' script, you can easily understand how to use it. I've prepared and example for you ('test.c').
