Book1 %>% 
  filter(town == 'JURONG EAST', flat_type == "4 ROOM") %>% 
  ggplot(aes(x = remaining_lease, y = resale_price)) +
  geom_point() +
  geom_smooth(method= lm, se = FALSE)+
  labs(title = "Relationship between resale prices and lease tenure for 4 Room HDBs", subtitle = 'Estate: Jurong East')


