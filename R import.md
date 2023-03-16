```R
library(reader)
 heights = read_csv("http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/import/heights.csv")
 heights
```

`read_csv()` uses the first line of the data (the header) for the column names, which is a very common convention. There are cases where you might want to tweak this behaviour:

```R
# skip lines
read_csv("The first line of metadata
          The second line of metadata
          x,y,z
          1,2,3", 
        skip = 2) 
```

#### Add col names in import 
```R
read_csv("1,2,3\n4,5,6", col_names = c("x", "y", "z"))
```

#### You can specify which data to interpret as NA values as follows:

```R
# NA as NA
read_csv("a,b,c\n1,NA,.")
```

#### Writing data back in CSV
```R
write_csv(heights, "heights.csv")
```
However the type information of columns is lost when you save to CSV. This makes CSVs a little unreliable for caching interim results. One alternative is using **RDS** format (R’s custom binary format):
```R
write_rds(heights, "heights.rds")
read_rds("heights.rds")
```

### Read Complex Data 
#### `scan`  function to extract data from webpage
by default, `sep` expects white spaces. 

```R
# Read the dataset with function scan
world_series <- scan("http://lib.stat.cmu.edu/datasets/wseries",
                     skip = 35, # - Skip the first 35 lines
                     nlines = 23, # - Then read 23 lines of data
                     what = list(year = integer(0), pattern = character(0))) # - The data occurs in pairs: a year (numeric) and a pattern (character)
# crea un array con gli anni e uno con le stringhe di W/L/w/l

# find a sorting permutation of sorted years (use function order)
perm <- order(world_series$year)

# using the sorting permutation make a data frame with sorted information about years and patterns
world_series <- data.frame(year = world_series$year[perm], pattern = world_series$pattern[perm])
```