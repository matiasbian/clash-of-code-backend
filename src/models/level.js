class Level {
    constructor(levelNumber, label, structure, perfectSteps, noParse) {
        this.levelNumber = levelNumber;
        this.label = label;
        this.structure = new LevelStructure(structure, noParse);
        this.perfectSteps = perfectSteps;
    }
}

class LevelStructure {
    constructor(structure, noParse) {
        this.elements = noParse ? structure : JSON.parse(structure).elements;
    }
}

module.exports = Level;