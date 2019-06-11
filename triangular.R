isTriangular <- function(y){
  n <- (sqrt((8*y)+1)-1) / 2
  if(as.integer(n) == n){
    return(TRUE)
  }
  return(FALSE)
}
#test change
