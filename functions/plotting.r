#Purpose of script: contains code for plotting penguin culmen depth against body mass in three penguin species. 

#Penguin culmen figure
plot_culmen_figure <- function(penguins_culmen){
  penguins_culmen %>%
    ggplot(aes(x= body_mass_g, y=culmen_depth_mm, colour = species, shape= species))+
    geom_point (alpha=0.4)+
    geom_smooth(method = 'lm', formula= y~x)+
    labs(x= "Body mass (g)", y= "Culmen depth (mm)", title = "A scatterplot to show how penguin culmen depth \nchanges according to body mass and penguin species")+
    theme_minimal()+
    scale_colour_manual(name = "Penguin Species", labels = c("Adelie Penguin", "Chinstrap Penguin", "Gentoo Penguin"), values= c("darkorange",  "#A91FB2", "#4E792A")) +
    scale_shape_discrete(name = "Penguin Species", labels = c("Adelie Penguin", "Chinstrap Penguin", "Gentoo Penguin"))+
    ylim(12.5, 22)+
    xlim (2700, 6500)+
    theme(axis.text= element_text(size=12), axis.title = element_text(size=13.5), plot.title= element_text(size=16), legend.text= element_text(size = 12), legend.title= element_text(size = 13))
}





