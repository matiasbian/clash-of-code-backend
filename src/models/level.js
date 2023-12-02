class Level {
    constructor(levelNumber, label, structure, perfectSteps, dialogs, noParse) {
        this.levelNumber = levelNumber;
        this.label = label;
        this.structure = new LevelStructure(structure, noParse);
        this.perfectSteps = perfectSteps;
        this.dialogs = dialogs;
    }
}

class LevelStructure {
    constructor(structure, noParse) {
        this.elements = noParse ? structure : JSON.parse(structure).elements;
    }
}

module.exports = Level;