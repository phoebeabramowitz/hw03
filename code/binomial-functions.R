## Title: Binomial Functions
## Description: Write functions that ultimately allow us to compute 
##   Binomial Probabilities
## Inputs: none
## Outputs: none
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

#' @title is_probability(x)
#' @description determines if x is a valid probability
#' @param x number
#' @return boolean

is_probability <- function(x){
  if(x<=1 & x>=0){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
} 



#' @title bin_factorial(x)
#' @description calculates factorial
#' @param x nonnegative integer
#' @return number

bin_factorial <- function(x){
  fact=1
  i=x
  while(i>0){
    fact <- fact*i
    i <- i-1
  }
  return(fact)
} 

#' @title bin_combinations
#' @description calculates the number of combos in which k successes can occur in n trials
#' @param n,k nonnegative integer
#' @return number

bin_combinations <- function(n,k){
  return(bin_factorial(n)/(bin_factorial(n-k)*bin_factorial(k)))
} 

bin_probability <- function(n,k,p){
  q <- 1-p
  if (is_probability(p)&is_positive_integer(n)&is_nonneg_integer(k)){
    return( bin_combinations(n,k)*(p^k)*q^(n-k))
  }
  else{
    print("error:invalid input(s)")
  }
  
} 

bin_distribution <- function(trials, prob=0.5){
  success <- seq(0,trials)
  probability <- rep(0,trials)
  for (i in 0:trials){
    probability[i+1] <- bin_probability(trials,i,prob)
  }
  return(data.frame(success,probability))
}




