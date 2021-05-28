defmodule HelloWeb.Resolvers.UserResolver do
alias Hello.Accounts

  def users(_,_,_) do
    {:ok, Accounts.list_users()}
  end
end
