// The toBeNull() matcher matches only null.
// The toBeUndefined() matcher matches only undefined.
// The toBeDefined() matcher is the opposite of the toBeUndefined() matcher.
// The toBeTruthy() matcher matches anything truthy.
// The toBeFalsy() matcher matches anything falsy.

test('Null', () => {
    const n = null;

    expect(n).toBeNull();
    expect(n).toBeDefined();
    expect(n).not.toBeUndefined();
    expect(n).not.toBeTruthy();
    expect(n).toBeFalsy();
})

test('Zero', () => {
    const z = 0;

    expect(z).not.toBeNull();
    expect(z).toBeDefined();
    expect(z).not.toBeUndefined();
    expect(z).not.toBeTruthy();
    expect(z).toBeFalsy();
});

test('One', () => {
    const z = 1;

    expect(z).not.toBeNull();
    expect(z).toBeDefined();
    expect(z).not.toBeUndefined();
    expect(z).toBeTruthy();
    expect(z).not.toBeFalsy();
});