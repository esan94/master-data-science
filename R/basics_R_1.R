# To make arrays
numeros <- 1:15
random_num <- sample(numeros, 1)


# if (cond) {
#    do something
# } else {
#    do another thing
# }

# Structures if, else, for, while, repeat, break, next, return
if (random_num <= 10) {
  + print(paste(random_num, 'es menor o igual que 10'))
  + } else {
    + print(paste(random_num, 'es mayor que 10'))
    + }

# Same expression can used by the function ifelse()
ifelse(random_num <= 10, paste(random_num, 'es menor o igual que 10'), 
       paste(random_num, 'es mayor que 10'))


if (random_num >= 10) {
  print(paste(random_num, "es mayor o igual que 10"))
} else if (random_num >= 5) {
  print(paste(random_num, "es mayor o igual que 5"))
} else {
  print(paste(random_num, "es menor que 5"))
}

# AND/OR
random_num > 5 & random_num < 10
random_num > 5 | random_num < 10

# Loop for
for (index in numeros){
  print(index**index)
}

# Create a vector
calendar <- seq(2000, 2018 , by = 1)

for (year in calendar){
  print(paste("El año es", year))
}
actualYear <- as.numeric(format(Sys.Date(),'%Y'))

#install.packages('lubridate')
library(lubridate)
actualDateTwo <- year(Sys.Date())
for (anno in calendar){
  ifelse(anno == actualDateTwo, print(paste("El año es", anno)), print(anno))
}

lapply(calendar, print)
lapply(calendar, function(anno) ifelse(anno == actualDateTwo, print(paste("El año es", anno)), print(anno)))

lookForActualYear <- function(year) {
  resultado <- if(year == actualYear) {
    resultado_2 <- paste(year, "es el año actual")
  } else {
    resultado_2 <- paste(year, "no es el año actual")
  }
  return(resultado)
}

lookForActualYear(2000)
lookForActualYear(2018)

sapply(calendar, lookForActualYear)

isBisiesto <- function(year) {
  resT <- if ((year%%4 == 0) & (year%%100 != 0)) {
    res <- year
  } else if ((year%%4 == 0) & (year%%100 == 0) & (year%%400 == 0)) {
    res <- year
  }
  return(resT)
  }
  