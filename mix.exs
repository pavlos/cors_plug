defmodule CorsPlug.Mixfile do
  use Mix.Project

  def project do
    [app: :cors_plug,
     version: "0.1.2",
     elixir: ">= 1.0.0",
     deps: deps,
      package: [
        contributors: ["Michael Schaefermeyer"],
        licenses: ["MIT"],
        links: %{"Github" => "http://github.com/mschae/cors_plug"}
      ],
      description: description
   ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:cowboy, "~> 1.0.0"},
      {:plug, "~> 0.9.0"}
    ]
  end

  defp description do
    """
    An elixir plug that adds CORS headers to requests and responds to
    preflight requests (OPTIONS)
    """
  end
end
