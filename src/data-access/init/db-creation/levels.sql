--
-- Volcado de datos para la tabla `levels`
--

INSERT INTO `levels` (`id`, `level`, `label`, `structure`, `perfect_steps`, `dialogs`) VALUES
(51, 1, 'LEVEL_1', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":0,\"type\":\"finish\"}]}', 3, NULL),
(76, 2, 'LEVel_TWO', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":1,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":1,\"type\":\"finish\"}]}', 4, ''),
(77, 3, 'LEVEL_THREE', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":0,\"type\":\"finish\"}]}', 6, ''),
(78, 4, 'JUMP', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"direction\":\"up\",\"positionX\":1,\"positionY\":0,\"type\":\"jump\"},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":0,\"type\":\"finish\"}]}', 3, ''),
(79, 5, 'LEVEL_FIVE', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":2,\"positionY\":0,\"type\":\"jump\"},{\"positionX\":2,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":1,\"type\":\"finish\"}]}', 5, ''),
(80, 6, 'LEVEL_SIX', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":2,\"positionY\":-1,\"type\":\"jump\"},{\"positionX\":2,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":-1,\"type\":\"finish\"},{\"positionX\":3,\"positionY\":-1,\"type\":\"movement\"}]}', 5, 'Hay mas de un camino posible. ¡Elige el mas corto!'),
(81, 7, 'BALLS', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"amount\":5,\"positionX\":1,\"positionY\":0,\"type\":\"ball\"},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":0,\"type\":\"finish\"}]}', 3, ''),
(82, 8, 'LEVEL_EIGHT', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":2,\"positionY\":-1,\"type\":\"jump\"},{\"amount\":5,\"positionX\":3,\"positionY\":-1,\"type\":\"ball\"},{\"positionX\":4,\"positionY\":-1,\"type\":\"finish\"}]}', 5, ''),
(83, 9, 'LEVEL_NINE', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":0,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":1,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":0,\"positionY\":-1,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":1,\"positionY\":-1,\"type\":\"jump\"},{\"direction\":\"up\",\"positionX\":2,\"positionY\":0,\"type\":\"jump\"},{\"positionX\":2,\"positionY\":-1,\"type\":\"movement\"},{\"amount\":5,\"positionX\":3,\"positionY\":-1,\"type\":\"ball\"},{\"positionX\":4,\"positionY\":-1,\"type\":\"finish\"},{\"amount\":5,\"positionX\":2,\"positionY\":1,\"type\":\"ball\"}]}', 5, ''),
(84, 10, 'IF', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":0,\"type\":\"finish\"}]}', 3, ''),
(85, 11, 'LEVEL_ELEVEN', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":2,\"positionY\":-1,\"type\":\"jump\"},{\"positionX\":2,\"positionY\":1,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"amount\":5,\"positionX\":3,\"positionY\":1,\"type\":\"ball\"},{\"positionX\":4,\"positionY\":1,\"type\":\"finish\"},{\"positionX\":3,\"positionY\":-1,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":-1,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":0,\"type\":\"movement\"}]}', 5, ''),
(86, 12, 'LEVEL_TWELVE', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"subtype\":\"balls\",\"type\":\"if\",\"value\":5},{\"positionX\":2,\"positionY\":-1,\"type\":\"movement\"},{\"amount\":5,\"positionX\":3,\"positionY\":-1,\"type\":\"ball\"},{\"amount\":5,\"positionX\":4,\"positionY\":-1,\"type\":\"ball\"},{\"direction\":\"up\",\"positionX\":4,\"positionY\":0,\"type\":\"jump\"},{\"positionX\":4,\"positionY\":1,\"type\":\"finish\"}]}', 7, 'LA condicion del IF es distinta a las anteriormente vistas. ¡Elige la correcta!'),
(87, 13, 'FOR', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":-1,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":-2,\"type\":\"finish\"}]}', 5, ''),
(88, 14, 'LEVEL_FOURTEEN', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"amount\":5,\"positionX\":1,\"positionY\":0,\"type\":\"ball\"},{\"amount\":5,\"positionX\":2,\"positionY\":0,\"type\":\"ball\"},{\"amount\":5,\"positionX\":3,\"positionY\":0,\"type\":\"ball\"},{\"positionX\":3,\"positionY\":-1,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":-2,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":2,\"positionY\":-2,\"type\":\"jump\"},{\"direction\":\"up\",\"positionX\":1,\"positionY\":-2,\"type\":\"jump\"},{\"positionX\":0,\"positionY\":-2,\"type\":\"finish\"}]}', 8, 'Hay varias celdas que repiten acciones.¡Intenta utilizar todos los FOR que puedas!'),
(89, 15, 'PROCEDURE', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":1,\"positionY\":-1,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":-1,\"type\":\"finish\"}]}', 3, ''),
(90, 16, 'LEVEL_SIXTEEN', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":-1,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":3,\"positionY\":-2,\"type\":\"jump\"},{\"positionX\":4,\"positionY\":-2,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"amount\":5,\"positionX\":5,\"positionY\":-2,\"type\":\"ball\"},{\"positionX\":6,\"positionY\":-2,\"subtype\":\"balls\",\"type\":\"if\",\"value\":5},{\"positionX\":7,\"positionY\":-2,\"type\":\"finish\"}]}', 9, 'LA cantidad de celdas excede la vista de la cámara. Presiona la tecla \"M\" para alejar la cámara'),
(91, 17, 'LEVEL_SEVENTEEN', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"positionX\":2,\"positionY\":-1,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":-2,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":2,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":2,\"subtype\":\"balls\",\"type\":\"if\",\"value\":5},{\"direction\":\"up\",\"positionX\":3,\"positionY\":0,\"type\":\"jump\"},{\"positionX\":3,\"positionY\":-2,\"type\":\"movement\"},{\"amount\":5,\"positionX\":4,\"positionY\":0,\"type\":\"ball\"},{\"positionX\":4,\"positionY\":2,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":3,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":5,\"positionY\":3,\"type\":\"jump\"},{\"positionX\":6,\"positionY\":3,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"amount\":5,\"positionX\":6,\"positionY\":1,\"type\":\"ball\"},{\"positionX\":6,\"positionY\":2,\"type\":\"movement\"},{\"positionX\":5,\"positionY\":-1,\"type\":\"movement\"},{\"positionX\":5,\"positionY\":-2,\"type\":\"movement\"},{\"positionX\":6,\"positionY\":-2,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"positionX\":7,\"positionY\":-2,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":7,\"positionY\":-1,\"type\":\"jump\"},{\"positionX\":7,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":6,\"positionY\":0,\"type\":\"movement\"},{\"amount\":5,\"positionX\":5,\"positionY\":0,\"type\":\"ball\"},{\"positionX\":8,\"positionY\":-1,\"type\":\"finish\"},{\"direction\":\"up\",\"positionX\":4,\"positionY\":-2,\"type\":\"jump\"}]}', 9, ''),
(92, 18, 'LEVEL_EIGHTEEN', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":0,\"positionY\":-1,\"type\":\"movement\"},{\"positionX\":0,\"positionY\":-2,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":1,\"positionY\":-2,\"type\":\"jump\"},{\"positionX\":2,\"positionY\":-2,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":-2,\"type\":\"movement\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"subtype\":\"balls\",\"type\":\"if\",\"value\":5},{\"amount\":5,\"positionX\":2,\"positionY\":1,\"type\":\"ball\"},{\"amount\":5,\"positionX\":2,\"positionY\":2,\"type\":\"ball\"},{\"positionX\":1,\"positionY\":2,\"type\":\"movement\"},{\"positionX\":0,\"positionY\":2,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"positionX\":0,\"positionY\":3,\"type\":\"movement\"},{\"positionX\":0,\"positionY\":4,\"type\":\"movement\"},{\"positionX\":1,\"positionY\":4,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"positionX\":2,\"positionY\":4,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"amount\":5,\"positionX\":3,\"positionY\":4,\"type\":\"ball\"},{\"direction\":\"up\",\"positionX\":4,\"positionY\":4,\"type\":\"jump\"},{\"positionX\":5,\"positionY\":4,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":5,\"positionY\":3,\"type\":\"jump\"},{\"positionX\":5,\"positionY\":2,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"amount\":5,\"positionX\":3,\"positionY\":2,\"type\":\"ball\"},{\"direction\":\"up\",\"positionX\":4,\"positionY\":2,\"type\":\"jump\"},{\"positionX\":4,\"positionY\":1,\"subtype\":\"balls\",\"type\":\"if\",\"value\":5},{\"direction\":\"up\",\"positionX\":4,\"positionY\":0,\"type\":\"jump\"},{\"positionX\":3,\"positionY\":-3,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":-4,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":-4,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":5,\"positionY\":-4,\"type\":\"jump\"},{\"positionX\":6,\"positionY\":-4,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"amount\":5,\"positionX\":7,\"positionY\":-4,\"type\":\"ball\"},{\"positionX\":6,\"positionY\":-3,\"subtype\":\"balls\",\"type\":\"if\",\"value\":5},{\"amount\":5,\"positionX\":6,\"positionY\":-2,\"type\":\"ball\"},{\"positionX\":7,\"positionY\":-2,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"direction\":\"up\",\"positionX\":8,\"positionY\":-2,\"type\":\"jump\"},{\"positionX\":8,\"positionY\":-3,\"subtype\":\"balls\",\"type\":\"if\",\"value\":5},{\"amount\":5,\"positionX\":8,\"positionY\":-4,\"type\":\"ball\"},{\"direction\":\"up\",\"positionX\":7,\"positionY\":-1,\"type\":\"jump\"},{\"positionX\":7,\"positionY\":0,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":6,\"positionY\":0,\"type\":\"jump\"},{\"amount\":5,\"positionX\":5,\"positionY\":0,\"type\":\"ball\"},{\"positionX\":7,\"positionY\":1,\"type\":\"finish\"},{\"direction\":\"up\",\"positionX\":4,\"positionY\":-2,\"type\":\"jump\"},{\"positionX\":5,\"positionY\":-2,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0}]}', 12, '');
