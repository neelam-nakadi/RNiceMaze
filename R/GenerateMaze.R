#' Source all R files required to Generate a maze.
#' Call all the R functions to generate maze.
#' Save the generated maze in a specified location.


source(here::here("R", "makeGraph.R"))
source(here::here("R", "makeMaze_dfs.R"))
source(here::here("R", "makeImperfect.R"))
source(here::here("R", "makeMaze_prim.R"))

source(here::here("R", "makeMaze_kruskal.R"))
source(here::here("R", "stepByStepMaze.R"))
source(here::here("R", "plotMaze.R"))
source(here::here("R", "plotMazeSolution.R"))

source(here::here("R", "plotMazeCircular.R"))
source(here::here("R", "plotMazeSolutionCircular.R"))

# Set maze parameters
Linewidth = 2
LineColor = "Green"
Rows = 12
Columns = 12
SaveMazeAt = "D://Neelam//Rudhvi Reading material//Rudhvi-diy-books//Maze book//Maze images//maze"


maze1 <- makeGraph(Rows, Columns)
maze1 <- makeMaze_dfs(maze1)
plotMaze(maze1, Rows, Columns, lineWidth = Linewidth, saveMazeAt = SaveMazeAt, mazeName = "TrialMaze_df.png")
plotMazeSolution(maze1, Rows, Columns)

maze1 <- makeImperfect(maze1)
plotMaze(maze1, Rows, Columns, lineWidth = Linewidth, saveMazeAt = SaveMazeAt, mazeName = "TrialMaze_Imperfect.png")
plotMazeSolution(maze1, Rows, Columns)

maze2 <- makeGraph(Rows, Columns)
maze2 <- makeMaze_prim(maze2)
plotMaze(maze2, Rows, Columns, lineWidth = Linewidth, saveMazeAt = SaveMazeAt, mazeName = "TrialMaze_Prim.png")

maze3 <- makeGraph(Rows, Columns)
maze3 <- makeMaze_kruskal(maze3)
plotMaze(maze3, Rows, Columns, lineWidth = Linewidth, saveMazeAt = SaveMazeAt, mazeName = "TrialMaze_Kruskal.png")

# maze4 <- makeGraph(Rows, Columns)
# maze4 <- makeMaze_dfs(maze4, stepBystep = TRUE, nrows=Rows, ncols=Columns)
# plotMaze(maze4, Rows, Columns, lineWidth = Linewidth)
#
# maze5 <- makeGraph(Rows, Columns)
# maze5 <- makeMaze_prim(maze5, stepBystep = TRUE, nrows=Rows, ncols=Columns)
# plotMaze(maze5, Rows, Columns, lineWidth = Linewidth)
#
# maze6 <- makeGraph(Rows, Columns)
# maze6 <- makeMaze_kruskal(maze6, stepBystep = TRUE, nrows=Rows, ncols=Columns)
# plotMaze(maze6, Rows, Columns, lineWidth = Linewidth)

maze7 <- makeGraph(Rows, Columns)
maze7 <- makeMaze_dfs(maze7)
plotMazeCircular(maze7, Rows, Columns, lineWidth = Linewidth, saveMazeAt = SaveMazeAt, mazeName = "TrialMazeCircular_df.png")
plotMazeSolutionCircular(maze7, Rows, Columns)
