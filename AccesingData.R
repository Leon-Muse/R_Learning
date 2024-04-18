#numeric

n1 <- 15
n1
typeof(n1)

#character

c1 <- "c"
c1
typeof(c1)

#Logical

11 <- FALSE
11
typeof(11)



#DATA STRUCTURES

v1 <- c(1,2,3,4,5)
v1
is.vector(v1)

#Matrix

m1 <- matrix(c(T,T,F,F,T,F), nrow = 2)
m1

m2 <- matrix(c(T,F,T,F,T,T), 
             nrow = 2,
             byrow = T)
m2


#ARRAY

a1 <- array(c(1,24), c(4,3,2))
a1



#DIFFERNT TYPE VECTORS
vNumeric <- c(1,2,3)
vCharacter <- c("a","b", "c")
vLogical <- c(T,F,T)

dfa <- cbind (vNumeric,vCharacter,vLogical)
dfa