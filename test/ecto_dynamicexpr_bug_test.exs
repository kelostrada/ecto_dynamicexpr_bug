defmodule Ecto.DynamicexprBugTest do
  use ExUnit.Case
  alias Ecto.DynamicexprBug.{Repo, User, Post}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "test" do
    Repo.all(User)
    |> IO.inspect
  end
end
