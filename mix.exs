defmodule Kino.Toast.MixProject do
  use Mix.Project

  def project do
    [
      app: :kino_toast,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: "Toast-style notifications for Kino-based Elixir Livebook apps.",
      deps: deps(),
      package: package(),
      docs: docs(),
      source_url: "https://github.com/arosenb2/kino_toast"
    ]
  end

  defp docs do
    [
      main: "Kino.Toast",
      extras: ["README.md", "CHANGELOG.md"]
    ]
  end

  defp package do
    [
      name: "kino_toast",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/arosenb2/kino_toast"},
      maintainers: ["Aaron Rosenbaum"]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:kino, "~> 0.16.0"},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end
end
