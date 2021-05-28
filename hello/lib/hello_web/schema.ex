defmodule HelloWeb.Schema do
  use Absinthe.Schema

  alias HelloWeb.Resolvers
  # import types
  import_types HelloWeb.Schema.Usertype

  # read data
  query do
    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      # Resolver (/3 is 3 arguments)
      resolve &Resolvers.UserResolver.users/3
    end
  end

  # change/write data
  mutation do
    @desc "Register a new user"
    field :register_user, type: :user_type do
      arg(:input, non_null(:user_input_type))
      resolve(&Resolvers.UserResolver.register_user/3)
    end
  end
end
