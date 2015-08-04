defmodule Joken.Mixfile do
  use Mix.Project

  def project do
    [app: :joken,
     version: "0.15.0",
     elixir: "~> 1.0.0",
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:logger, :crypto]]
  end

  defp deps do
    [
      {:plug, "~> 0.14", optional: true},
      {:earmark, "~> 0.1", only: :docs},
      {:ex_doc, "~> 0.7", only: :docs},
      {:poison, "~> 1.3", only: :test},
      {:jsx, "~> 2.1.1",  only: :test}
    ]
  end

  defp description do
    """
    JWT Library for Elixir
    """
  end

  defp package do
    [
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*", "CHANGELOG*"],
      contributors: ["Bryan Joseph"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/bryanjos/joken",
               "Docs" => "http://hexdocs.pm/joken"}
    ]
  end
end
