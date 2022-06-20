// The toContain() matcher checks if an array or iterable contains a particular item.
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