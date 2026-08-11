defmodule Chaos.MixProject do
  use Mix.Project

  def project do
    [
      app: :chaos,
      version: "0.1.0",
      elixir: "~> 1.15",
      deps: deps()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:phoenix, "~> 1.7"},
      {:ecto_sql, "~> 3.10"},
      {:postgrex, "~> 0.17"},
      {:plug, "~> 1.15"},
      {:poison, "~> 5.0"},
      {:jason, "~> 1.4"},
      {:cowboy, "~> 2.10"},
      {:tesla, "~> 1.7"},
      {:nimble_parsec, "~> 1.3"}
    ]
  end
end
