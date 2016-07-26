# mix_elvis

Run the Elvis Erlang code linter from Mix.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `mix_elvis` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:mix_elvis, "~> 0.1.0"}]
    end
    ```

  2. Ensure `mix_elvis` is started before your application:

    ```elixir
    def application do
      [applications: [:mix_elvis]]
    end
    ```

