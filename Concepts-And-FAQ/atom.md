# Atom in Elixir

In Elixir, an atom is a constant whose name is its own value.

Think of atoms like **labels** or **tags** that are **unique** and **never change**.

They’re commonly used to represent fixed values — like `status codes`, `states`, or `identifiers`.

📌 Examples of atoms:
```sh
:ok
:error
:pending
:elixir_is_fun
```

You can think of `:ok` just as "ok" — but lighter and faster, used mostly for comparisons and signaling.

If you label a folder “Important” — you're not changing what's in the folder, just assigning a fixed name/tag. That label is like an atom.

- Atoms are constants whose value is their name.
- Internally, atoms are stored efficiently (like symbols in other languages).
- They are **immutable** and **comparable**, making them great for `enums`, `flags`, or `tagged` values.


# Atom is used heavily In:
* Pattern matching ({:ok, result} vs :error)

* Supervisors (:permanent, :temporary)

* Tuples ({:ok, data} or {:error, reason})

🛑 Note / Warning
- Every atom is stored in memory permanently.
- ⚠️ Don’t create atoms dynamically from user input — it can exhaust memory.

# 🔧 Example Usage in Code
1. [Basic Example](/Basic/07_atom.exs)

From Terminal
```sh
cd Basic

elixir 07_atom.exs 
```

2. [Return Status]()



# Compared Atom with `if..else`
Initially I compared `atoms` in elixir as a shorthand for `if...else`, and I proved wrong, and needs a little adjustment.

- An atome is a literal whose name is its value.
- Its written with a leading colon.
- Two atoms with the same name are always the same value.
```elixir
:ok == :ok   # true
:ok == :error # false
```

Think of atoms as labels or constants — they don’t “point” to strings, they are the value.

**How This Relates to `if...else`**

Atoms often show up in pattern matching to represent `states` or `outcomes` of operations.

That’s why they fetl like `if...else` conditions to me — because in Elixir, many functions return `{:ok, value}` or `{:error, reason}` tuples.

For example:
```elixir
case status do
  :success -> "All good!"
  :error -> "Something went wrong."
  :pending -> "Please wait..."
end
```

This is pattern matching on atoms, not a shorthand `if...else`.

It’s a more declarative way of expressing conditions without explicitly writing comparisons like `if status == "success"`.

