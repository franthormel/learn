// The toMatch() matcher can be used to check for regular expressions.
test('The word expression does not contain the word thought', () => {
    expect('expression').not.toMatch(/thought/);
});

test('The word thoughtful contains the word thought', () => {
    expect('thoughtful').toMatch(/thought/);
});