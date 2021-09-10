// // EXAMPLE 1

// interface Identity<T, U> {
//     value: T
//     message: U
// }

// let returnNumber : Identity<number, string> = {
//     value: 25,
//     message: 'Hello!'
// }

// let returnString : Identity<string, number> = {
//     value: 'Hello!',
//     message: 25
// }

// // EXAMPLE 2

// interface ProcessIdentity<T, U> {
//     (value: T, message: U) : T
// }

// function processIdentity<T, U> (value: T, message: U): T {
//     console.log(message);
//     return value
// }

// let processor: ProcessIdentity<number, string> = processIdentity

// let returnNumber = processor(100, 'Hello!') // OK
// let returnString = processor('Hello!', 100) // Type check error

// // EXAMPLE 3

// interface ProcessIdentity<T, U> {
//     value: T
//     message: U
//     process(): T
// }

// // Implementing class generics WITH interfaces
// class processIdentity<X, Y> implements ProcessIdentity<X, Y> {
//     value: X
//     message: Y
//     constructor(val: X, msg: Y) {
//         this.value = val
//         this.message = msg
//     }
//     process() : X {
//         console.log(this.message)
//         return this.value
//     }
// }

// // Implementing class generics WITHOUT interfaces
// class processIdentity<T, U> {
//     private _value: T
//     private _message: U
//     constructor(value: T, message: U) {
//         this._value = value
//         this._message = message
//     }
//     process() : T{
//         console.log(this._message)
//         return this._value
//     }
// }

// let processor = new processIdentity<number, string>(100, 'Hello')
// processor.process()     // Displays 'Hello'
// processor.value = '100' // Type check error

// // EXAMPLE 4

// class Car {
//   make: string = "Generic Car";
//   doors: number = 4;
// }

// class ElectricCar extends Car {
//   make = "Electric Car";
//   doors = 4;
// }

// class Truck extends Car {
//   make = "Truck";
//   doors = 2;
// }

// function accelerate<T extends Car>(car: T): T {
//   console.log(`All ${car.doors} doors are closed.`);
//   console.log(`The ${car.make} is now accelerating!`);
//   return car;
// }

// let myElectricCar = new ElectricCar();
// accelerate<ElectricCar>(myElectricCar);

// let myTruck = new Truck();
// accelerate<Truck>(myTruck);
