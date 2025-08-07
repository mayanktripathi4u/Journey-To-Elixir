defmodule TodoActorProject do
  use Application
  def start(_type, _args) do
    children = [
      # Start the Registry
      {Registry, keys: :unique, name: TodoRegistry}
      # You can add dynamic supervisor if needed
    ]

    opts = [strategy: :one_for_one, name: TodoActorProject.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
