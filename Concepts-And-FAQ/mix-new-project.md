When you run `mix new todo_project`, Elixir generates a standard project skeleton that gives you a solid foundation to build, test, and maintain your code.

Let’s go through each file and directory to understand its purpose, importance, and whether it’s mandatory.

# 📁 `lib/`
This folder holds your application source code.

## ✅ `lib/todo_project.ex`
- This is the main module for your project (named after the project).

- You write your public functions, modules, and business logic here.

- It is required because Mix assumes `lib/` is your app code root.

# 📁 `test/`
This folder is for **automated tests**. 

Elixir uses **ExUnit** as its test framework.

## ✅ `test/test_helper.exs`
- This file is automatically run before any test files.

- It usually includes `ExUnit.start()` to kick off the test runner.

## ✅ `test/todo_project_test.exs`
- This contains actual test cases for your TodoProject module.

- You'll write test functions using test macro to verify your code works.

✅ Testing is not mandatory, but strongly recommended for reliability.

# 📄 `.formatter.exs`
- Configures the code formatter for your project.

- Helps enforce consistent style (e.g., indentation, line breaks).

- Not critical for runtime, but highly recommended for clean code.

# 📄 `mix.exs`
This is the **heart of your project** in terms of metadata and configuration.

* Defines:

    - Project name/version

    - Dependencies (via deps)

    - Compiler options

    - App startup configuration (for OTP apps)

✅ Mandatory for every Mix project.

# 📄 `README.md`
- Just a markdown file for project documentation.
- Optional but great for explaining:
    - What the project does
    - How to use it
    - Setup or install instructions

✅ Not required for Elixir to run, but essential for maintainability and collaboration.


|File/Dir|	Purpose	|Required?	|Notes|
|--|--|--|--|
|`lib/`	|Source code	|✅ Yes	|Main business logic|
|`test/`	|Tests for your code	|❌ No	|Highly recommended|
|`.formatter.exs`	|Code formatting rules	|❌ No	|Helps with clean, consistent code|
|`mix.exs`	|Project metadata & config	|✅ Yes	|Essential for compiling & running|
|`README.md`	|Documentation	|❌ No	|Useful for understanding project|

