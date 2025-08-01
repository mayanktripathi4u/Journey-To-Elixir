# Elixir Development Environment Setup (macOS + VS Code + Docker)

We're going to start by first installing Elixir and getting a project setup
- Inside a VS-Code (Visual Studio Code) which is the editor I'm going to use for. 
- Optionally running Elixir in a Docker Container.

# 🛠️ Prerequisites

Ensure the following are installed:

- [Homebrew](https://brew.sh/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Visual Studio Code](https://code.visualstudio.com/)

# 📦 Install Elixir Locally (macOS)
Elixir relies on Erlang, so install both using Homebrew:

```sh
brew update
brew install elixir
```

✅ Verify installation:
```sh
elixir --version
```

You should see something like:
```sh
Elixir 1.15.x (compiled with Erlang/OTP 25)
```

🔍 What it tells us:
- The Elixir version installed (e.g., Elixir 1.15.7).

- The Erlang/OTP version it was compiled with (e.g., Erlang/OTP 26).

- BEAM settings like 64-bit architecture, SMP (symmetric multiprocessing), async thread count, etc.

This confirms both Elixir and Erlang are available and correctly installed.

# 📦 Install Elixir Locally (Windows / Linux)
Please refer official documentation and follow the instructions.


# 🧰 Set Up Visual Studio Code for Elixir
Install the following VS Code extensions for Elixir development:

1. ElixirLS: Elixir Language Server.
So far what I have learned about the features provided by the extension ElixirLS.
- Features: 
  - Code completion, 
  - inline documentation
  - formatting and 
  - debugging

2. Code Formatter (Optional):
Elixir includes its own formatter, run with:
```sh
mix format
```


# Access and work in Elixir
Once we have installed Elixir (in any OS or in Docker), now we should be able to, from the terminal invoke IEX, which is the interactive Elixir Shell or Environment, and is very similar to Python REPL or to many other programming languages, to type things and evaluate them immediately. 

```sh
iex
```

[Refer](Access-Elixir.md)

Just a quick example of a Hello World, in the IEX would be - 

```sh
"hello world"
```
Alternate way to combine two strings and print.

```sh
"hello" <> "world"
```
Here we get the response "hello world" from both the commands.

This is just to show, one of the way to do some basic coding in the interactive session, but doing anything more complex can get a little complicated doing it all from the terminal so we have another option to work from files. 

To learn more ways [refer](Access-Elixir.md).


