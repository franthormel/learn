# Java - Quickstart

This guide is taken from the [The Java™ Tutorials ](https://docs.oracle.com/javase/tutorial/java/)

### 1. Class

A class is a *blueprint* of an object.

```
public class Computer {
    bool power = false;

    public void togglePower() {
        power = !power;
    }
}

```
| Modifier    | Class | Package | Subclass | World |
| ----------- | :---: | :-----: | :------: | :---: |
| public      |   Y   |    Y    |    Y     |   Y   |
| protected   |   Y   |    Y    |    Y     |   N   |
| no modifier |   Y   |    Y    |    N     |   N   |
| private     |   Y   |    N    |    N     |   N   |

**Method**

`access_modifier return_type method_name(method_parameters) {}` 

```
public void draw();
public void draw(int x, int y);
public void draw(Point... points);
```

Parameter can be passed by value (primitive data types) or reference (objects and arrays).


**Nested**

- Logical grouping
- Encapsulation
- Readability and maintainability

```
class WashingMachine {
    class LaundryLoad {
        ...
    }   

    static class ModelInfo {
        ...
    }
}
```

**Local**

Defined in a *block* and are usually found in a method's body.

```
public class ContactBook {
    ...
    public static void validateContactBook() {
        ...
        class ContactValidator {
            ...
        }
        ...
    }
}
```

**Anonymous**

Unnamed local classes.

Declare and instantiate a class simultaneously.

Only use when a local class is needed once.

```
public class TransportManagement {
    interface Conductor {
        ...
    }

    public void conductOperators() {
        class BusConductor implements Conductor {
            ...
        }
        class TrainConductor implements Conductor {
            ...
        }
        class TramConductor implementes Conductor {
            ...
        }

        BusConductor busConductor = new BusConductor();
        TrainCondcutor trainConductor = new TrainConductor();
        TramConductor tramConductor = new TramConductor();
    }
}
```

**Lambda expressions**

Express single-method classes effectively.

Treat functionality as a method argument or code as data.

Use when anonymous classes seem excessive.

// TODO

### 2. Inheritance

Inherit *commonly used* state and behavior of other classes.

```
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



### 3. Interface

Groups of *related methods* with empty bodies.

```
interface ComputingDevice {
    public void togglePower() {}
}

public class Desktop implements ComputingDevice {
    bool power = false;

    public void togglePower() {
        power = !power;
    }
}
```



### 4. Package

A namespace that *organizes* a set of related classes and interfaces. 

A collection of packages could be called a library.


### 5. Variables

Used to store values.

Fields are members of a class.

All data types are assigned by the compiler with default values that is either or resembling zero (0) *except* for an object which is null and boolean which is false.

**Types**

```
- Instance `int speed = 0;`
- Static `static final int MAX_SPEED = 100;`
- Local `int count = 0;`
- Parameters `main(String[] args)`


| Data type | Length          |
| --------- | --------------- |
| byte      | 8-bits          |
| short     | 16-bits         |
| int       | 32-bits         |
| long      | 64-bits         |
| float     | 32-bit IEEE 754 |
| double    | 64-bit IEEE 754 |
```

**Literals**
```
int decimal = 26;
int hexadecimal = 0x1A;
int binary = 0b11010;

double d = 123.4;
double dSquared = 123.4e2;
float f = 123.4f;
```

**Separating long numbers**

Underscores can be used in Java SE 7 and later.

```
long phoneNumber = 1234_5678_9123_4567;
float pi = 3.14_15F;
long maximum = 0xFF_FFFF_FFFF_FFFF;
long nybbles = 0b0010_0101;
long bytes = 0b11010010_01101001_10010100_10010010;
```


### 6. Arrays

A **container** holding a fixed number of values of a single type.

Numbering begins at zero (0).

```
String[][] jobTitles = {
    {"Chemical", "Mechanical", "Civil"},
    {"Engineering", "Concepts"}
}
```