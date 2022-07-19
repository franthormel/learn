# Java - Quickstart

This guide is taken from:
- [The Java™ Tutorials: Learning the Java Language](https://docs.oracle.com/javase/tutorial/java/)
- [The Java™ Tutorials: Essential Java Classes](https://docs.oracle.com/javase/tutorial/essential/)

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

**Naming conventions**

```
package com.example.class;
package com.example.worker_utils;
```

**Using packages**
```
java.util.List list;
```

```
package name;

import java.util.List;

List list;
```

```
package name

import java.util.*;

List list;
Observer observer;
Formattable formattable;
```

**Hierarchy**

```
// Only within that package
import java.awt;

// All packages
import java.awt.*;
import java.awt.color.*;
```

**Ambiguity**

```
import com.graphics

Graphics graphics;

// From another package with the same name
digital.Graphics digitalGraphics;
```

**Static imports**

```
// Without static imports
Math.PI;
Math.abs(alpha);
Math.cos(beta, omega);

// With static imports
import static java.lang.Math.*;

PI;
abs(alpha);
cos(beta, omega);
```

**Managing source and class files**

```
// Filename:    CustomObjects.java
// Directory:   custom
// Path:        ../custom/CustomObjects.java

package custom;

class CustomObjects { ... }
```

```
// Filename:    CustomObjects.java
// Directory:   custom
// Path:        ../com/domain/custom/CustomObjects.java

package com.domain.custom;

class CustomObjects { ... }
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

### 9. Generics

|       | Formal parameter | Type parameter |
| ----- | ---------------- | -------------- |
| Input | Values           | Types          |

```
List<Integer> numbers = new ArrayList<Integer>();
List<String> paragraph = new LinkedList<String>();
```

**Generic Types**

`class_name<T1, T2, ..., Tn> { ... }` and `<T>`.

```
class Energy {
    private Object object;

    Energy(Object object) {
        this.object = object;
    }

    public Object get() { 
        return object;
    }

    public void set(Object object) {
        this.object = object;
    }
}

class Energy<T> {
    private T value;

    Energy(T value) {
        this.value = value;
    }

    public T get() {
        return value;
    }

    public void set(T value) {
        this.value = value;
    }
}
```

**Naming conventions**

| Type Name     | Description      |
| ------------- | ---------------- |
| E             | Element          |
| K             | Key              |
| N             | Number           |
| T             | Type             |
| V             | Value            |
| S, U, V , ... | Succeeding types |

**Invoking and instantiating**

```
Energy<Integer> lessEnergy = new Energy<Integer>();

// Diamond-notation for Java SE 7 and later
Energy<Float> energy = new Energy<>();
```

**Multiple type parameters**

```
interface InputOutput<T, V> {
    T processInput();
    V deliverOutput();
}

class Machine<T, V> implements InputOutput<T, V> {
    private T input;
    private V output;

    T processInput() { ... }
    V deliverOutput() { ... }
}

// Invocation
Machine<String, Integer> b = new Machine<String, Integer>();

// Diamond-box
Machine<String, Byte> d = new Machine<>();

// Parameterized type as a type parameter
Machine<String, Machine<Integer>> a = new Machine<>();
```

**Raw types**

```
Machine rawMachine = new Machine();
```

```
Machine<Integer, String> stringMachine = new Machine<>();
Machine rawMachine = stringMachine;
```

```
// Compiler warning (unchecked conversion)
Machine rawMachine = new Machine();
Machine<Integer, String> stringMachine = rawMachine;
```

```
// Compiler warning (unchecked invocation)
Machine<Integer, String> stringMachine = new Machine<>(); 
Machine rawMachine = stringMachine;
rawMachine.processInput();
```

**Generic methods**

```
class Combinator {
    ...
    <T> Combinator(T value) { ... }

    static <K, V> Unit combine(Unit<K, V> a, Unit<K, V> b) { ... }
}

class Unit<K, V> { ... }

Unit<Integer, String> unitA = new Unit<>(0, "A");
Unit<Integer, String> unitB = new Unit<>(1, "B");

Unit mergedUnit = Combinator.<Integer, String>combine(unitA, unitB);

// Type inference
Unit anotherMergedUnit = Combinator.combine(unitA, unitB);

// Constructor type inference
Combinator<String> combinator = new Combinator<>("");
```

**Bounded type parameters**

```
class Compressor {
    static <T extends Number> void compress(T value) { ... }
}

Compressor.compress(1);
Compressor.<Double>compress(1.2);

// Won't work since String is not a subclass of Number
Compressor.compress("");
```

```
class Elevator {
    void elevate() { ... }
}

class Dimension<T extends Elevator> {
    T value;
    ...
    void measure() {
        value.elevate();
       ...
    }
} 
```

`<T extends B1 & B2 & ... Bn>`

```
class A { ... }
interface B { ... }
interface C { ... }

class D <T extends A & B & C> { ... }

// Won't work - classes first then interfaces
class E <T extends B & A & C> { ... }
```

**Type inference**

```
class Extender {
    static <T> void extend(T value) { ... }
}

// Type inference works here
Extender.extend("Greetings");

// Using a type witness
Extender.<Integer>extend(100);
```

**Wildcards**

`<?>`

**Upper-bounded wildcards**

`<? extends super_class>`

```
class Ant { ... }
class WorkerAnt extends Ant { ... }
class SoldierAnt extends Ant { ... }

class AntColony {
    ...
    static void commenceWork(List<Ant> workers) { ... }
}

List<Ant> ants = new ArrayList<>();
List<WorkerAnt> workerAnts = new ArrayList<>();
List<SoldierAnt> soldierAnts = new ArrayList<>();

AntColony.commenceWork(ants);

// Wont' work
AntColony.commenceWork(workerAnts);
AntColony.commenceWork(soldierAnts);
```

```
class FlexibleAntColony {
    ...
    static void commenceWork(List<? extends Ant> workers) { ... }
}

FlexibleAntColony.commenceWork(ants);
FlexibleAntColony.commenceWork(workerAnts);
FlexibleAntColony.commenceWork(soldierAnts);
```

**Unbounded wildcards**

`<?>`

```
void printList(List<?> list) { ... }
```

**Lower-bounded wildcards**

`<? super sub_class>`

```
print addNumbers(List<? super Integer> numbers) { ... }
```

**Wildcard captures**

```
class WildcardError {
    void replace(List<?> list) {
        list.set(0, list.get(0));
    }
}

class WildcardFixed {
    void replace(List<?> list) {
        replaceHelper(list);
    }

    private <T> replaceHelper(List<T> list) {
        list.set(0, list.get(0));
    }
}
```

**Wildcards usage guidelines**

| Variable purpose                    | Wildcard usage                               |
| ----------------------------------- | -------------------------------------------- |
| *In*                                | *upper-bounded* or `<? extends super_class>` |
| *Out*                               | *lower-bounded* or `<? super sub_class>`     |
| *In* using general `Object` methods | *unbounded wildcard* or `<?>`                |
| Both as an *In* and *Out*           | *No* wildcards or `<T>`                      |

**Type erasure**

```
// Before type erasure (unbounded)
class Media<T> { 
    private T value;

    Media(T value) {
        this.value = value;
    }

    static <T> void replace(T value) { ... }
 }

// After type erasure (unbounded)
class Media {
    private Object value;

    Media(Object value) {
        this.value = value;
    }

    static void replace(Object value) { ... }
}

// Before type erasure (bounded)
class Target<T extends Media<T>> {
    private T data;

    Target(T data) {
        this.data = data;
    }

    static <T extends Media> void demolish(T media) { ... }
}

// After type erasure (bounded)
class Target {
    private Media data;

    Target(Media data) {
        this.data = data;
    }

    static void demolish(Media media) { ... }
}
```

### 10. Exceptions

```
void write() throws IOException {
    try(...) {
      ...    
    } catch (IndexOutOfBoundsException e) {
      ...
    } finally {
      ...
    }
}
```