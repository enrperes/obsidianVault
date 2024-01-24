---
aliases:
  - Dependency inversion principle
  - SOLID
---
#### Traditional approach: 
```java
// High-level module
class ReportGenerator { // high level module with dependency on DatabaseConnector 
    private final DatabaseConnector databaseConnector;

    public ReportGenerator(DatabaseConnector databaseConnector) {
        this.databaseConnector = databaseConnector;
    }

    public void generateReport() {
        String data = databaseConnector.fetchData();
        // Logic to generate report using the fetched data
        System.out.println("Generated report: " + data);
    }
}

// Low-level module
class DatabaseConnector {
    public String fetchData() {
        // Logic to fetch data from the database
        return "Data from the database";
    }
}
```
The high level module (`ReportGenerator`) depends on a lower level module

####  Dependency Inversion 
```java
// Abstraction
interface DataFetcher {
    String fetchData();
}

// High-level module depends on abstraction (DataFetcher)
class ReportGenerator {
    private final DataFetcher dataFetcher;

    public ReportGenerator(DataFetcher dataFetcher) {
        this.dataFetcher = dataFetcher;
    }

    public void generateReport() {
        String data = dataFetcher.fetchData();
        // Logic to generate report using the fetched data
        System.out.println("Generated report: " + data);
    }
}

// Low-level module implements abstraction (DataFetcher)
class DatabaseConnector implements DataFetcher {
    public String fetchData() {
        // Logic to fetch data from the database
        return "Data from the database";
    }
}
```
Here the abstraction (`DataFetcher`) has a method; serves as an abstraction that high level modules can depend on without knowing the implementation details. 
`ReportGenerator` is the high level module which depends on the abstraction. 
`DatabaseConnector` is the low level module that implements the abstraction. 

by introducing the abstraction, the code decouples the high level module from the specifics of the low level module. So we can easily replace `DatabaseConnector` with a different class that implements `DataFetcher` without needing to modify `ReportGenerator`. 

> [!done]  **Advantages** 
 > Flexibility
 > Maintainability
 > Testability
 > G00d object oriented design   