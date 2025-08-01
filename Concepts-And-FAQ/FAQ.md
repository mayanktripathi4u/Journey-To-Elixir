**FAQ's**

- [What does `elixir --version` tell us?](#what-does-elixir---version-tell-us)
- [Do we have to install Erlang separately with brew install elixir?](#do-we-have-to-install-erlang-separately-with-brew-install-elixir)
- [What is `asdf`?](#what-is-asdf)



# What does `elixir --version` tell us?
When you run:
```sh
elixir --version
```

We will get the ouptut like:
```sh
Erlang/OTP 26 [erts-13.0] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:1]

Elixir 1.15.7 (compiled with Erlang/OTP 26)
```

**🔍 It tells you:**
- The Elixir version installed (e.g., Elixir 1.15.7).

- The Erlang/OTP version it was compiled with (e.g., Erlang/OTP 26).

- BEAM settings like 64-bit architecture, SMP (symmetric multiprocessing), async thread count, etc.

This confirms both Elixir and Erlang are available and correctly installed.


# Do we have to install Erlang separately with brew install elixir?
❌ No, you do not need to install Erlang separately.

When you run: `brew install elixir`

- Homebrew automatically installs Erlang as a dependency of Elixir.

- It ensures compatibility between the Elixir version and the Erlang runtime.
Thus, we should not mix manually installed Erlang and Homebrew-installed Elixir — version mismatches can cause problems.

- Elixir depends on Erlang/OTP because:

  - Elixir runs on the BEAM VM, which is part of Erlang.

  - Elixir code is compiled to Erlang bytecode.

  - Tools like iex, mix, and elixir internally use Erlang under the hood.

So Homebrew handles that by installing the correct compatible version of Erlang along with Elixir.

# What is `asdf`?
`asdf` is a version manager - like a toolbox that helps us install and switch between different versions of programming languages and tools.

Imagine you're a chef who works in different kitchens. Each kitchen wants a different oven temperature and ingredient brand.

`asdf` lets you:
  - Set the right tools and versions per kitchen (project).

  - Easily switch environments without conflict.

  - Keep your system clean by avoiding global installs.

`asdf` is a language-agnostic version manager. It uses a plugin-based system to manage versions of multiple runtimes.

It's especially useful if you work on multiple projects that need different versions of:

- Elixir
- Erlang
- Node.js
- Python
- Ruby
- Java
- Terraform
- …and many more!