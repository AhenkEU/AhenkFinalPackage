#' Is Perm Palindrome Function
#'
#' This function is used to check whether the chars in a given string is permutation of a palindrome, or not.
#' \cr You have to give the string as an argument to the function, shown as "StringToBeTested" below.
#' \cr If the string is a permutation of a character palindrome, it prints "The string is a palindrome" to the console.
#' \cr If the string is NOT a permutation of a character palindrome, it prints"The string is not a palindrome" to the screen.
#' \cr
#' \cr Caution: The function is case sensitive.
#
#'
#' @param  StringToBeTested A String
#'
#' @return boolean true / false
#'
#' @examples ExampleString <- "kayak"
#' isPermPalindrome(ExampleString)
#'
#' > "The string is a permutation of palindrome"
#'    Return T
#'  ------------------------------------
#'
#'  ExampleString2 <- "yakak"
#' isPermPalindrome(ExampleString2)
#'
#' > "The string is a permutation of palindrome"
#'    Return T
#' ------------------------------------
#'
#'  ExampleString3 <- "KAyak"
#' isPermPalindrome(ExampleString3)
#'
#' > "The string is not a permutation of palindrome"
#'   Return F
#'
#' @export
#' isPermPalindrome

isPermPalindrome<-function(StringToBeTested){

  CharByChar<-unlist(strsplit(StringToBeTested, ""))
  LetterCounts<-as.data.frame(table(CharByChar))
  let<-0


  for(i in 1:nrow(LetterCounts)){
    if((LetterCounts[i,2]%%2)==1){
      let<-let+1
    }
  }

  # This part checks the letter count which have odd number of frequency and decides the outcome.
  if (let>1){

    x<-"The string is not a permutation of palindrome"
    return (F)
  } else{
    x<- "The string is a permutation of palindrome"
    return (T)
  }
  (x)
}
