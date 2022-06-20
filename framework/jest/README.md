# [Jest](https://jestjs.io/)

Jest is a **JavaScript Testing Framework**. This covers the framework's basics and provides examples as of **version 28.1**.



## [Getting Started](https://jestjs.io/docs/getting-started)
Installation and usage instructions.



## Test
Run this example using:

```
npm test
```



## [Using Matchers](https://jestjs.io/docs/using-matchers)

For a complete list, use this [reference](https://jestjs.io/docs/expect).



[**Common Matchers**](matchers/1-common-matchers.test.js)
```
test('one plus one is two', () => {
    expect(1 + 1).toBe(2);
});
```



[**Truthiness**](matchers/2-truthiness.test.js)
```
test('null', () => {
  const n = null;

  expect(n).toBeNull();
  expect(n).toBeDefined();
  expect(n).not.toBeUndefined();
  expect(n).not.toBeTruthy();
  expect(n).toBeFalsy();
});
```



[**Numbers**](matchers/3-numbers.test.js)
```
test('two multiplied by five', () => {
    const value = 2 * 5;

    expect(value).toBeGreaterThan(9);
    expect(value).toBeGreaterThanOrEqual(9.9);
    expect(value).toBeLessThan(15);
    expect(value).toBeLessThanOrEqual(10.1);
    expect(value).toBe(10);
    expect(value).toEqual(10);
});

test('adding floating point numbers', () => {
    const value = 0.1 + 0.02 + 0.003;
    expect(value).toBeCloseTo(0.123);
});
```


[**Strings**](matchers/4-strings.test.js)
```
test('The word expression does not contain the word thought.', () => {
    expect('expression').not.toMatch(/thought/);
});

test('The word thoughtful contains the word thought', () => {
    expect('thoughtful').toMatch(/thought/);
});
```



[**Arrays and iterables**](matchers/5-arrays-iterables.test.js)
```
const materialsList = [
    'paper',
    'wood',
    'cement',
    'plastic',
];

test('the list of materials has plastic', () => {
    expect(materialsList).toContain('plastic');
    expect(new Set(materialsList)).toContain('plastic');
});
```



[**Exceptions**](matchers/6-exceptions.test.js)
```
function compile() {
  throw new Error('An OutOfBounds error has occurred.');
}

test('Compile function is expected to throw an error', () => {
  expect(() => compile()).toThrow();
  expect(() => compile()).toThrow(Error);
  expect(() => compile()).toThrow('An OutOfBounds error has occurred.');
  expect(() => compile()).toThrow(/error/);
});
```
