defmodule Busgijon.Mixfile do
  use Mix.Project

  def project do
    [app: :busgijon,
     version: version,
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases,
     deps: deps]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {Busgijon, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger, :gettext,
                    :httpotion]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [{:phoenix, "~> 1.1.4"},
     {:phoenix_html, "~> 2.4"},
     {:phoenix_live_reload, "~> 1.0", only: :dev},
     {:gettext, "~> 0.9"},
     {:cowboy, "~> 1.0"},
     {:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.2"},
     {:httpotion, "~> 2.1.0"},
     {:poison, "~> 2.0"},
     {:junit_formatter, "~> 1.0", only: :test},
     {:exrm, "~> 1.0.3"}]
  end

  defp aliases do
    []
  end

  defp version do
    "0.0.1"
  end
end
