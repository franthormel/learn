# Java - Quickstart

This guide is taken from the [The Java™ Tutorials ](https://docs.oracle.com/javase/tutorial/java/)

### 1. Class
```
public class Computer {
    bool power = false;

    public void togglePower() {
        power = !power;
    }
}
```

**Methods**
```
private void draw();
public void draw(int x, int y) { ... }
protected void draw(int... points) { ... }
```

**Nested**
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

// Method definition in a lambda expression
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

**Enums**
```
public enum Gender {
    Male, Female
}

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
```
class Tool {
    ...
    void discard() { ... }
}

class MeasuringTool extends Tool {
    ...
    @Override
    void discard()  { ... }
}
```

**Casting**
```
class Rock { ... }
class IgneousRock extends Rock { ... }

// Implicit - compile-time
Object rockObject = new Rock();

// Won't work during compile
IgneousRock igneousRock = rockObject;

// Explicit - run-time
IgneousRock igneousRock = (IgneousRock)rockObject;
```

**Multiple inheritance**
```
class Building { ... }
class Home { ... }

// Won't work during compile
class House extends Building, Home { ... }

interface Facility { ... }
interface HealthRelated { ... }

// Will work
class Hospital extends Building implements Facility, HealthRelated { ... }
```

**Overriding and hiding methods**

```
class Material { ... }
class Textile extends Material { ... }

class Tool {
    double mass;
    
    Tool(double mass) {
        this.mass = mass;
    }

    Material use() { ... }
    void discard() { ... }
}

class MeasuringTool extends Tool {
    double length;

    MeasuringTool(double mass, double length) {
        super(mass);
        this.length = length;
    }

    void measure() {
        double output = super.mass * 10;

        super.use();
        ...
    }

    // Covariant return type
    @Override
    Textile use() { ... }


    // Hidden
    static void discard()  { ... }
}
```

**Interface methods**
```
class Weather {
    String describe() { ... }
}

interface Hot {
    default String describe() { ... }
}

interface Humid {
    default String describe() { ... }
}

class TropicalWeather extends Weather implements Hot, Humid { ... }

TropicalWeather tropicalWeather = new TropicalWeather();
tropicalWeather.describe(); // Weather.describe();
```
```
interface Layer {
    default String describe() { ... }
}

interface MiddleLayer extends Layer {
    default String describe() { ... }
}

interface OzoneLayer extends Layer { }

class Stratosphere implements MiddleLayer, OzoneLayer { }

Stratosphere stratosphere = new Stratosphere();
stratosphere.describe() // MiddleLayer.describe();
```
```
interface ArmouredVehicle {
    default int operate() { ... }
}

interface HeavyVehicle {
    default int operate() { ... }
}

class Tank implements ArmouredVehicle, HeavyVehicle {
    int operate() {
        ArmouredVehicle.super.operate();
        HeavyVehicle.super.operate();
    }
}
```

**Polymorphism**

```
class Matter { ... }
class Solid extends Matter { ... }
class Liquid extends Matter { ... }
class Gas extends Matter { ... }
class Plasma extends Matter { ... }

Matter matter, solid, liquid, gas, plasma;

matter = new Matter();
solid = new Solid();
liquid = new Liquid();
gas = new Gas();
plasma = new Plasma();
```

**Final classes and methods**
```
class ElectricalDevice {
    ...
    ElectricalDevice() {
        startup();
    }

    final void startup() { ... }

    final void shutdown() { ... }
}

final class SolarDevice extends ElectricalDevice{ ... }
```

**Abstract classes and methods**

```
abstract class Theory { }
abstract void theorize();

abstract class Speculation {
    abstract void speculate();
}

abstract class WildSpeculation extends Speculation { }

class GuidedSpeculation extends Speculation {
    void speculate() { ... }
}
```

**Abstract classes vs Interfaces**

| Type      | `abstract` class                     | `interface`             |
| --------- | ------------------------------------ | ----------------------- |
| Fields    | Can be non-static and final          | Always static and final |
| Methods   | Can be public, protected, or private | Always public           |
| Extension | Extends only one (1)                 | Multiple                |


### 3. Interfaces
```
interface LiquidContainer {
    void empty();
    void fill();
}

public class WaterBottle implements LiquidContainer { 
    void empty() { ... }
    void fill() { ... }
}
```

**Interface as a Type**

```
interface Consumer {
    void consume(Consumer other);
}

class Unit implements Consumer {
    ...
    void consume(Consumer other) {
        Unit otherUnit = (Unit)other;
        ...
    }
}

class Cell implements Consumer {
    ...
    void consume(Consumer other) {
        Cell otherCell = (Cell)other;
        ...
    }
}

static void main() {
    Unit unit = new Unit();
    Cell cell = new Cell();

    unit.consume(cell);
    cell.consume(unit);
}
```


**Default and static methods**
```
interface Producer {
    ...
    static int transform() { ... }

    default int produce() { ... }
}
```

**Extending default methods**
```
// Existing definition
interface AgriProducer extends Producer { }

// Becomes abstract
interface CommsProducer extends Producer { 
    ...
    int produce();
}

// New definition
interface FishProducer extends Producer {
    ...
    default int produce() { ... }
}
```

### 4. Package
```
package operators;

class Operator { ... }
class MedicalOperator extends Operator { ... }
```

### 5. Variables
```
int decimal = 26;
int hexadecimal = 0x1A;
int binary = 0b11010;

double d = 123.4;
double dSquared = 123.4e2;
float f = 123.4f;

static void main(String[] args) {
    String output = "Good morning!";
}
```

**Separating long numbers**

```
long phoneNumber = 1234_5678_9123_4567;
float pi = 3.14_15F;
long maximum = 0xFF_FFFF_FFFF_FFFF;
long nybbles = 0b0010_0101;
long bytes = 0b11010010_01101001_10010100_10010010;
```


### 6. Arrays
```
int[] numbers = { 1, 3, 5, 7, 9 };

String[][] jobTitles = {
    {"Chemical", "Mechanical", "Civil"},
    {"Engineering", "Concepts"}
}
```

### 7. Annotations
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

**Repeating annotations**
```
import java.lang.annotation.Repeatable;

@Repeatable() {
    String type() default "low";
    String message() default "None";
}

public @interface Alerts {
    Alert[] value();
}

@Alert(type="high", message="Intruder detected");
@Alert(type="medium", message="Unauthorized access attempted");
@Alert(message="Unidentified element sighted");
public class GeneralAlert { ... }
```

### 8. Numbers and Strings
```
int apples = 10;

System.out.format("I have %d apples.", i);
```
**Formatting print output**
```
DecimalFormat formatter = new DecimalFormat(pattern);
String output = formatter.format(input);

| Input      | Pattern      | Output      |
| ---------- | ------------ | ----------- |
| 123456.789 | ###,###.###  | 123,456.789 |
| 123456.789 | ###.##       | 123456.79   |
| 123.78     | 000000.000   | 000123.780  |
| 12345.67   | $###,###.### | $12,345.67  |
```

**Strings**
```
char a = 'a';
char b = '\u0392';
char[] text =  { 'a', 'p', 'p', 'l', 'e', 's' };

String apples = new String(text);
String oranges  = "oranges";
```