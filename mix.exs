defmodule Dialyxir.Mixfile do
  use Mix.Project

  def project do
    [
      app: :dialyxir,
      version: "0.4.0",
      elixir: "> 1.3.2",
      description: description(),
      package: package(),
      deps: [],
      dialyzer: [plt_add_apps: [:syntax_tools]]
    ]
  end

  def application do
    [applications: [:dialyzer, :crypto, :mix]]
  end

  defp description do
    """
    Mix tasks to simplify use of Dialyzer in Elixir projects.
    """
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
     maintainers: ["Jeremy Huffman"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/jeremyjh/dialyxir"}]
  end
end
