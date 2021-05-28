defmodule HelloWeb.Schema.Usertype do
  use Absinthe.Schema.Notation

  object :user_type do
    field :bio, :string
    field :email, :string
    field :name, :string
    field :number_of_pets, :integer
  end

  input_object :user_input_type do
    field :bio, :string
    field :email, non_null(:string)
    field :name, non_null(:string)
    field :number_of_pets, :integer
  end
end
