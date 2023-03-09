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
