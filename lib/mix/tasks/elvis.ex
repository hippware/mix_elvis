defmodule Mix.Tasks.Elvis do
  use Mix.Task

  @shortdoc "Run the Elvis linter for Erlang code"
  @moduledoc ""

  @recursive true
  @preferred_cli_env :dev

  def run(_args) do
    project_config = Mix.Project.config
    elvis_config = project_config[:elvis_config]
    case :elvis_core.rock(elvis_config) do
      {:fail, _} -> Mix.raise "mix elvis failed"
      :ok -> :ok
    end
  end
end
