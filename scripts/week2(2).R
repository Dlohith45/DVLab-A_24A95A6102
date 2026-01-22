library(ggplot2)
ggplot(ap_df,
       aes(x=year,y = passengers))+
  geom_line(color="darkgreen", linewidth = 0.5)+
  labs(
    title = 'Trend Analysis of Air passengers',
    subtitle = 'From 1949-1960',
    caption = 'using Built-in Air Passengers Dataset',
    x = 'months',
    y = 'No.of Passengers')+
  geom_point(color = 'red',size = 0.5)+
  geom_smooth(se = FALSE,color = 'orange')+
  theme_minimal()+
  theme(
    plot.title = element_text(face = "bold",size= 14),
    plot.subtitle = element_text(size = 10))


