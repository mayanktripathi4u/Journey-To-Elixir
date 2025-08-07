defmodule TodoActor do
  use GenServer

  ## CLIENT API

  def start_link(name) do
    # GenServer.start_link(__MODULE__, [], name: via_tuple(name))
    GenServer.start_link(__MODULE__, %{}, name: via_tuple(name))
  end

  def add_task(name, task) do
    GenServer.cast(via_tuple(name), {:add, task})
  end

  def get_tasks(name) do
    GenServer.call(via_tuple(name), :get)
  end

  ## SERVER CALLBACKS

  def init(_initial_state) do
    {:ok, []}
  end

  def handle_cast({:add, task}, state) do
    {:noreply, [task | state]}
  end

  def handle_call(:get, _from, state) do
    {:reply, Enum.reverse(state), state}
  end

  ## REGISTRY HELPERS

  defp via_tuple(name) do
    {:via, Registry, {TodoRegistry, name}}
  end
end
