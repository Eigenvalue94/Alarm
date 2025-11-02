library(beepr)

alarm <- function(mins){
  Sys.sleep(mins * 60 / 4)
  print(paste0( 3 * mins / 4, " minutter igjen"))
  Sys.sleep(mins * 60 / 4)
  print(paste0(mins / 2, " minutter igjen"))
  Sys.sleep(mins * 60 / 4)
  print(paste0(mins / 4, " minutter igjen"))
  Sys.sleep(mins * 60 / 4)
  
  beep(8)
  
}

alarm(1)

