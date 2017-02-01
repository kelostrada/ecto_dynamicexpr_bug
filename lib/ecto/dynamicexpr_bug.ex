defmodule Ecto.DynamicexprBug do
  @moduledoc """
  Documentation for Ecto.DynamicexprBug.
  """
  use Application
  import Supervisor.Spec, warn: false

  def start(_type, _args) do
    Supervisor.start_link([
      supervisor(Ecto.DynamicexprBug.Repo, [])
    ], [strategy: :one_for_one, name: Ecto.DynamicexprBug.Supervisor])
  end

  @doc """
  Hello world.

  ## Examples

      iex> Ecto.DynamicexprBug.hello
      :world

  """
  def hello do
    :world
  end
end
