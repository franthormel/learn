// The toBe() matcher tests for exact equality.
test('One plus one is two', () => {
    expect(1 + 1).toBe(2);
});


// The toEqual() matcher tests object value.
test('Object assignment', () => {
    const machine = { wheels: true };

    machine['engine'] = true;
    machine['passengers'] = 4;

    expect(machine).toEqual({ wheels: true, engine: true, passengers: 4, });
});

// The not keyword reverses the matcher.
test('Adding one plus one is not eleven', () => {
    expect(1 + 1).not.toBe(11);
});