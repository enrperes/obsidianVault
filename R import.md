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