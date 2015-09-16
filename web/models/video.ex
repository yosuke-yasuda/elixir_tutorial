defmodule PhoenixTutorial.Video do
  use PhoenixTutorial.Web, :model

  schema "videos" do
    field :name, :string
    field :approved_at, Ecto.DateTime
    field :description, :string
    field :likes, :integer

    timestamps
  end

  @required_fields ~w(name approved_at description likes)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
