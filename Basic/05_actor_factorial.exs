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


# From Terminal run:
# actorid = spawn(Factorial, :fact, [])
# send(actorid, {self(), 5})
# receive do
#   result -> IO.puts("Factorial is #{result}")
# end
