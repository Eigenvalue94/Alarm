library(tidyverse)
library(beepr)

alarm <- function(alarm_time,alarm_min){
  nå_min <- format(Sys.time(),"%M") %>% as.numeric() %>%  print()
  
  nå_time <- format(Sys.time(),"%H") %>% as.numeric() %>%  print()
  
  tidsdifferanse = (alarm_time - nå_time) * 60 + alarm_min - nå_min 
  
  
  while (tidsdifferanse > 2) {
    Sys.sleep(60 * 1)
    
    nå_min <- format(Sys.time(),"%M") %>% as.numeric() %>%  print()
    
    nå_time <- format(Sys.time(),"%H") %>% as.numeric() %>%  print()
    
    tidsdifferanse = (alarm_time - nå_time) * 60 + alarm_min - nå_min 
    print(tidsdifferanse)
    
  }
  
  beep(8)
  
}
alarm(13,19)


 


