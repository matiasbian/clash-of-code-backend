class Level {
    constructor(levelNumber, label, structure, perfectSteps) {
        this.levelNumber = levelNumber;
        this.label = label;
        this.structure = new LevelStructure(structure);
        this.perfectSteps = perfectSteps;
    }
}

class LevelStructure {
    constructor(structure) {
        this.elements = JSON.parse(structure).elements;
    }
}

module.exports = Level;