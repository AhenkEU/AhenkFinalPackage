#' Missing Numbers Function
#'
#' Imagine you have a bag full of numbered tiles from 1 to 100 and someone takes some of them out.
#' \cr All you have to do is send a list of numbers to the function as an argument.
#' \cr It prints the missing numbers to the console.
#'
#' @param list ListToBeTested   which is a list of integers
#'
#'
#' @examples Set an example list to test.
#'  p1<-c(1:45)
#'  p2<-c(47:82)
#'  p3<-c(90:98)
#'  GivenList<-c(p1,p2,p3)
#'
#'  missingNOs(GivenList)
#'
#'  46
#'  83
#'  84
#'  85
#'  86
#'  87
#'  88
#'  89
#'  99
#'
#'
#'
#'
#'
#' @export
#' missingNOs



# Defining the function. This function can find  any number of tiles removed from the bag.
# It creates an example full list with 100 tiles to compare.
# As it iterates over the full list one by one, it checks whether the test list also have the
# same number. If it finds a number in full list but can't find in example list, then it prints the number, iterates
# and checks the next number in the full list with the same number in the test list. Because when you have for ex. ..19,20,21.. in the
# full list but ...19,21... in the test list,  when you see 20 is missing in the test list, after you print it
# you have to go to the next element(21) in full list and check if 21 is present in the test list.
# If it can find the number in full list and the test list, then it iterates to check the next elements(numbers) in both of the lists.

missingNOs<-function(ListToBeTested){

  FullList<-c(1:100)
  j<-1
  for(i in 1:100){
    if((FullList[i]!=ListToBeTested[j]) || is.na(ListToBeTested[j]) ){
      x<-FullList[i]
     print(x)


    } else{
      j<-j+1
    }

  }

}

