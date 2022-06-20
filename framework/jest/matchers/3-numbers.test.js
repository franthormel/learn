// Numbers can be compared using matcher equivalents.
test('Two multiplied by five', () => {
    const value = 2 * 5;

    expect(value).toBeGreaterThan(9);
    expect(value).toBeGreaterThanOrEqual(9.9);
    expect(value).toBeLessThan(15);
    expect(value).toBeLessThanOrEqual(10.1);

    // The toBe() and toEqual() are equivalent for numbers.
    expect(value).toBe(10);
    expect(value).toEqual(10);
});

// Use the toBeCloseTo() matcher instead of the toEqual() matcher.
test('Adding floating point numbers', () => {
    const value = 0.1 + 0.02 + 0.003;
    expect(value).toBeCloseTo(0.123);
});