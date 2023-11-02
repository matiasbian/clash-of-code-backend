module.exports = {
    addLevel: "INSERT INTO `levels` (`level`, `label`, `structure`, `perfect_steps`) VALUES ('1', 'LEVEL_1', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":0,\"type\":\"finish\"}]}', '3');",
    existsLevel: "SELECT COUNT(*) AS count FROM levels"
}