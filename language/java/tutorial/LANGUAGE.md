# Java - Language

This guide is taken from the [The Java™ Tutorials ](https://docs.oracle.com/javase/tutorial/java/)

### 1. Class

A class is a *blueprint* of an object.

State is stored in its fields.

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
| protected   |   Y   |    Y    |    Y     |       |
| no modifier |   Y   |    Y    |          |       |
| private     |   Y   |         |          |       |

**Method**

`access_modifier return_type method_name(method_parameters) { }` 

```
private void draw();
public void draw(int x, int y) { ... }
protected void draw(int... points) { ... }
```

A parameter can be passed by value (primitive data types) or reference (objects and arrays).

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

Encapsulates a unit of behavior.

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

- Static methods `Wattage::compareWattages`
- Instance methods of a particular object `a::compare`
- Instance methods of an arbitrary object of a particular type `String::concat`
- Constructors `Wattage::new`

**Enums**

Use for predefined constant values.

`access_modifier enum_name { enum_values }`

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

All classes inherit from the `Object` class.

Base, parent, super-class ==> Derived, child, extended class

Inherit all members except constructors.

Use the `super` keyword to invoke the parent's constructor or members. *Constructor chaining*, a whole sequence of constructors invoked back to the `Object` class, occurs when the parent constructor is called.

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

Hierarchy is *strictly* top to bottom, from parent to descendants.

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

Cannot inherit from multiple classes since classes store their state in their fields. *Multiple inheritance of state*.

Can inherit from multiple interfaces since interfaces only have methods and no constructors. *Multiple inheritance of implementation*.

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

Methods can be *overridden* using the `@Override` annotation on a method with the same signature as its ancestor class. Return types can be a *subtype* of the overridden method's return type, this is called the *covariant return type*.

If an inheriting class declares a static method with the same signature from the superclass, the superclass's static method will be *hidden*.

Compile errors will be generated when an inheriting class and the methods have the same signature if:
1. A parent's instance method is declared as a static method in the child class.
2. A parent's static method is declared as an instance method in the child class.

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

The compiler prefers instance methods over default methods.
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

Overriden methods by others are ignored.

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

Multiple independent methods that conflict must be explicitly overridden.

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

The ability of a subclass to determine its behaviors and properties while being able to share a similar functionality with its parent class.

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

A class or method that is declared `final` could *not be overridden* by subclasses.

Use on implementations that *should not be modified* and *critical* to the object's state.

Methods called in a constructor should be declared `final` since if they are inherited and modified they may produce undesirable results.

A class should be declared `final` if an immutable class is needed.

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

Cannot be instantiated but only subclassed.

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

Use `abstract` class:
- Between *closely related* classes
- Subclasses with *multiple common* methods
- Allow *non-static and non-final* fields

Use `interface`s:
- *Unrelated* classes
- *Behaviour* specification but not implementation
- *Multiple* implementations

Non-abstract classes that extend abstract classes *must* implement all the abstract methods.


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

### 3. Interfaces

A group that determines how a part of a software interacts.

Groups of *related methods* with empty bodies.

Can only contain:
1. Constants
2. Method signatures
3. Default methods*
4. Static methods*
5. Nested types

**Bodies can be declared here*

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

Leverage multiple inheritance with the behavior of an ancestor and an interface.

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

Default and static methods can be used to be a method's initial definition.

Use default methods to avoid rewriting interface implementations and add new functionality to existing libraries.

Use static methods to implement an interface's utility functions.

```
interface Producer {
    ...
    static int transform() { ... }

    default int produce() { ... }
}
```

**Extending default methods**

1. Use *existing* definition.
```
interface AgriProducer extends Producer { }
```

2. *Becomes abstract*.
```
interface CommsProducer extends Producer { 
    ...
    int produce();
}
```

3. *New* definition.
```
interface FishProducer extends Producer {
    ...
    default int produce() { ... }
}
```


### 4. Package

A namespace that *organizes* a set of related classes and interfaces. 

A collection of packages could be called a library.

```
package operators;

class Operator { ... }
class MedicalOperator extends Operator { ... }
```

### 5. Variables

Used to store values.

Fields are members of a class.

All data types are assigned by the compiler with default values that is either or resembles zero (0) *except* for an object which is null and boolean which is false.

**Types**

| Data type | Length          | Default alues |
| --------- | --------------- | ------------- |
| byte      | 8-bits          | 0             |
| short     | 16-bits         | 0             |
| int       | 32-bits         | 0             |
| long      | 64-bits         | 0L            |
| float     | 32-bit IEEE 754 | 0.0f          |
| double    | 64-bit IEEE 754 | 0.0d          |
| char      | 32-bits         | '\u0000'      |
| String    | 32-bits         | null          |
| Object    | -               | null          |
| boolean   | true/false      | false         |

- Instance `int speed = 0;`
- Static `static final int MAX_SPEED = 100;`
- Local `int count = 0;`
- Parameters `main(String[] args)`

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

A *container* holding a fixed number of values of a single type.

Numbering begins at zero (0).

```
int[] numbers = { 1, 3, 5, 7, 9 };

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

- `@Deprecated `
- `@Override`
- `@SuppressWarnings`
- `@SafeVarargs`
- `@FunctionalInterface`
- `@Retention`
- `@Documented`
- `@Target`
- `@Inherited`
- `@Repeatable`

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

### 8. Numbers and Strings

### 9. Generics

Benefits are:
- Allow code re-use for different types
- Stronger type-checking
- Eliminates casts
- Implement generic algorithms

|       | Formal parameter | Type parameter |
| ----- | ---------------- | -------------- |
| Input | Values           | Types          |

```
List<Integer> numbers = new ArrayList<Integer>();
List<String> paragraph = new LinkedList<String>();
```

**Generic Types**

A generic class or interface that is parameterized over types.

`class_name<T1, T2, ..., Tn> { ... }`

Type parameters utilize the angle brackets `<T>`.

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

Types parameter names are usually *single* and *uppercased* letters.

| Type Name     | Description      |
| ------------- | ---------------- |
| E             | Element          |
| K             | Key              |
| N             | Number           |
| T             | Type             |
| V             | Value            |
| S, U, V , ... | Succeeding types |

**Invoking and instantiating**

To reference the generic you have to perform a *generic type invocation* or also generally known as *parameterized type*, wherein the `T` type has to be replaced with a concrete value like `Integer`. 

The `Integer` in this case is the *type parameter*.

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

A generic class or interface without a type

- Raw type 
```
Machine rawMachine = new Machine();
```
- Assign parameterized to a raw type is allowed
```
Machine<Integer, String> stringMachine = new Machine<>();
Machine rawMachine = stringMachine;
```
- Compiler warning (unchecked conversion) assigning a raw type to a parameterized type
```
Machine rawMachine = new Machine();
Machine<Integer, String> stringMachine = rawMachine;
```
- Compiler warning (unchecked invocation) when using a generic method
```
Machine<Integer, String> stringMachine = new Machine<>(); 
Machine rawMachine = stringMachine;
rawMachine.processInput();
```

**Generic methods**

Methods that have their type parameters.

The type parameter's scope is limited within the method only.

Can be used on:
- Static and non-static methods
- Constructors

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

Restricting type parameters to be of a certain subclass.

As long as the subclass is in an "is-a" relationship with the parent class. The subclass can be used as a parameter type.

For example, an `Integer` can be used for an `Object` type and also a `Number` type.

```
class Compressor {
    static <T extends Number> void compress(T value) { ... }
}

Compressor.compress(1);
Compressor.<Double>compress(1.2);

// Won't work since String is not a subclass of Number
Compressor.compress("");
```

- Methods of the bounded type can be invoked.
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
- Multiple bounds can be used.

`<T extends B1 & B2 & ... Bn>`

If one of the bounds is a class it must be declared first.

```
class A { ... }
interface B { ... }
interface C { ... }

class D <T extends A & B & C> { ... }

// Won't work - classes first then interfaces
class E <T extends B & A & C> { ... }
```

**Type inference**

The Java compiler's ability to determine the argument(s) type to make an invocation possible therefore making *type witness(es)* optional.



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

Wildcards denoted by the question mark (?) can be used to represent an unknown type.

Wildcards are helpful in situations like:
- Parameter types
- Field types
- Variable types
- Return types

**Upper-bounded wildcards**

`<? extends super_class>`

Use to relax the restrictions of an upper bound.

The following example does not allow the `WorkerAnt` and `SoldierAnt` to be used as arguments for the `commenceWork()` method but only the `Ant` type even if they are subclasses.
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
- Subclasses can be allowed to be passed as arguments in this way.
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

Value(s) of an *unkown type.*

Useful if:
- Functionality of the `Object` class is being used
- Methods of the generic do not depend on the type parameter like `List.size` or `List.clear`.

```
void printList(List<?> list) { ... }
```

**Lower-bounded wildcards**

`<? super sub_class>`

Used to specify types of a *superclass*.

Adds flexibility for a type and its ancestors.

```
print addNumbers(List<? super Integer> numbers) { ... }
```

**Wildcard captures**

When the compiler infers that type is of `Object` but since the `List.set` is invoked, the compiler thinks the wrong variable type is being assigned therefore an error message `capture of` is produced. 

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

*In* variables serves data to the code like the `src` in a copy method: `copy(src, dest)`.

*Out* variables hold data for use somewhere else like the `dest` in a copy method: `copy(src, dest)`.

| Variable purpose                    | Wildcard usage                               |
| ----------------------------------- | -------------------------------------------- |
| *In*                                | *upper-bounded* or `<? extends super_class>` |
| *Out*                               | *lower-bounded* or `<? super sub_class>`     |
| *In* using general `Object` methods | *unbounded wildcard* or `<?>`                |
| Both as an *In* and *Out*           | *No* wildcards or `<T>`                      |

Wildcards are used best for argument type parameters and not return types (generics are meant for specificity, not the other way around).

An upper-bounded list like `List<? extends Number>` is effective *read-only*.

**Type erasure**

The compiler applies *type erasure* to incur no runtime overhead.

It performs the following during compile-time:
- Replacement of all generic type parameters with their bounds or `Object` if unbounded.
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

- Insert type casts to preserve type safety.
- Generate bridge methods to preserve polymorphism in extended generic types.

```
// Before type erasure
class Box<T> {
    private T value;
    ...
    void setValue(T value) {
        this.value = value;
    }
}

class IntBox extends Box<Integer> { 
    ...
    void setValue(Integer value) {
        super.setValue(value);
    }
}

IntBox intBox = new IntBox(20);
Box box = intBox;       // Raw type - unchecked warning
box.setData("Ten");     // throws ClassCastException

// After type erasure (with bridge method)
class IntBox extends Box<Integer> { 
    ...
    // Generated bridge method
    public void setValue(Object value) {
        setValue((Integer) value);
    }

    void setValue(Integer value) {
        super.setValue(value);
    }
}
```

**Non-reifiable**

A *reifiable* type is a type with available information during runtime (primitives, non-generics, raw types, unbounded wildcard invocations)

A *non-reifiable* type is a type with information removed during compile-time by type erasure.

**Heap pollution**

Occurs when a variable of a parameterized type refers to an object that is not of that parameterized type.

*Unchecked warnings* are generated when the correctness of an operation regarding a parameterized type could not be verified (during compile-time or runtime).

**Formatting print output**

Use the `PrintStream.format()` method to format print outputs like this:
```
int apples = 10;

System.out.format("I have %d apples.", i);
```

Use the `DecimalFormat` class to format the display of decimals like this:
```
DecimalFormat formatter = new DecimalFormat(pattern);
String output = formatter.format(input);
```

| Input      | Pattern      | Output      |
| ---------- | ------------ | ----------- |
| 123456.789 | ###,###.###  | 123,456.789 |
| 123456.789 | ###.##       | 123456.79   |
| 123.78     | 000000.000   | 000123.780  |
| 12345.67   | $###,###.### | $12,345.67  |

**Strings**

Sequences of characters.

```
char a = 'a';
char b = '\u0392';
char[] text =  { 'a', 'p', 'p', 'l', 'e', 's' };

String apples = new String(text);
String oranges  = "oranges";
```

Use the `StringBuilder` class if you want to perform any of the following: `append`, `delete`, `insert`, `replace`, or  `reverse`. The `StringBuilder` class has an initial capacity of 16.

**Autoboxing and Unboxing**

Automatic conversion between wrapper classes and a primitive type and vice-versa.

| Wrapper class | Primitive data type |
| ------------- | ------------------- |
| Number        | `abstract` class    |
| Byte          | byte                |
| Short         | short               |
| Integer       | int                 |
| Long          | long                |
| Float         | float               |
| Double        | double              |
| Boolean       | boolean             |
| Character     | char                |

Use wrapper classes when:
1. Method arguments require Objects
2. Determining the upper `MAX_VALUE` and lower `MIN_VALUE` bound values for a data type
3. Conversion between data types: String to int, double, and vice-versa.

| Name     | Description          | Example              |
| -------- | -------------------- | -------------------- |
| Boxing   | Primitive to wrapper | `int` to `Integer`   |
| Unboxing | Wrapper to primitive | `Double` to `double` |



Benefits are:
- Allow code re-use for different types
- Stronger type-checking
- Eliminates casts
- Implement generic algorithms

|       | Formal parameter | Type parameter |
| ----- | ---------------- | -------------- |
| Input | Values           | Types          |

```
List<Integer> numbers = new ArrayList<Integer>();
List<String> paragraph = new LinkedList<String>();
```

**Generic Types**

A generic class or interface that is parameterized over types.

`class_name<T1, T2, ..., Tn> { ... }`

Type parameters utilize the angle brackets `<T>`.

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

Types parameter names are usually *single* and *uppercased* letters.

| Type Name     | Description      |
| ------------- | ---------------- |
| E             | Element          |
| K             | Key              |
| N             | Number           |
| T             | Type             |
| V             | Value            |
| S, U, V , ... | Succeeding types |

**Invoking and instantiating**

To reference the generic you have to perform a *generic type invocation* or also generally known as *parameterized type*, wherein the `T` type has to be replaced with a concrete value like `Integer`. 

The `Integer` in this case is the *type parameter*.

```
Energy<Integer> lessEnergy = new Energy<Integer>();

// Autoboxing
Energy<Double> moreEnergy = new Energy<Double>();

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

A generic class or interface without a type

- Raw type 
```
Machine rawMachine = new Machine();
```
- Assign parameterized to a raw type is allowed
```
Machine<Integer, String> stringMachine = new Machine<>();
Machine rawMachine = stringMachine;
```
- Compiler warning (unchecked conversion) assigning a raw type to a parameterized type
```
Machine rawMachine = new Machine();
Machine<Integer, String> stringMachine = rawMachine;
```
- Compiler warning (unchecked invocation) when using a generic method
```
Machine<Integer, String> stringMachine = new Machine<>(); 
Machine rawMachine = stringMachine;
rawMachine.processInput();
```

**Generic methods**

Methods that have their own type parameters.

The type parameter's scope is limited within the method only.

Can be used on:
- Static and non-static methods
- Constructors

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

Restricting type parameters to be of a certain subclass.

As long as the subclass is in a "is-a" relationship with the parent class. The subclass can be used as a parameter type.

For example: an `Integer` can be used for an `Object` type  and also a `Number` type.

```
class Compressor {
    static <T extends Number> void compress(T value) { }
}

Compressor.compress(1);
Compressor.<Double>compress(1.2);

// Won't work since String is not a subclass of Number
Compressor.compress("");
```

- Methods of the bounded type can be invoked.
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
- Multiple bounds can be used.

`<T extends B1 & B2 & ... Bn>`

If one of the bounds is a class it must be declared first.

```
class A { ... }
interface B { ... }
interface C { ... }

class D <T extends A & B & C> { ... }

// Won't work - classes first then interfaces
class E <T extends B & A & C> { ... }
```

**Type inference**

The Java compiler's ability to determine the argument(s) type to make an invocation possible therefore making *type witness(es)* optional.



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

Wildcards denoted by the question mark (?) can be used to represent an unknown type.

Wildcards are helpful in situations like:
- Parameter types
- Field types
- Variable types
- Return types

**Upper-bounded wildcards**

`<? extends super_class>`

Use to relax the restrictions of an upper bound.

The following example does not only allow the `WorkerAnt` and `SoldierAnt` to be used as arguments for the `commenceWork()` method but only of type `Ant` even if they are subclasses.
```
class Ant { ... }
class WorkerAnt extends Ant { ... }
class SoldierAnt extends Ant { ... }

class AntColony {
    ...
    static void commenceWork(List<Ant> workers) { ... }

    List<Ant> ants = new ArrayList<>();
    List<WorkerAnt> workerAnts = new ArrayList<>();
    List<SoldierAnt> soldierAnts = new ArrayList<>();

    AntColony.commenceWork(ants);

    // Wont' work
    AntColony.commenceWork(workerAnts);
    AntColony.commenceWork(soldierAnts);
}

```
- Subclasses can be allowed to be passed as arguments in this way.
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

Value(s) of an *unkown type.*

Useful if:
- Functionality of the `Object` class is being used
- Methods of the generic does not depend on the type parameter like `List.size` or `List.clear`.

```
void printList(List<?> list) { ... }
```

**Lower-bounded wildcards**

`<? super sub_class>`

Used to specify types of a *superclass*.

Adds flexibility for a type and its ancestors.

```
print addNumbers(List<? super Integer> numbers) { ... }
```

**Wildcard captures**

When the compiler infers that type is of `Object` but since the `List.set` is invoked, the compiler thinks the wrong variable type is being assigned therfore an error message of `capture of` is produced. 

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

*In* variables serves data to the code like the `src` in a copy method: `copy(src, dest)`.

*Out* variables holds data for use somewhere else like the `dest` in a copy method: `copy(src, dest)`.

| Variable purpose                    | Wildcard usage                               |
| ----------------------------------- | -------------------------------------------- |
| *In*                                | *upper-bounded* or `<? extends super_class>` |
| *Out*                               | *lower-bounded* or `<? super sub_class>`     |
| *In* using general `Object` methods | *unbounded wildcard* or `<?>`                |
| Both as an *In* and *Out*           | *No* wildcards or `<T>`                      |

Wildcards are used best for argument type parameters and not return types (generics are meant for specificity not the other way around).

An upper-bounded list like `List<? extends Number>` is effectively *read-only*.

**Type erasure**

The compiler applies *type erasure* to incur no runtime overhead.

It performs the following during compile-time:
- Replacement of all generic type parameters with their bounds or `Object` if unbounded.
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

- Insert type casts to preserve type safety.
- Generate bridge methods to preserve polymorphism in extended generic types.

```
// Before type erasure
class Box<T> {
    private T value;
    ...
    void setValue(T value) {
        this.value = value;
    }
}

class IntBox extends Box<Integer> { 
    ...
    void setValue(Integer value) {
        super.setValue(value);
    }
}

IntBox intBox = new IntBox(20);
Box box = intBox;       // Raw type - unchecked warning
box.setData("Ten");     // throws ClassCastException

// After type erasure (with bridge method)
class IntBox extends Box<Integer> { 
    ...
    // Generated bridge method
    public void setValue(Object value) {
        setValue((Integer) value);
    }

    void setValue(Integer value) {
        super.setValue(value);
    }
}
```

**Non-reifiable**

A *reifiable* type is a type with available information during runtime (primitives, non-generics, raw types, unbounded wildcard invocations)

A *non-reifiable* type is a type with information removed during compile-time by type erasure.

**Heap pollution**

Occurs when a variable of a parameterized type refers to an object that is not of that parameterized type.

*Unchecked warnings* are generated when the correctness of an operation regarding a parameterized type could not be verified (during compile-time or runtime).