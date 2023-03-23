## Conditional and repetition

It includes **conditional statements**:

```R
x = 49
if (x %% 7 == 0) x else -x
```

And **loops**:

```R
x = 108
i = 2
while (i <= x/2) {
 if (x %% i == 0) print(i)
 i = i + 1;
}
```
**For loops**
```R
for (i in 2:(x/2)) {
  if (x %% i == 0) print(i)
}
```

### Kind of loops 

[...]

### Apply like functionals 
Applica una funzione ad ogni elemento di un array. 

>`lapply` returns a list of the same length as X, each element of which is the result of applying FUN to the corresponding element of X.

>`sapply` is a user-friendly version and wrapper of lapply by default returning a vector, matrix or, if simplify = "array", an array if appropriate, by applying simplify2array(). sapply(x, f, simplify = FALSE, USE.NAMES = FALSE) is the same as lapply(x, f).

>`vapply` is similar to sapply, but has a pre-specified type of return value, so it can be safer (and sometimes faster) to use.



```
# apply to a vector
sapply(1:100, function(x) {x^2})
# Eleva al quadrato ogni elemento del vettore
```

##### Play:
Write a function that, given a square matrix $A$ and an integer $n≥0$, computes the power $A^n$
 (use `diag` function to build the identity matrix).

>[!done]- Solution
> ![[squarematrixRsolution]]
> ok 

### Det 
`det` calculates the determinant of a matrix. determinant is a generic function that returns separately the modulus of the determinant, optionally on the logarithm scale, and the sign of the determinant.

[[R visualization]]

## Pipes

https://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/dplyr/dplyr.html#34

> Little bunny Foo Foo  
> Went hopping through the forest  
> Scooping up the field mice  
> And bopping them on the head

#### R translation: 
1. Too many variables: 
```R
foo_foo_1 <- hop(foo_foo, through = forest)
foo_foo_2 <- scoop(foo_foo_1, up = field_mice)
foo_foo_3 <- bop(foo_foo_2, on = head)
```
2. Debugging problems: 
```R
foo_foo <- hop(foo_foo, through = forest)
foo_foo <- scoop(foo_foo, up = field_mice)
foo_foo <- bop(foo_foo, on = head)
```
3. Hard to read:
```R 
bop(
  scoop(
    hop(foo_foo, through = forest),
    up = field_mice
  ), 
  on = head
)
```

4. Pipes! 
```R
foo_foo %>%
  hop(through = forest) %>%
  scoop(up = field_mouse) %>%
  bop(on = head)
```
 `%>%` operatore usato per concatenare. 
 Vantaggio grafico (più facile da leggere, eseguire solo alcune istruzioni) e di efficacia.

## Unary verbs

### Filter
`filter()` picks cases based on values: (picks rows)
```R
starwars %>% 
	filter(species = "Droid" , eye_color == "red") # Seleziona solo specie "Droid" e specie con occhi rossi
	filter(species = "Droid" | is.na(hair_color)) # Seleziona speice "Droid" o specie senza informazione su colore dei capelli
```

### Select
`select()` picks variables based on their names (filter on columns of data frame)
```R
starwars %>%
	select(name, gender, birth_year)
	select(name, ends_with("color"))
	select(-contains("color"))
	select(...) 
```
Resituisce un sotto tibble più piccolo 
`pull` restituisce un array [...]

If a table lacks a natural primary key (a set of attributes that identify observations), it’s sometimes useful to add one that simply contains the row number. This is called a **surrogate key**.

This is the case of flights table. Add an unique attribute id to the flights table.

Solution: 
```R
flights = 
  flights %>% 
  mutate(id = 1:nrow(flights)) %>%
  select(id, everything())

View(flights)
```
= Aggiunge una colonna "id" 

----

Add a catchup variable that contains the catch up time of the flight and select id and delays of flights that catched up during the flight
( = variabile che conta i minuti extra di volo)
Solution: 
```R
flights=
  flights %>% 
  mutate (catchup = dep_delay - arr_delay) %>%
  select(id, dep_delay, arr_delay, catchup) %>%
  filter(catchup > 0)

View (flights)
```

![[Pasted image 20230320113442.png|400]]

### Arrange
Verb `arrange()` changes the ordering of the rows
```R
starwars %>%
	arrange(mass) %>%
	select(name, mass, height)
```

The name and birth year of all human characters living in Tatooine sorted by birth year? 

```R
starwars %>%
	filter(species == "Human", homeworld == "Tatooine") %>%
	select (name, birth_year) %>%
	arrange(birth_year)
```

#### Es: 
The characters sorted in decreasing order of popularity (the popularity is the number of films starred by a characted) (use `sapply` function)

popularity = length di films. Funzione che va applicata ad **ogni elemento** del vettore films.
Solution: 
```R
starwars %>% 
  mutate(popularity = sapply(films, length)) %>%  # sapply: 
  arrange(desc(popularity)) %>% 
  select(name, popularity)
```

### group by and summarise 
-   verb `group_by()` partitions rows of data into groups defined by the values of some variables  
    
-   verb `summarise()` reduces multiple values down to a single summary

```R
starwars %>%
  group_by(species) %>%
  summarise(count = n()) %>% # crea colonna count con numero di elementi per ogni gruppo di species
  arrange(-count)
```

The number of characters with a given eye and hair color sorted in decreasing order: 
```R
count(starwars, hair_color, eye_color, sort=TRUE)
```
== 
```R
starwars %>% 
  group_by(hair_color, eye_color) %>% 
  summarise(n = n()) %>% 
  arrange(-n)
```
---

Number of flights per day: 
```R
group_by(flights, month, day) %>%
	summarise (count = n())
```
Busy days (flights > 1000):
```R
count(flights, month, day) %>%
	filter (n>1000)
```



## Binary verbs

To manipulate multiple tables at once. 
> First two arguments: tables. Output = new table. 

### Set operations
Get rows that are both in x and y tables (also union, diff...)
example: 
```R
df1 = tibble(x = c(1, 2), y=c("a", "b"))
df2 = tibble(x = c(1, 1), y=c("a", "b"))

setdiff(df1, df2) # --> 2  a
setdiff(df2, df1) # --> 1  b
```

### Joins ⚠
-   **mutating joins** ==add== new variables to one table from matching rows in another
    -   **inner join** includes observations that match in both tables
	    - ![[Pasted image 20230323105103.png|400]]
	    - `inner_join(x, y)`
    - **outer join** (left, right, full) includes also observations that do not match in one of the tables
    - Left Join
	    - ![[Pasted image 20230323105401.png|400]]
	- Right Join
	    - ![[Pasted image 20230323105413.png|400]]
	- **Full** Join
	    - ![[Pasted image 20230323105429.png|400]]
    
-   **filtering joins** ==filter== observations from one table from matching rows in another
    -   **semi-join** filter observations from one table based on whether they match an observation in the other table
		- keeps only first table with rows that match the second. Does not create a new table (=filtering join)
		- ![[Pasted image 20230323105442.png|400]]
    -   **anti-join** filter observations from one table based on whether they do not match an observation in the other table
		- Opposite of semi-join. Keeps only rows that are not in common between two tables. 
		- ![[Pasted image 20230323105451.png|400]]

---

## Data transformation with DPLYR : : cheat sheet 
https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-transformation.pdf