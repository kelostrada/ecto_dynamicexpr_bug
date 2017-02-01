defmodule Ecto.DynamicexprBug.Post do
  use Ecto.Schema

  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    field :body, :string

    belongs_to :user, Ecto.DynamicexprBug.User

    timestamps()
  end

  @required_fields ~w(title body)a
  @optional_fields ~w()a

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
    |> validate_length(:title, min: 5, max: 100)
  end

end
