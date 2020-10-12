# JuliaOnGenie
a quick test drive of the Genie web framework.

##### Table of Contents

[Bootstrapping a new app](#bootstrap)

[Installation](#install)

[Troubleshooting](#troubleshooting)

<a name="bootstrap"/>

## Bootstrapping a new app

to install Genie: Jump to the Julia REPL and load the Pkg REPEL (REPL in a REPL-- I know) by pressing "]"
``` bash
julia
$pkg> add Genie
```

to create a new app with the generator
``` bash
julia
$julia> using Genie
$julia> Genie.newapp("HelloWorld")
```

to start the Genie server
```bash
bin/repl
$julia> up()
```

add database support
```bash
$julia> Genie.Generator.db_support()
```

generate controller
```bash
$julia> Genie.newcontroller("Tasks")
```
  
