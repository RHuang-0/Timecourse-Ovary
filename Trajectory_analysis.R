library(SCORPIUS)
library(SeuratWrappers)
library(monocle3)
library(Seurat)
library(SeuratData)
library(SeuratDisk)






alldata.filt <- readRDS('10x_final_0811.rds')
Idents(alldata.filt) <- 'ff_names'
alldata_TL <- subset(alldata.filt, idents = c
                     ('Theca 1', "Theca 2",'Luteal 1','Luteal 2'))

expression <- t(alldata_TL@assays$RNA@data)
group_name <- factor(alldata_TL@meta.data$ff_names)
progression_group_palette <- setNames(
  c('#f9b69f', '#7c4509','#f2b1ed', '#ff91d4'),
  c('Theca 1', "Theca 2",'Luteal 1','Luteal 2')
)
group_name <- factor(alldata_TL@meta.data$timepoints)
progression_group_palette <- setNames(
  c('#B3B3B3', '#737373','#262626'),
  c('00hrs', "04hrs",'12hrs')
)

space <- reduce_dimensionality(expression, "spearman")
traj <- infer_trajectory(space)
draw_trajectory_plot(space, group_name, traj$path, contour = TRUE, 
                     point_size = 0.2, progression_group_palette = progression_group_palette)

draw_trajectory_plot(space, traj$time, traj$path)


alldata_GL <- subset(alldata.filt, idents = c
                     ('Granulosa 1', "Granulosa 2",'Granulosa 3','Luteal 1','Luteal 2'))
expression <- t(alldata_GL@assays$RNA@data)

group_name <- factor(alldata_GL@meta.data$ff_names)
progression_group_palette <- setNames(
  c("#f5be37",#gc1
    "#ff7d3e",#gc2
    "#ffa972",'#f2b1ed', '#ff91d4'),
  c('Granulosa 1', "Granulosa 2",'Granulosa 3','Luteal 1','Luteal 2')
)


group_name <- factor(alldata_GL@meta.data$timepoints)

progression_group_palette <- setNames(
  c('#B3B3B3', '#737373','#262626'),
  c('00hrs', "04hrs",'12hrs')
)

space <- reduce_dimensionality(expression, "spearman")
traj <- infer_trajectory(space)
draw_trajectory_plot(space, group_name, traj$path, contour = TRUE, 
                     point_size = 0.2, progression_group_palette = progression_group_palette)

draw_trajectory_plot(space, traj$time, traj$path)




alldata_GLT <- subset(alldata.filt, idents = c
                      ('Granulosa 1', "Granulosa 2",'Granulosa 3','Luteal 1','Luteal 2','Theca 1','Theca 2'))
expression <- t(alldata_GLT@assays$RNA@data)

group_name <- factor(alldata_GLT@meta.data$ff_names)
progression_group_palette <- setNames(
  c("#f5be37",#gc1
    "#ff7d3e",#gc2
    "#ffa972",'#f2b1ed', '#ff91d4','#f9b69f', '#7c4509'),
  c('Granulosa 1', "Granulosa 2",'Granulosa 3','Luteal 1','Luteal 2','Theca 1','Theca 2')
)


group_name <- factor(alldata_GLT@meta.data$timepoints)

progression_group_palette <- setNames(
  c('#B3B3B3', '#737373','#262626'),
  c('00hrs', "04hrs",'12hrs')
)

space <- reduce_dimensionality(expression, "spearman")
traj <- infer_trajectory(space)
draw_trajectory_plot(space, group_name, traj$path, contour = TRUE, 
                     point_size = 0.2, progression_group_palette = progression_group_palette)

draw_trajectory_plot(space, traj$time, traj$path)
