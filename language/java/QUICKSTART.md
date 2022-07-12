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

Use when access to enclosing class is needed.

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

Use when multiple instances are required.

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

Can access members of enclosing class.

Can access local variables that are final or *effectively* final.

```
public class TransportManagement {
    interface Conductor {
        ...
    }

    public void conductOperators() {
        class BusConductor implements Conductor { ... }
        class TrainConductor implements Conductor { ... }
        class TramConductor implementes Conductor { ... }

        BusConductor busConductor = new BusConductor();
        TrainCondcutor trainConductor = new TrainConductor();
        TramConductor tramConductor = new TramConductor();
    }
}
```

**Lambda expressions**

Express single-method classes effectively.

Treat functionality as a method argument or code as data.

Encapsulates a unit of behaviour.

A simple instance of a functional interface.

Use when anonymous classes seem excessive.

Can only be used when the compiler can determine the target type (expected method's data type).

```
() -> ;
() -> { };
param -> param.condition;
param -> param.condition() && param.test();
param -> {
    return param.condition() && param.test();
}
param -> param.print(data);
```

**Method references**

```
public class Wattage {
    int watts;

    public int compare(Wattage other) {
        return other.watts - watts;
    }

    public static int compareWattages(Wattage a, Wattage b) {
        return b.watts - a.watts;
    }
}

// Method definition using a lambda expression
Arrays.sort(
    wattages,
    (Wattage a, Wattage b) -> {
        return b.watts - a.watts;
    },
);

// Method invocation in a lambda expression
Arrays.sort(
    wattages,
    (a, b) -> a.compare(b),
)

// Method reference
Arrays.sort(wattages, Wattage::compareWattages);
Arrays.sort(wattages, a::compare);
```

- Static methods `Wattage::compareWattages`
- Instance methods of a particular object `a::compare`
- Instance methods of an arbitrary object of a particular type `String::concat`
- Constructors `Wattage::new`

**Enums**

Use for predefined constant values.

`access_modifier enum_name { enum_values }`

```
public enum Direction{
    NORTH (0),
    EAST (90),
    SOUTH (180),
    WEST (270),

    private final double degrees;

    Direction(double degrees) {
        this.degrees = degrees;
    }
}

Direction current = NORTH;

for(Direction d : Direction.values()) { ... }
```

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

### 7. Annotations

Metadata about a program that is not part of the program itself.

Used for:
- Compiler information: detect errors or warning suppression.
- compile-time and deployment-time processing: code auto-generation
- run-time processing: examination

```
@interface Record {
    String name();
    int version() default 1;
    String[] categories();
}

@Record {
    name = "LiquidationReport"
    version = 2,
    categories = ["financial","management"]
}
class DataRecord() { ... }
```

**Predefined**

- @Deprecated 
- @Override
- @SuppressWarnings
- @SafeVarargs
- @FunctionalInterface
- @Retention
- @Documented
- @Target
- @Inherited
- @Repeatable

For more definitions, see [this](https://docs.oracle.com/javase/tutorial/java/annotations/predefined.html).

**Type annotations**

Annotations can be used for checking *data types* and other things like null values.

You can create your own or use others like the [Checker](https://checkerframework.org/) framework.

**Repeating annotations**

Multiple annotations can be used on the same element usually for different scenarios.

```
import java.lang.annotation.Repeatable;

// 1. Define repeatable annotation
@Repeatable() {
    String type() default "low";
    String message() default "None";
}

// 2. Declare container for repeatable
public @interface Alerts {
    Alert[] value();
}


@Alert(type="high", message="Intruder detected");
@Alert(type="medium", message="Unauthorized access attempted");
@Alert(message="Unidentified element sighted");
public class GeneralAlert { ... }
```