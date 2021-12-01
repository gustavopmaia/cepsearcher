defmodule Cep do
  use HTTPoison.Base

  def search() do

    cep = IO.gets("What is the CEP: ")

    {:ok, response} = HTTPoison.get("viacep.com.br/ws/#{cep |> String.split("\n") |> List.first |> IO.inspect()}/json/")

    Poison.decode!(response.body)
  end
end
