# What is Pattern Matching in Elixir?
In Elixir, pattern matching is a powerful feature that allows you to compare data structures and bind variables in a very declarative and readable way.

Unlike typical assignment in other languages (= meaning "assign"), in Elixir the `=` is a match operator. The expression attempts to match the pattern on the left with the value on the right.

In-short, `=` is not just an assignment operator — it's a **match operator**. It tries to match the pattern on the left with the value on the right

Basic Example:
```elixir
# Simple match
a = 13         # binds value 13 to `a`
13 = a         # matches successfully, as `a` is already 13
```
But this fails:
```elixir
15 = a         # Raises MatchError because a is 13, not 15
```

Also does this
```elixir
15 = c  # Raises undefined variable
```

In Elixir, assignment works differently than in many other languages — it uses pattern matching, not simple "assignment".

✅ `a = 13`
This is binding:

- You are binding the value 13 to the variable a.

- This means: "Match the pattern on the left (a) to the value on the right (13)".

- Since `a` is unbound (has no previous value), it gets the value 13.

This works just like you’d expect.

✅ `13 = a`
This is pattern matching, not "reverse assignment":

- You're saying: "Match 13 to the value of a."

- If a was already bound to 13, this matches successfully.

So,
```elixir
a = 13     # binds 13 to a
13 = a     # matches 13 against the value in a (which is 13) => success
```
If a had any other value, it would fail:
```elixir
a = 12
13 = a     # ❌ MatchError, because 13 ≠ 12
```

❌ `15 = c` (if c is unbound)
Here’s what happens:

- Elixir does not allow matching a literal (like 15) against an unbound variable.

- It expects the left-hand side to be a pattern (like a variable or tuple), not a fixed value.

So:
```elixir
15 = c
# Fails with MatchError (because Elixir tries to match 15 to an unknown value c)
```
This would only succeed if c was already bound to 15, But if c = 12, then: it fails ❌ MatchError, because 15 ≠ 12

# Pattern Matching with Tuples

```elixir
# Match a tuple with pattern
{:ok, value} = {:ok, 42}
IO.puts(value)  # Output: 42
```

But if structure doesn’t match:
```elixir
{:ok, value} = {:error, "Oops"}
# ** (MatchError) no match of right hand side value: {:error, "Oops"}
```

# Use Case: Function Definitions with Pattern Matching
Pattern matching can drive function logic:

```elixir
defmodule Auth do
  def login({:ok, user}), do: "Welcome back, #{user}"
  def login({:error, reason}), do: "Login failed: #{reason}"
end

Auth.login({:ok, "Mayank"})      # "Welcome back, Mayank"
Auth.login({:error, "Invalid"})  # "Login failed: Invalid"
```

# Real Use Case: Parsing HTTP responses

```elixir
case HTTPoison.get("https://example.com") do
  {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
    IO.puts("Success: #{body}")

  {:ok, %HTTPoison.Response{status_code: code}} ->
    IO.puts("Error: Status #{code}")

  {:error, %HTTPoison.Error{reason: reason}} ->
    IO.puts("Failed: #{reason}")
end
```


# Why it matters?
- Makes code declarative and clean

- Eliminates need for many if/else checks

- Essential in handling {:ok, result} or {:error, reason} tuples


