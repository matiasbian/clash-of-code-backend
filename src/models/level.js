class Level {
    constructor(levelNumber, label, structure) {
        this.levelNumber = levelNumber;
        this.label = label;
        this.structure = new LevelStructure(structure);
    }
}

class LevelStructure {
    constructor(structure) {
        this.structure = JSON.parse(structure);
    }
}

module.exports = Level;