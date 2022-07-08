# Inheritance

Inherit **commonly used** state and behavior of other classes.

```
public class Computer {
    bool isTurnedOn = false;

    public void turnOn() {
        isTurnedOn = true;
    }

    public void turnOff() {
        isTurnedOff = false;
    }
}

public class Laptop extends Computer {
    int battery = 0;

    public void charge(int value) {
        battery = battery + value;
    }

    public void use(int value) {
        battery = battery - value;
    }
}
```