## Title: Binomial Functions
## Description:
## Inputs
## Outputs:
##===========================================

#' @title is_integer(x)
#' @description tests if a numeric number can be considered to be an integer value
#' @param x number
#' @return boolean

is_integer <- function(x){
  if(x%%1==0){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
} 

#' @title is_positive(x)
#' @description tests if a numeric number is a positive number
#' @param x number
#' @return boolean

is_positive <- function(x){
  if(x>0){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
} 

#' @title is_positive(x)
#' @description tests if a numeric number is a positive number
#' @param x number
#' @return boolean

is_nonnegative <- function(x){
  if(x>=0){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
} 

#' @title is_positive_integer(x)
#' @description uses is_positive and is_integer to test if a numeric number is a positive integer
#' @param x number
#' @return boolean

is_positive_integer <- function(x){
  if(is_integer(x) & is_positive(x)){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
} 


#' @title is_nonneg_integer(x)
#' @description uses is_nonnegative and is_integer to test if a numeric number is a nonnegative integer
#' @param x number
#' @return boolean

is_nonneg_integer <- function(x){
  if(is_integer(x) & is_nonnegative(x)){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
} 