multiby234<-function(x){
  return (x*234)
}

print(multiby234(311))


add2values<-function(a,b){
  return(a+b)
  
}

print(add2values(3256,8934))

f <- function(number) {
  return(number %% 2 == 0)
}

print(f(30))




################################################################################
# plot function
create_scatterplot <- function(data, selected_species, selected_island) {
  # Filter the data for the specified species and island
  filtered_data <- data %>%
    na.omit() %>%
    filter(species == selected_species, island == selected_island)
  
  # Create the scatterplot
  plot <- ggplot(
    filtered_data,
    aes(x = bill_length_mm, y = bill_depth_mm, color = species, shape = species)
  ) +
    geom_point() +
    labs(
      x = "Bill Length (mm)",
      y = "Bill Depth (mm)",
      title = paste("Penguin Bill Dimensions -", selected_species, "-", selected_island)
    )
  
  return(plot)
}

# Use the function
create_scatterplot(data, "Adelie", "Torgersen")
################################################################################