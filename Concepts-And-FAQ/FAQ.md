**FAQ's**

- [Explain Functional Programming (FP)](#explain-functional-programming-fp)
- [Why Elixir? — Purpose \& Benefits](#why-elixir--purpose--benefits)
- [Purpose of Elixir](#purpose-of-elixir)
- [Key Benefits of Elixir](#key-benefits-of-elixir)
- [Some Use Cases](#some-use-cases)
- [What does `elixir --version` tell us?](#what-does-elixir---version-tell-us)
- [Do we have to install Erlang separately with brew install elixir?](#do-we-have-to-install-erlang-separately-with-brew-install-elixir)
- [What is `asdf`?](#what-is-asdf)
- [Explain Concurrency; Fault-Tolerance; Scalability; Hot Code Swapping](#explain-concurrency-fault-tolerance-scalability-hot-code-swapping)
  - [Concurrency](#concurrency)
  - [Fault Tolerance](#fault-tolerance)
  - [Scalability](#scalability)
  - [Hot Code Swapping](#hot-code-swapping)
- [Concurrency Vs Parallelism](#concurrency-vs-parallelism)

<hr style="border-top: 3px solid #BE0000; margin: 1.5rem 0;" />

# Explain Functional Programming (FP)
**In Layman terms -**

You build programs using pure functions, which means they:

- Don’t change external stuff.

- Always give the same output for the same input.

- Don’t have side effects.

**Tech explanation:**

Elixir embraces FP:

- Everything is immutable.

- Functions are first-class (can be passed as arguments).

- Encourages stateless design and pure computation.


<hr style="border-top: 3px solid #BE0000; margin: 1.5rem 0;" />

# Why Elixir? — Purpose & Benefits

Elixir is a **functional, concurrent, and fault-tolerant** programming language designed for **scalable** and **resilient** systems.

It runs on the **Erlang VM (BEAM)**, which is battle-tested and used in telecom systems for over 30 years — known for running systems with **9s of uptime**.

<hr style="border-top: 3px solid #BE0000; margin: 1.5rem 0;" />

# Purpose of Elixir
Elixir is built to:

- Handle **high-concurrency** workloads (millions of processes).
- Provide **fault-tolerant** applications with auto-recovery.
- Write **functional code** that’s easy to reason about and test.
- Power **real-time, distributed, and scalable systems**.
- Allow **hot code upgrades** in production.
- Deliver **maintainable** and **extensible** applications.
 
<hr style="border-top: 3px solid #BE0000; margin: 1.5rem 0;" />

# Key Benefits of Elixir

1. [Functional Programming](#explain-functional-programming-fp)
- Immutable data
- Pure functions
- Stateless design

2. [Concurrency](#concurrency)
- Lightweight processes via the BEAM VM
- Message-passing model (no shared memory)
- Safe parallelism

3. [Fault Tolerance](#fault-tolerance)
- Supervisors restart failed components
- "Let it crash" philosophy
- Zero-downtime error recovery

4. [Scalability](#scalability)
- Built for distributed systems
- Handles thousands/millions of users
- Efficient memory and CPU usage

5. [Hot Code Swapping](#hot-code-swapping)
- Update code in production without restarting
- Used in systems that require 24/7 uptime

6. Developer Productivity
- Clear syntax
- Built-in testing tools
- First-class documentation
- `mix` build tool for dependency management

<hr style="border-top: 3px solid #BE0000; margin: 1.5rem 0;" />

# Some Use Cases

| Use Case            | Why Elixir?                                |
|---------------------|---------------------------------------------|
| Real-time systems   | Fast, concurrent processes (e.g., chat, IoT) |
| Web APIs            | Phoenix framework (fast, reliable)         |
| Event-driven apps   | GenServers and Pub/Sub support              |
| Scalable services   | Lightweight and distributed architecture    |
| Fault-tolerant apps | Self-healing, supervised architecture       |

<hr style="border-top: 3px solid #BE0000; margin: 1.5rem 0;" />


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

<hr style="border-top: 3px solid #BE0000; margin: 1.5rem 0;" />

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

<hr style="border-top: 3px solid #BE0000; margin: 1.5rem 0;" />

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

<hr style="border-top: 3px solid #BE0000; margin: 1.5rem 0;" />

# Explain Concurrency; Fault-Tolerance; Scalability; Hot Code Swapping
## Concurrency
Based on the dictionary - 
> - The fact of two or more events or circumstances happening or existing at the same time.
>
> - The ability to execute more than one program or task simultaneously.

To put it in simple terms - It lets our program do many things at once, like downloading files, responding to users, and writing to disk at the same time.

Concurrency means multiple computations are happening at the same time. Concurrency is everywhere in modern programming, whether we like it or not: 
  - Multiple computers in a network.
  - Multiple applications running on one computer. 
  - Multiple processors in a computer (today, often multiple processor cores on a single chip)

Elixir runs on the BEAM VM (same as Erlang) and uses lightweight processes to achieve concurrency:

- Each process is isolated and managed by the VM.

- Communication is done via message passing.

- Processes are cheap to create (millions possible).


## Fault Tolerance
Fault tolerance refers to a system's ability to continue operating without interruption, even when some of its components fail. 

It's a design principle focused on ensuring that a system can withstand hardware or software malfunctions and still maintain functionality, preventing data loss and service disruptions. 

In simple terms - If one part of the program crashes, the rest keeps running. Like your car's music system still working even if the AC stops.

Elixir provides built-in supervision trees:

- If a process crashes, a supervisor can restart it.

- This makes systems resilient and self-healing.

## Scalability
Per dictionary - 
> The capacity to be changed in size or scale.

Scalability refers to a system's or business's ability to handle increased demand or workload without significantly sacrificing performance or increasing costs. It encompasses the capacity to grow, adapt, and expand operations efficiently in response to greater user volume, product offerings, or market reach. 

Elixir is designed for massive scale, handling:

- Thousands of users.

- Distributed systems.

- Real-time apps (like chat, messaging).

## Hot Code Swapping
Hot Code Swapping refers to the ability to modify or replace parts of a running software application without shutting down or restarting the entire system. 

This allows for updates, bug fixes, or new feature additions to be deployed in real-time, minimizing downtime and ensuring continuous operation, particularly in highly available systems like servers.

Inherited from Erlang: you can update code without downtime, which is huge for production systems.

<hr style="border-top: 3px solid #BE0000; margin: 1.5rem 0;" />

# Concurrency Vs Parallelism
Concurrency and parallelism, while often used interchangeably, represent distinct concepts in computer science. 

Concurrency is the ability to manage multiple tasks at the same time, even if they're not executing simultaneously. 

Where as Parallelism is the ability to execute multiple tasks simultaneously. 

In essence, concurrency is about structure and organization, while parallelism is about execution speed. 





<hr style="border-top: 3px solid #BE0000; margin: 1.5rem 0;" />

**Learning Note**

*As I continue to explore Elixir, I’ll update this document with new patterns, examples, and deeper insights.*


# Can I use GenServer and Registry without a full Mix project?
👉 Yes, you can use them in plain `.exs` scripts.
But you must manually start the Registry because there is no supervision tree automatically created like in a Mix project.