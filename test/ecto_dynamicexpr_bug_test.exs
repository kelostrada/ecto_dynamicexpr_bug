defmodule Ecto.DynamicexprBugTest do
  use ExUnit.Case
  import Ecto.Query
  alias Ecto.DynamicexprBug.{Repo, User, Post}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "test" do
    dynamic = dynamic([p, u], u.username == ^"test")
    dynamic = dynamic([p], ^dynamic and p.user_id == ^1)

    IO.inspect dynamic

    (from p in Post,
    join: u in assoc(p, :user),
    where: ^dynamic)
    |> Repo.all
    |> IO.inspect
  end
end
