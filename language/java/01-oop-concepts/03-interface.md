# Interface

Groups of **related methods** with empty bodies.

```
interface Computer {
    public void charge(int value) {}

    public void use(int value) {}

    public void turnOn() {}

    public void turnOff() {}
}

public class Laptop implements Computer {
    int battery = 0;
    bool isTurnedOn = false;

    public void turnOn() {
        isTurnedOn = true;
    }

    public void turnOff() {
        isTurnedOff = false;
    }

    public void charge(int value) {
        battery = battery + value;
    }

    public void use(int value) {
        battery = battery - value;
    }
}
```