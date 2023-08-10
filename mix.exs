defmodule BackOffice.MixProject do
  use Mix.Project

  def project do
    [
      app: :back_office,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:kino, github: "livebook-dev/kino", ref: "main"},
      {:mneme, ">= 0.0.0", only: :test}
    ]
  end
end
