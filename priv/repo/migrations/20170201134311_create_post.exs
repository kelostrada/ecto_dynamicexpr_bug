defmodule Ecto.DynamicexprBug.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string, null: false
      add :body, :string
      add :user_id, references(:users)

      timestamps()
    end
  end
end
