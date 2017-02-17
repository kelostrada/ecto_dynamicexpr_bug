defmodule Ecto.DynamicexprBugTest do
  use ExUnit.Case
  import Ecto.Query
  alias Ecto.DynamicexprBug.{Repo, User, Post}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "test" do
    user = Repo.insert!(%User{username: "test"})
    post = Repo.insert!(%Post{title: "test post", body: "Lorem Ipsum", user_id: user.id})

    dynamic = dynamic([p, u], u.username == ^user.username)
    dynamic = dynamic([p], ^dynamic and p.user_id == ^user.id)

    assert ((from p in Post,
    join: u in assoc(p, :user),
    where: ^dynamic)
    |> Repo.all) == [post]

  end
end
