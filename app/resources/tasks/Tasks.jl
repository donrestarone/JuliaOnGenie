module Tasks
using TasksController
import SearchLight: AbstractModel, DbId
import Base: @kwdef

export Task

@kwdef mutable struct Task <: AbstractModel
  id::DbId = DbId()
  body::String = ""
  completed::Bool = false
end

function seed()
  seeds = TasksController.tasksToComplete()
  for task in seeds
    Task(completed = task[1], body = task[2]) |> save!
  end
end

end
