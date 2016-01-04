# MyPew

Here I collect some notes about getting started with
[Pew](https://github.com/berdario/pew) (Python Env Wrapper) under Linux.

Pew is similar to
[virtualenvwrapper](http://virtualenvwrapper.readthedocs.org/) but I think
it's much simpler to use. Pew provides just one command (`pew`) and all
its functionalities are available through some options. Virtualenvwrapper
seems to be a hack that is strongly connected to the Bash shell, while
Pew works with various shells like bash, zsh, fish, powershell, etc. Pew
is a much cleaner solution for working with virtual environments.

Configuration
-------------
I like to separate a project directory (with the source code) and its
virtualenv directory (which contains the Python interpreter and the
necessary modules). Thus, I have the following line in my `.bashrc` file:

    export WORKON_HOME=$HOME/.virtualenvs

Virtualenvs will be created in this folder. And that's all. No more
environment variables are needed.

Install Pew
-----------
    sudo pip install pew

Then launch the command `pew` to see if it works. It will print a
short help.

Creating a virtual environment
------------------------------
Create a project folder (for your source files) and launch the following
command:

    pew new -p=python2 project_name

Of course, instead of `python2` you can also specify `python3`. You can
also use PyPy, but for that check out the documentation of Pew.

Since I keep forgetting command line options, I made a script for creating
a virt. env. called `mk_venv.sh`. Copy it to your project folder, edit
the Python version at its beginning and launch it. The project name will
be the current folder's name.

Activating a virtual environment
--------------------------------
The pew command is the following:

    pew workon project_name

Again, I don't like typing much, so I have another script for this task
called `on.sh`. Copy it to the project folder and simply launch it if
you want to activate the virt. env.

Deactivating a virtual environment
----------------------------------
When you activate a virt. env. with Pew, it starts a new subshell. So
simply quit from this subshell (with `exit` or Ctrl+D).

I have an alias for this, placed in my `.bashrc` file:

    alias off='exit'

Summary
-------
If you want to create a new project and you want to put it in a
virt. env., then do this:

* create a project folder and copy the two files (`mk_venv.sh` and `on.sh`) in it
* create the virt. env. with `./mk_venv.sh`
* activate the virt. env. with `./on.sh`
* deactivate the virt. env. with `off`
