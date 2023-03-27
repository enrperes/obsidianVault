### Which is the best team ever in Italian soccer?

1.  Import data by scraping [football-data.co.uk](http://www.football-data.co.uk/italym.php). Select only columns Date, HomeTeam, AwayTeam, FTHG, FTAG and filter rows with a valid (not NA) Date (use code below).
2.  using dplyr and tidyr packages (no for loops!), compute statistics for every team (matches, wins, loses, draws, points, points per match). Hint: mutate a column with the outcome of the match (for instance, H = home teams wins, A = away team wins, P = draw). Then group by team and outcome (home and away) and hence spread the outcome.
3.  Answer the following questions:
    -   Which teams played more matches?
    -   Which teams lead the points ranking?  
        
    -   Which teams lead the ranking by average number of points per match?

---

1. ## Scrape data

