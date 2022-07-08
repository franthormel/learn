# Primitive data types

Static types.

| Data type | Length          |
| --------- | --------------- |
| byte      | 8-bits          |
| short     | 16-bits         |
| int       | 32-bits         |
| long      | 64-bits         |
| float     | 32-bit IEEE 754 |
| double    | 64-bit IEEE 754 |

### Default values
All data types are assigned by the compiler with default values that is either or resembling zero (0) *except* for an object which is null and boolean which is false.

### Literals
Source code representation of a fixed value.

```
byte b = 1;
short s = 10;
int i = 100;
char c = 'C';
boolean value = true;
```

### Integer literals
```
int decimal = 26;
int hexadecimal = 0x1A;
int binary = 0b11010;
```

### Floating literals
```
double d = 123.4;
double dSquared = 123.4e2;
float f = 123.4f;
```

### Separating long numbers
Underscores can be used in Java SE 7 and later.
```
long phoneNumber = 1234_5678_9123_4567;
float pi = 3.14_15F;
long maximum = 0xFF_FFFF_FFFF_FFFF;
long nybbles = 0b0010_0101;
long bytes = 0b11010010_01101001_10010100_10010010;
```