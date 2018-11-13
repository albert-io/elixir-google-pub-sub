defmodule GoogleApi.PubSub.V1.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :google_api_pub_sub,
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url:
        "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/FIXME"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:google_gax, git: "https://github.com/albert-io/elixir-google-gax.git", tag: "0.0.1"},
      {:ex_doc, "~> 0.16", only: :dev},
      {:dialyxir, "~> 1.0.0-rc.3", only: [:dev], runtime: false}
    ]
  end

  defp description() do
    """
    Provides reliable, many-to-many, asynchronous messaging between applications. 
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" =>
          "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/FIXME",
        "Homepage" => "https://cloud.google.com/pubsub/docs"
      }
    ]
  end
end
