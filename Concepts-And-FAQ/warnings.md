# Warnings & Debug

# ArithmeticError Warning
Below is the code I used initially for [Factorial](/Basic/05_actor_factorial.exs)

```elixir
defmodule Factorial do
  def fact do
    receive do
      # {:message_type, value} ->
        # code

      {listener, X} ->
        send(self(), {listener, X, 1})

      {listener, 0, total} ->
        send(listener, total)

      {listener, 1, total} ->
        send(listener, total)

      {listener, X, total} ->
        send(self(), {listener, X - 1, X * total})
    end

    fact()

  end
end
```

This will give below warning
![alt text](image-2.png)

**What does this means:**

The warning means that when X becomes 0, the code will still try to compute X - 1 and X * total, which is fine for multiplication, but you should ensure your recursion stops at 0 or 1 to avoid unnecessary calls.

Your code already handles {listener, 0, total} and {listener, 1, total} by sending the result to the listener. The warning is just letting you know that if X is not an integer or is negative, X - 1 could cause issues.

No change is strictly required for normal positive integer inputs.
If you want to silence the warning and make the code safer, you can add a guard to ensure X > 1 before recursing:

```elixir
defmodule Factorial do
  def fact do
    receive do
      {listener, X} when X > 1 ->
        send(self(), {listener, X - 1, X * 1})
      {listener, X} ->
        send(self(), {listener, X, 1})

      {listener, 0, total} ->
        send(listener, total)

      {listener, 1, total} ->
        send(listener, total)

      {listener, X, total} when X > 1 ->
        send(self(), {listener, X - 1, X * total})
    end

    fact()
  end
end
```

To smuuarize, the warning is informational. Above code works for positive integers.
For robustness, add guards to ensure X > 1 before recursing.


# MatchError
WHen running the code `[a, a] = [4, 6]` gets MatchError.
> (MatchError) no match of right hand side value: [4, 6]

The error occurs because `[a, a] = [4, 6]` tries to match a list where both elements must be equal (the same value).

- `[a, a]` means: "match a list with two elements, both equal, and bind that value to `a`."
- `[4, 6]` is a list with two different values.

Since `4 ≠ 6`, Elixir raises a MatchError.
Both elements must be the same for this pattern to match.

Example that works:
```elixir
[a, a] = [5, 5]   # a = 5
```

