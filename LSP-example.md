```java
class Shape {
    public void draw() {
        System.out.println("Drawing a shape");
    }
}

class Circle extends Shape {
    @Override
    public void draw() {
        System.out.println("Drawing a circle");
    }
}

class Square extends Shape {
    @Override
    public void draw() {
        System.out.println("Drawing a square");
    }
}

public class DrawingApp {
    public void drawShape(Shape shapeToDraw) {
        shapeToDraw.draw();
    }

    public static void main(String[] args) {
        DrawingApp drawingApp = new DrawingApp();

        // Using Liskov Substitution Principle
        Shape circle = new Circle();
        Shape square = new Square();

        drawingApp.drawShape(circle); // Outputs: Drawing a circle
        drawingApp.drawShape(square); // Outputs: Drawing a square
    }
}
```

`Shape`: base class, with method `draw()`. `Circle` and `Square` are sub-classes of `Shape` and override the `draw()` method. 

In the `DrawingApp` class we use objects of the `Shape` type: we can replace instances of the base class with instances (or subclasses) without affecting the behavior of the program. 

This is because the `drawShape` method expects a parameter of type `Shape`, and both `Circle` and `Square` are subclasses of `Shape`.

