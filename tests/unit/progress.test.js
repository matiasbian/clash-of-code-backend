const Progress = require('../../src/models/progress.js');

describe('Progress Model test', () => {
    test('Simple progress creation', () => {
        const progress = new Progress({ userID: 1, levelNumber: 2, movements: 3 })
        expect(progress.userID).toBe(1);
        expect(progress.levelNumber).toBe(2);
        expect(progress.movements).toBe(3);
    });
});