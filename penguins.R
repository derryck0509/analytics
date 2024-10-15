penguins %>% 
  select(-species)

penguins %>% 
  rename (islands_new=island)

rename_with(penguins,toupper)
clean_names(penguins)

penguins %>% arrange(-bill_length_mm)
penguins %>% arrange(bill_length_mm)
penguins2 <- penguins %>% arrange(-bill_length_mm)

penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))
penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))
penguins %>% filter (species == "Adelie")
