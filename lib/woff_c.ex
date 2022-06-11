defmodule WoffC do
  # use Bundlex.Loader, nif: :my_native
  require Bundlex.Port
  
  # defnif convert(args)
  def run(args) do
    IO.inspect("before")
    # convert(args)
    Bundlex.Port.open(:my_native, args)
    IO.inspect("after")

    receive do
      {_port, container} -> 
        IO.inspect container
        :ok
    after
      5000_000 -> raise "timeout"
    end
  end
end
