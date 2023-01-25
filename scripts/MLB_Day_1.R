# Always load your libraries at the top of your script
library(tidyverse)

# Load the data (into a variable!)
mlb <- read_csv("data/mlb.csv")

# Practice some of the basic tidyverse functions: select(), filter(), arrange(), group_by(), summarise()
# The "pipe" character ( %>% ) takes your data frame, or the result of a function, 
# and pipes it into the next function

mlb %>% select(player, salary) %>% arrange(desc(salary))

mlb %>% filter(team=="Baltimore Orioles") %>% arrange(desc(salary))

# The group_by() and summarise() functions often go together. The first creates groups in your data, 
# the second acts on those groups.
# You can also add returns (new lines) after pipe characters to make your code more readable

mlb %>% 
  group_by(team) %>% 
  summarise(avg_sal = mean(salary)) %>% 
  arrange(desc(avg_sal))


