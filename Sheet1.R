Book1 %>% 
  filter(town == "ANG MO KIO") %>% 
  ggplot(aes(x = remaining_lease, y = resale_price)) +
  geom_point() +
  facet_wrap(facets = vars(flat_type)) + 
  labs(title = "Resale prices plotted against remaining lease tenure", subtitle = "For HDBs in Ang Mo Kio")
