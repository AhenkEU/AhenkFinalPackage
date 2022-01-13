#' Is All Unique Function
#'
#' This function is used to check whether all the chars in a given string is all unique or not.
#' \cr You have to give the string as an argument to the function, shown as "OurString" below.
#' \cr If the chars are all unique, it prints "All unique" to the console.
#' \cr If the chars are not all unique, it prints "Duplicates Found." to the screen.
#' \cr
#' \cr Caution: The function is case sensitive.
#'
#' @param  OurString A String
#'
#' @examples ExampleString<-"AaBCD"
#'
#' isAllUnique(ExampleString)
#'
#'  > "All unique"
#'
#'  ------------------------------------
#'
#' ExampleString2<-"ABA"
#'
#' isAllUnique(ExampleString2)
#'
#' > "Duplicates Found."
#'
#' @export
#' isAllUnique

isAllUnique <- function(OurString){



  # We unlist it to make the string turn into char by char and
  # we take the length of the chars to see how many characters are in the given string.
  S<-unlist(strsplit(OurString, ""))
  SLength<-length(unlist(strsplit(OurString, "")))


  # Function to check for duplicates
  # It starts to check forwards and backwards and tries to find if there is a char which occurs more than once.
  CheckDup<-function(string,s_length){

    for (i in s_length) {
      for(j in (s_length-1):1){
        if (string[i]==string[j]){
          return (T)
        }
      }
    }

    return (F)
  }

  # This part f for printing the results. If the function returned T, then duplicates are found. Else, they are all unique.
  if (CheckDup(S, SLength)){
    x<- "Duplicates Found."
  } else{

    x<-"All unique"
  }
  x
}
