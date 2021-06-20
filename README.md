# App Server 
A template for django based projects with formatting and linting config


# Developer notes
Requirements:
* Python >= 3.8
* [Poetry](https://python-poetry.org/docs/)

# Misc install stuff

## Ubuntu
If using a fresh Ubuntu installation that hasn't used Postgres before you may need to run the following before trying to install the project packages:

```
sudo apt install postgres-devel libpq-dev python3.8-dev
```

# Python

# Package management - [Poetry](https://python-poetry.org/)
Python has its own build in package manager, Pip. Pip has a number of limitations managing and understand sub
dependencies and as dependencies are centrally stored different projects can interfere with each other. Python attempts
to provide tools to manage virtual environments, but these also have some limitations.

Poetry provides a simpler tool for managing dependencies, including lock files to control exactly what is installed and
has built in support for managing isolated environments.

## Installing Poetry
Goto the poetry site for the command to install poetry if you are on Windows or Linux. If using a Mac and you have 
the [Homebrew package manager](https://brew.sh/) installed then just run `brew install poetry`.

## Poetry CLI
Poetry is relatively simple to use in the CLI, just remember to use it instead of Python of Pip directly, i.e.

```
# Add new dependency
poetry add django

# Run scripts
poetry run ./thing.py
poetry run ./manage.py
poetry run 

# Fetch all required dependencies
poetry install 
```

From the command line you can issue `poetry shell`. This is the same as the activate command used by
Python virtual environment tools and will switch the command line to use the appropriate copy of Python and its
libraries.

## Poetry in your IDE
### Pycharm
Poetry is support in Pycharm via a [plugin](https://plugins.jetbrains.com/plugin/14307-poetry).

If using Pycharm you can simply open a terminal and the virtual environment associated with the poetry
project is activated, so you can use your normal Python and Django commands without prefixing with `poetry run`, You
still must still use Poetry for adding dependencies and manually triggering a 

### VSCode
If using VSCode then the official Python plugin has support for poetry. You will, however, need to select the
environment created for the project. When searching for environments start entering the word 'poetry' 
and it should make it easier to pick the correct one.

Like PyCharm, when opening a terminal the appropriate Python is auto activated.


# Code formatting (black)
tbd
