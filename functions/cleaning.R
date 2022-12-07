

#A function to clean column names, remove empty rows and columns, remove certain columns
cleaning <- function(data_raw){
  data_raw %>%
    clean_names()%>%
    remove_empty(c("rows", "cols")) %>%
    select(-starts_with("delta")) %>%
    select(-comments)
}



#A function to subset the bill depth data and remove missing data
remove_empty_culmen_depth <- function(data_clean){
  data_clean %>%
    filter(!is.na(culmen_depth_mm)) %>%
    filter(!is.na(body_mass_g)) %>%
    filter(!is.na(species)) %>%
    select(culmen_depth_mm, body_mass_g, species)
  
}


