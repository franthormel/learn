# Java - Essential Java Classes

This guide is taken from the [The Java™ Tutorials: Essential Java Classes](https://docs.oracle.com/javase/tutorial/essential/)

### 1.Exceptions

An *exceptional event* that interrupts a program's expected behavior.

An *exception handler* is a block of code that handles an exception.

Thrown exceptions must be enclosed by:
- *try* statement
- a method that *throws* the exception

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


### 2.Basic I/O

**Byte streams**

Input and output of 8-bit bytes.

- `InputStream`
- `OutputStream`
- `FileInputStream`
- `FileOutputStream`

[ByteStreams.java](java_examples/src/io_streams/ByteStreams.java)

**Character streams**

Reading and storing of Unicode characters.

- `FileWriter`
- `FileReader`

[CopyCharacters.java](java_examples/src/io_streams/CopyCharacters.java)

**Buffered streams**

Read and write data to the buffer memory.

Reads only when it's empty and only called when full.

- `BufferedInputStream`
- `BufferedOutputStream`
- `BufferedReader`
- `BufferedWriter`

**Scanning**

Breaking down and formatting input into tokens and translating to their data types accordingly. 

Uses [whitespaces](https://docs.oracle.com/en/java/javase/18/docs/api/java.base/java/lang/Character.html#isWhitespace(char)) as the default token delimiter.

- `Scanner`
  
[ScanSum.java](java_examples/src/io_streams/ScanSum.java)

[ScanXanadu.java](java_examples/src/io_streams/ScanXanadu.java)

**Formatting**

- `PrintWriter` 
- `PrintStream`

[Formatting.java](java_examples/src/io_streams/Formatting.java)

**I/O from the Command Line**

- Standard streams

| Standard Stream | Method       |
| --------------- | ------------ |
| Standard input  | `System.in`  |
| Standard output | `System.out` |
| Standard error  | `System.err` |

- `Console`

More advanced alternative to the standard streams.

[ConsolePassword.java](java_examples/src/io_streams/ConsolePassword.java)

**Data streams**

Binary I/O of primitive data types.

- `DataInput`
- `DataOutput`
- `DataInputStream`
- `DataOutputStream`

[DataStreams.java](java_examples/src/io_streams/DataStreams.java)

**Object streams**

I/O of objects.

Use `BigDecimal` to better represent precise fractional values as opposed to `float`.

Reading and writing of encapsulated objects are supported.

Explicit writing of the same object will only contain one copy and can contain multiple references to that object will yield the reference(s) to the same object however if a single object is written to different streams it will be effectively duplicated.

[ObjectStreams.java](java_examples/src/io_streams/ObjectStreams.java)

### 3.Concurrency


### 4.The Platform Environment


### 5.Regular Expressions

