defmodule MixElvis.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mix_elvis,
      version: "0.1.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  defp deps do
    [
      {:zipper, github: "inaka/zipper", branch: "master", override: true, manager: :rebar3, only: :dev},
      {:elvis,  "~> 0.3.0", hex: :elvis_core, only: :dev}
    ]
  end
end
