module.exports = {
    addLevel: "INSERT INTO `levels` (`level`, `label`, `structure`) VALUES ('1', 'LEVEL_1', '{\r\n \"elements\": [{\r\n \"start\": {}\r\n },\r\n {\r\n \"movement\": {\r\n \"dir\": \"Forward\"\r\n }\r\n },\r\n {\r\n \"finish\": {\r\n \"dir\": \"Forward\"\r\n }\r\n }\r\n ]\r\n}');",
    existsLevel: "SELECT COUNT(*) AS count FROM levels"
}