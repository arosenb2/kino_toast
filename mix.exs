defmodule Kino.Toast.MixProject do
  use Mix.Project

  def project do
    [
      app: :kino_toast,
      version: "0.1.6",
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
      groups_for_docs: [
        Initialization: &(&1[:section] == :initialization),
        Actions: &(&1[:section] == :actions),
        "Pre-Built Toasts": &(&1[:section] == :types),
        "Custom Toasts": &(&1[:section] == :custom)
      ],
      extras: [
        "README.md": [title: "Readme"],
        "CHANGELOG.md": [title: "Changelog"],
        LICENSE: [title: "License"],
        "kino_toast.livemd": [title: "Livebook"]
      ]
    ]
  end

  defp package do
    [
      name: "kino_toast",
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/arosenb2/kino_toast",
        "Hex" => "https://hex.pm/packages/kino_toast",
        "HexDocs" => "https://hexdocs.pm/kino_toast",
        "Changelog" => "https://github.com/arosenb2/kino_toast/blob/main/CHANGELOG.md"
      },
      files: ~w(lib mix.exs README.md CHANGELOG.md LICENSE),
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
