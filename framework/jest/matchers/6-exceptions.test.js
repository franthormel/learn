// The toThrow() matcher checks if a called function throws an error.
function compile() {
  throw new Error('An OutOfBounds error has occurred.');
}

test('Compile function is expected to throw an error', () => {
  expect(() => compile()).toThrow();
  expect(() => compile()).toThrow(Error);
  expect(() => compile()).toThrow('An OutOfBounds error has occurred.');
  expect(() => compile()).toThrow(/error/);
});