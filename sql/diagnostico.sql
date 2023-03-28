-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-03-2023 a las 23:37:52
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diagnostico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id`, `tipo`) VALUES
(1, 'candidato 1'),
(2, 'candidato 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos_ingresados`
--

CREATE TABLE `candidatos_ingresados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `rut` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `candidato_tipo` int(2) NOT NULL,
  `web` int(2) NOT NULL,
  `tv` int(2) NOT NULL,
  `rd` int(2) NOT NULL,
  `amigo` int(2) NOT NULL,
  `region` varchar(100) NOT NULL,
  `comuna` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region_comuna`
--

CREATE TABLE `region_comuna` (
  `ID` int(11) NOT NULL,
  `regiones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `region_comuna`
--

INSERT INTO `region_comuna` (`ID`, `regiones`) VALUES
(1, '{ \"regiones\": [ { \"region\": \"Arica y Parinacota\", \"comunas\": [\"Arica\", \"Camarones\", \"Putre\", \"General Lagos\"] }, { \"region\": \"Tarapacá\", \"comunas\": [\"Iquique\", \"Alto Hospicio\", \"Pozo Almonte\", \"Camiña\", \"Colchane\", \"Huara\", \"Pica\"] }, { \"region\": \"Antofagasta\", \"comunas\": [\"Antofagasta\", \"Mejillones\", \"Sierra Gorda\", \"Taltal\", \"Calama\", \"Ollagüe\", \"San Pedro de Atacama\", \"Tocopilla\", \"María Elena\"] }, { \"region\": \"Atacama\", \"comunas\": [\"Copiapó\", \"Caldera\", \"Tierra Amarilla\", \"Chañaral\", \"Diego de Almagro\", \"Vallenar\", \"Alto del Carmen\", \"Freirina\", \"Huasco\"] }, { \"region\": \"Coquimbo\", \"comunas\": [\"La Serena\", \"Coquimbo\", \"Andacollo\", \"La Higuera\", \"Paiguano\", \"Vicuña\", \"Illapel\", \"Canela\", \"Los Vilos\", \"Salamanca\", \"Ovalle\", \"Combarbalá\", \"Monte Patria\", \"Punitaqui\", \"Río Hurtado\"] }, { \"region\": \"Valparaíso\", \"comunas\": [\"Valparaíso\", \"Casablanca\", \"Concón\", \"Juan Fernández\", \"Puchuncaví\", \"Quintero\", \"Viña del Mar\", \"Isla de Pascua\", \"Los Andes\", \"Calle Larga\", \"Rinconada\", \"San Esteban\", \"La Ligua\", \"Cabildo\", \"Papudo\", \"Petorca\", \"Zapallar\", \"Quillota\", \"Calera\", \"Hijuelas\", \"La Cruz\", \"Nogales\", \"San Antonio\", \"Algarrobo\", \"Cartagena\", \"El Quisco\", \"El Tabo\", \"Santo Domingo\", \"San Felipe\", \"Catemu\", \"Llaillay\", \"Panquehue\", \"Putaendo\", \"Santa María\", \"Quilpué\", \"Limache\", \"Olmué\", \"Villa Alemana\"] }, { \"region\": \"Región del Libertador Gral. Bernardo O?Higgins\", \"comunas\": [\"Rancagua\", \"Codegua\", \"Coinco\", \"Coltauco\", \"Doñihue\", \"Graneros\", \"Las Cabras\", \"Machalí\", \"Malloa\", \"Mostazal\", \"Olivar\", \"Peumo\", \"Pichidegua\", \"Quinta de Tilcoco\", \"Rengo\", \"Requínoa\", \"San Vicente\", \"Pichilemu\", \"La Estrella\", \"Litueche\", \"Marchihue\", \"Navidad\", \"Paredones\", \"San Fernando\", \"Chépica\", \"Chimbarongo\", \"Lolol\", \"Nancagua\", \"Palmilla\", \"Peralillo\", \"Placilla\", \"Pumanque\", \"Santa Cruz\"] }, { \"region\": \"Región del Maule\", \"comunas\": [\"Talca\", \"Constitución\", \"Curepto\", \"Empedrado\", \"Maule\", \"Pelarco\", \"Pencahue\", \"Río Claro\", \"San Clemente\", \"San Rafael\", \"Cauquenes\", \"Chanco\", \"Pelluhue\", \"Curicó\", \"Hualañé\", \"Licantén\", \"Molina\", \"Rauco\", \"Romeral\", \"Sagrada Familia\", \"Teno\", \"Vichuquén\", \"Linares\", \"Colbún\", \"Longaví\", \"Parral\", \"Retiro\", \"San Javier\", \"Villa Alegre\", \"Yerbas Buenas\"] }, { \"region\": \"Región de Ñuble\", \"comunas\": [\"Cobquecura\", \"Coelemu\", \"Ninhue\", \"Portezuelo\", \"Quirihue\", \"Ránquil\", \"Treguaco\", \"Bulnes\", \"Chillán Viejo\", \"Chillán\", \"El Carmen\", \"Pemuco\", \"Pinto\", \"Quillón\", \"San Ignacio\", \"Yungay\", \"Coihueco\", \"Ñiquén\", \"San Carlos\", \"San Fabián\", \"San Nicolás\"] }, { \"region\": \"Región del Biobío\", \"comunas\": [\"Concepción\", \"Coronel\", \"Chiguayante\", \"Florida\", \"Hualqui\", \"Lota\", \"Penco\", \"San Pedro de la Paz\", \"Santa Juana\", \"Talcahuano\", \"Tomé\", \"Hualpén\", \"Lebu\", \"Arauco\", \"Cañete\", \"Contulmo\", \"Curanilahue\", \"Los Álamos\", \"Tirúa\", \"Los Ángeles\", \"Antuco\", \"Cabrero\", \"Laja\", \"Mulchén\", \"Nacimiento\", \"Negrete\", \"Quilaco\", \"Quilleco\", \"San Rosendo\", \"Santa Bárbara\", \"Tucapel\", \"Yumbel\", \"Alto Biobío\"] }, { \"region\": \"Región de la Araucanía\", \"comunas\": [\"Temuco\", \"Carahue\", \"Cunco\", \"Curarrehue\", \"Freire\", \"Galvarino\", \"Gorbea\", \"Lautaro\", \"Loncoche\", \"Melipeuco\", \"Nueva Imperial\", \"Padre las Casas\", \"Perquenco\", \"Pitrufquén\", \"Pucón\", \"Saavedra\", \"Teodoro Schmidt\", \"Toltén\", \"Vilcún\", \"Villarrica\", \"Cholchol\", \"Angol\", \"Collipulli\", \"Curacautín\", \"Ercilla\", \"Lonquimay\", \"Los Sauces\", \"Lumaco\", \"Purén\", \"Renaico\", \"Traiguén\", \"Victoria\"] }, { \"region\": \"Región de Los Ríos\", \"comunas\": [\"Valdivia\", \"Corral\", \"Lanco\", \"Los Lagos\", \"Máfil\", \"Mariquina\", \"Paillaco\", \"Panguipulli\", \"La Unión\", \"Futrono\", \"Lago Ranco\", \"Río Bueno\"] }, { \"region\": \"Región de Los Lagos\", \"comunas\": [\"Puerto Montt\", \"Calbuco\", \"Cochamó\", \"Fresia\", \"Frutillar\", \"Los Muermos\", \"Llanquihue\", \"Maullín\", \"Puerto Varas\", \"Castro\", \"Ancud\", \"Chonchi\", \"Curaco de Vélez\", \"Dalcahue\", \"Puqueldón\", \"Queilén\", \"Quellón\", \"Quemchi\", \"Quinchao\", \"Osorno\", \"Puerto Octay\", \"Purranque\", \"Puyehue\", \"Río Negro\", \"San Juan de la Costa\", \"San Pablo\", \"Chaitén\", \"Futaleufú\", \"Hualaihué\", \"Palena\"] }, { \"region\": \"Región Aisén del Gral. Carlos Ibáñez del Campo\", \"comunas\": [\"Coihaique\", \"Lago Verde\", \"Aisén\", \"Cisnes\", \"Guaitecas\", \"Cochrane\", \"O?Higgins\", \"Tortel\", \"Chile Chico\", \"Río Ibáñez\"] }, { \"region\": \"Región de Magallanes y de la Antártica Chilena\", \"comunas\": [\"Punta Arenas\", \"Laguna Blanca\", \"Río Verde\", \"San Gregorio\", \"Cabo de Hornos (Ex Navarino)\", \"Antártica\", \"Porvenir\", \"Primavera\", \"Timaukel\", \"Natales\", \"Torres del Paine\"] }, { \"region\": \"Región Metropolitana de Santiago\", \"comunas\": [\"Cerrillos\", \"Cerro Navia\", \"Conchalí\", \"El Bosque\", \"Estación Central\", \"Huechuraba\", \"Independencia\", \"La Cisterna\", \"La Florida\", \"La Granja\", \"La Pintana\", \"La Reina\", \"Las Condes\", \"Lo Barnechea\", \"Lo Espejo\", \"Lo Prado\", \"Macul\", \"Maipú\", \"Ñuñoa\", \"Pedro Aguirre Cerda\", \"Peñalolén\", \"Providencia\", \"Pudahuel\", \"Quilicura\", \"Quinta Normal\", \"Recoleta\", \"Renca\", \"Santiago\", \"San Joaquín\", \"San Miguel\", \"San Ramón\", \"Vitacura\", \"Puente Alto\", \"Pirque\", \"San José de Maipo\", \"Colina\", \"Lampa\", \"Tiltil\", \"San Bernardo\", \"Buin\", \"Calera de Tango\", \"Paine\", \"Melipilla\", \"Alhué\", \"Curacaví\", \"María Pinto\", \"San Pedro\", \"Talagante\", \"El Monte\", \"Isla de Maipo\", \"Padre Hurtado\", \"Peñaflor\"] } ] }');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `candidatos_ingresados`
--
ALTER TABLE `candidatos_ingresados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `region_comuna`
--
ALTER TABLE `region_comuna`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `candidatos_ingresados`
--
ALTER TABLE `candidatos_ingresados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `region_comuna`
--
ALTER TABLE `region_comuna`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
