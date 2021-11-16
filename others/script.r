# R study

## you can use the arrow to assign values to variables
#### Note that the arrow goes in the direction of the variable, like you're inserting the data inside;
x <- 1
#### Note also that it can be used bidirectionally, like in the following example
2 -> y
#### Example of an operation using two values
z = x + y
#### A simple print of the value inside the variable
print(z)


# Logical TRUE and FALSE
true  <- TRUE
false <- FALSE
print(true)
print(false)


# INTEGER
int <- 2L
print(int)
print(class(int))

# FLOAT - NUMERIC
float <- 2.4
print(float)
print(class(float))

# CHARACTER 'a' STRING
char <- "a"
print(char)
print(class(char))

# CREATE A VECTOR - c ( concatenation or combine )
apple <- c("red", "green", "yellow")
print(apple)
print(class(apple))

# CREATE  A LIST
list <- list(c(2,3,5), 21.3, sin, TRUE)
print(list)

# CREATE A MATRIX
print('----- Matrix ----')
matrix <- matrix(c(1,2,3,4,5,6,7,8), nrow=2, ncol=4)
print(matrix)
print(class(matrix))


# CREATE AN ARRAY
print('----- Array ----')
array <- array(c(1,2,3,4,5,6,7,8), dim=c(2,4))
print(array)

# DataFrames
print('----- DataFrame ----')
df <- data.frame(
    gender= c("Male", "Female", "None"),
    age= c(12, 34, 53),
    height= c(1.50, 2.00, 1.43)
)
print(df)
print('---- Separated values ----')
print(df$gender)
print(df$height)
print(df$age)
print('--------------------------')
# Manipulate each value inside the combination
print(df$age*2)
View(df)