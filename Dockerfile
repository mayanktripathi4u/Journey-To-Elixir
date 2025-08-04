# Use the official Elixir image as the base image
FROM elixir:1.16

# Install Hex package manager
RUN mix local.hex --force && \
    mix local.rebar --force

# Set the working directory inside the container
WORKDIR /app

# Default Command
CMD ["iex"]
