# Java - Essential Java Classes

This guide is taken from the [The Java™ Tutorials: Essential Java Classes](https://docs.oracle.com/javase/tutorial/essential/)

### 1.Exceptions

An *exceptional event* that interrupts a program's expected behaviour.

An *exception handler* is a block of code that handles an exception.

Thrown exceptions must be enclosed by:
- *try* statement
- method that *throws* the exception

Three (3) types of exceptions:
1. *Checked* - anticipatable
2. *Error* - external, unanticipatable, unrecoverable
3. *Unchecked* - runtime
   
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

- *try* - where exceptions occur
- *catch* - where exceptions are handled
- *finally* - block that always executes
- *try*-with - resources that should be closed, typically used with any classes implementing [AutoCloseable](https://docs.oracle.com/javase/8/docs/api/java/lang/AutoCloseable.html).


### 2.Basic


### 3.Concurrency


### 4.The Platform Environment


### 5.Regular Expressions

