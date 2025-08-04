# Tuples: fixed-size, fast, often used for return values
status = {:ok, "Data loaded"}
IO.inspect(status)

case status do
  {:ok, message} -> IO.puts("Success: #{message}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end

# Maps: key-value, dynamic structure
person = %{
  name: "Elixir Dev",
  age: 25,
  city: "Pune"
}

IO.puts("Name: #{person.name}")
IO.inspect(Map.get(person, :city))
IO.inspect(Map.put(person, :country, "India"))


# 🔍 Tuples are great for pattern matching; Maps are more like dictionaries or JSON objects.
