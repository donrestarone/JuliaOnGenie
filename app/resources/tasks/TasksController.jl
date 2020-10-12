module TasksController
  using Genie.Renderer.Html
  struct Task
    completed::Bool
    body:: String
  end

  const Tasks = Task[
    Task(false, "Learn Julia"),
    Task(false, "Test out websockets"),
    Task(false, "Test out unit Tests")
  ]

  function tasksToComplete()
    html(:tasks, :listtasks, tasks = Tasks)
  end
end
