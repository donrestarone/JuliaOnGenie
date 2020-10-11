module HelloGenie

using Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = HelloGenie))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = HelloGenie.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
