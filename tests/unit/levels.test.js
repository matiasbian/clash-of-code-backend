const Level = require('../../src/models/level.js');

describe('Level Model test', () => {
    test('Simple model creation', () => {
        const level = new Level(1, "Level_one", sampleLevelStructure)
        expect(level.levelNumber).toBe(1);
        expect(level.label).toBe("Level_one");
        expect(level.structure.elements.length).toBe(3);
    });

    test('Simple model creation with empty structure', () => {
        const level = new Level(1, "Level_one", "{}")
        expect(level.structure.elements).toBe(undefined);
    });
});

const sampleLevelStructure = JSON.stringify(
    {
        "elements": [
            {movement: {dir: "Forward"}},
            {movement: {dir: "Forward"}},
            {movement: {dir: "Forward"}},
        ]
    }
)