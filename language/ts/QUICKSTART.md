# TypeScript - Quickstart

**1. Variables**
```
// Declaration with types
let name: string;
let age: number;
let isEnrolled: boolean;

// Declaration using type inference
let name = "Francis"
let age = 23;
let isEnrolled = true;
```

**2. Interfaces**
```
// Declaration
interface Grade {
  subject: string;
  value: number;
}

// Extension
interface RemarkedGrade extends Grade{
  remarks: string;
}

// Usage
let grade: Grade;
let remarkedGrade: RemarkedGrade;
```

**3. Functions**
```
// Declaration
function increaseGrade(grade: number) : number {
  return grade + 10;    
}

// Function types
type gradeOperationType = (grade: number) => number;

// Usage of function types
let decreaseGrade: gradeOperationType = (grade) => grade - 10;
```

**4. Classes**
```
class Teacher {
  private _age: number;
  private _name: string;  

  constructor(age: number, name: string) {
    this._age = age;
    this._name = name;
  }
}

let teacher = new Teacher(30, "Rosa");
```


**5. Generics**
```
class Exam<T> {
  private _items: Array<T> = new Array(10);
}

let writtenExam = new Exam<string>();
```

**6. Modules**
```
export function transferGrades(grades: Array<number>) => grades;

// In another file
import * as SchoolFunction from './source.ts';

let transferredGrades = SchoolFunction.transferGrades(grades);
```

**7. Namespaces**
```
namespace Administration {
  export class Administrator {
    function administrate() {
      console.log("Administrator is administrating.");
    }
  }
}

namespace Class {
  export class Teacher {
    function teacher() {
      console.log("Teacher is teaching.");  
    }
  }  

  export class Student {
    function study() {
      console.log("Student is studying.");  
    }
  }
}

// In another file
/// <reference path="administration.ts"/>
/// <reference path="class.ts"/>
let admin = new Administrator();
let teacher = new Teacher();
let students = new Array<Student>(20);
```