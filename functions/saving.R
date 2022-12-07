#Function for saving png files
save_culmen_plot_png <- function(penguins_culmen, 
                                        filename, width, height, res, scaling){
  agg_png(filename, 
          width   =  width,
          height  =  height, 
          units   =  "cm", 
          res     =  res, 
          scaling =  scaling)
  culmen_scatterplot <- plot_culmen_figure(penguins_culmen)
  print(culmen_scatterplot)
  dev.off()
}


#Function for saving svg files
save_culmen_plot_svg <- function(penguins_culmen, filename, width, height, scaling){
  
  svglite(filename, width = width, height = height, scaling = scaling)
  culmen_scatterplot <- plot_culmen_figure(penguins_culmen)
  print(culmen_scatterplot)
  dev.off()
}

