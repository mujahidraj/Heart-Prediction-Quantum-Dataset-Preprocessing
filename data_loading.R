if(dir.exists("revised_dataset")) print("Diretory Exist")
if (!dir.exists("revised_dataset")) if (dir.create("revised_dataset")) print("New directory created")


if(dir.exists("Visualization")) print("Diretory Exist")
if (!dir.exists("Visualization")) if (dir.create("Visualization")) print("New directory created")

data <- read_excel("Dataset/original_dataset.xlsx")
View(data)

