-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2019 a las 00:41:43
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_villeta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add administrador', 7, 'add_administrador'),
(26, 'Can change administrador', 7, 'change_administrador'),
(27, 'Can delete administrador', 7, 'delete_administrador'),
(28, 'Can view administrador', 7, 'view_administrador'),
(29, 'Can add contactenos', 8, 'add_contactenos'),
(30, 'Can change contactenos', 8, 'change_contactenos'),
(31, 'Can delete contactenos', 8, 'delete_contactenos'),
(32, 'Can view contactenos', 8, 'view_contactenos'),
(33, 'Can add proveedor', 9, 'add_proveedor'),
(34, 'Can change proveedor', 9, 'change_proveedor'),
(35, 'Can delete proveedor', 9, 'delete_proveedor'),
(36, 'Can view proveedor', 9, 'view_proveedor'),
(37, 'Can add turista', 10, 'add_turista'),
(38, 'Can change turista', 10, 'change_turista'),
(39, 'Can delete turista', 10, 'delete_turista'),
(40, 'Can view turista', 10, 'view_turista'),
(41, 'Can add servicio', 11, 'add_servicio'),
(42, 'Can change servicio', 11, 'change_servicio'),
(43, 'Can delete servicio', 11, 'delete_servicio'),
(44, 'Can view servicio', 11, 'view_servicio'),
(45, 'Can add reserva', 12, 'add_reserva'),
(46, 'Can change reserva', 12, 'change_reserva'),
(47, 'Can delete reserva', 12, 'delete_reserva'),
(48, 'Can view reserva', 12, 'view_reserva'),
(49, 'Can add comentario_ servicio', 13, 'add_comentario_servicio'),
(50, 'Can change comentario_ servicio', 13, 'change_comentario_servicio'),
(51, 'Can delete comentario_ servicio', 13, 'delete_comentario_servicio'),
(52, 'Can view comentario_ servicio', 13, 'view_comentario_servicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$O2uwBwwIZXdJ$yILR7KRDjODZiXm3j+XWHu9liCFiauva6wGuQGVPg2I=', '2019-09-19 03:47:31.728749', 1, 'david', '', '', 'david@david.com', 1, 1, '2019-09-19 03:47:14.587168');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-09-19 03:50:51.233271', '1', 'turista object (1)', 1, '[{\"added\": {}}]', 10, 1),
(2, '2019-09-19 03:51:23.914703', '1', 'turista object (1)', 3, '', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'villeta', 'administrador'),
(13, 'villeta', 'comentario_servicio'),
(8, 'villeta', 'contactenos'),
(9, 'villeta', 'proveedor'),
(12, 'villeta', 'reserva'),
(11, 'villeta', 'servicio'),
(10, 'villeta', 'turista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-09-19 03:05:03.179710'),
(2, 'auth', '0001_initial', '2019-09-19 03:05:04.877000'),
(3, 'admin', '0001_initial', '2019-09-19 03:05:13.196159'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-09-19 03:05:15.380361'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-09-19 03:05:15.541401'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-09-19 03:05:16.783898'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-09-19 03:05:17.814785'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-09-19 03:05:18.802405'),
(9, 'auth', '0004_alter_user_username_opts', '2019-09-19 03:05:18.844411'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-09-19 03:05:19.300464'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-09-19 03:05:19.361433'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-09-19 03:05:19.596529'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-09-19 03:05:20.222987'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-09-19 03:05:21.144790'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-09-19 03:05:22.360362'),
(16, 'auth', '0011_update_proxy_permissions', '2019-09-19 03:05:22.535631'),
(17, 'sessions', '0001_initial', '2019-09-19 03:05:22.878000'),
(18, 'villeta', '0001_initial', '2019-09-19 03:05:25.245133'),
(19, 'villeta', '0002_auto_20190918_2227', '2019-09-19 03:27:43.941657');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villeta_administrador`
--

CREATE TABLE `villeta_administrador` (
  `id_admin` int(11) NOT NULL,
  `nombre_admin` longtext NOT NULL,
  `contrasena` longtext NOT NULL,
  `correo` varchar(200) NOT NULL,
  `telefono` longtext NOT NULL,
  `municipio` longtext NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `villeta_administrador`
--

INSERT INTO `villeta_administrador` (`id_admin`, `nombre_admin`, `contrasena`, `correo`, `telefono`, `municipio`, `descripcion`, `imagen`) VALUES
(1, 'admon', '123', 'admon@admon.com', '123', 'zsdasd', 'asdasdasd', 'asdasdasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villeta_comentario_servicio`
--

CREATE TABLE `villeta_comentario_servicio` (
  `id_comentario` int(11) NOT NULL,
  `nombre_Usuario` longtext NOT NULL,
  `comentario` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villeta_comentario_servicio_id_servicio`
--

CREATE TABLE `villeta_comentario_servicio_id_servicio` (
  `id` int(11) NOT NULL,
  `comentario_servicio_id` int(11) NOT NULL,
  `servicio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villeta_contactenos`
--

CREATE TABLE `villeta_contactenos` (
  `id_contactenos` int(11) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `sugerencia` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `villeta_contactenos`
--

INSERT INTO `villeta_contactenos` (`id_contactenos`, `correo`, `sugerencia`) VALUES
(1, 'asd@asd.com', 'asdasdqwesdadasdasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villeta_proveedor`
--

CREATE TABLE `villeta_proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nit` longtext NOT NULL,
  `razon_social` longtext NOT NULL,
  `municipio` longtext NOT NULL,
  `tipo_servicio` longtext NOT NULL,
  `direccion` longtext NOT NULL,
  `telefono` longtext NOT NULL,
  `correo` varchar(250) NOT NULL,
  `contrasena` longtext NOT NULL,
  `imagen` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `villeta_proveedor`
--

INSERT INTO `villeta_proveedor` (`id_proveedor`, `nit`, `razon_social`, `municipio`, `tipo_servicio`, `direccion`, `telefono`, `correo`, `contrasena`, `imagen`) VALUES
(1, '123454', 'asdasd', 'asdasdads', 'asdasdasd', 'asdasdasd', '12344', 'asd@asd.com', '123', 'asdasdasdasd'),
(2, '12334', 'qwe', 'qwe', 'qwe', 'qwe1', '123', 'asd@ertyy', '123', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villeta_reserva`
--

CREATE TABLE `villeta_reserva` (
  `id_reserva` int(11) NOT NULL,
  `fecha_inicio` datetime(6) DEFAULT NULL,
  `fecha_fin` datetime(6) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `cantidad_personas` int(11) DEFAULT NULL,
  `pago` longtext NOT NULL,
  `razon_social` longtext NOT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `id_proveedor_id` int(11) NOT NULL,
  `nombre_usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villeta_servicio`
--

CREATE TABLE `villeta_servicio` (
  `id_servicio` int(11) NOT NULL,
  `nombre` longtext NOT NULL,
  `tipo_servicio` longtext NOT NULL,
  `cantidad_personas` int(11) DEFAULT NULL,
  `precio_persona` double DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` longtext NOT NULL,
  `puntiacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villeta_servicio_proveedor_servicio`
--

CREATE TABLE `villeta_servicio_proveedor_servicio` (
  `id` int(11) NOT NULL,
  `servicio_id` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villeta_turista`
--

CREATE TABLE `villeta_turista` (
  `id_turista` int(11) NOT NULL,
  `nombre` longtext NOT NULL,
  `apellido` longtext NOT NULL,
  `correo` varchar(250) NOT NULL,
  `telefono` longtext NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `estado_Civil` longtext NOT NULL,
  `gustos` longtext NOT NULL,
  `limitaciones` longtext NOT NULL,
  `ocupacion` longtext NOT NULL,
  `contrasena` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `villeta_turista`
--

INSERT INTO `villeta_turista` (`id_turista`, `nombre`, `apellido`, `correo`, `telefono`, `edad`, `estado_Civil`, `gustos`, `limitaciones`, `ocupacion`, `contrasena`) VALUES
(1, 'prueba', 'prueba', 'prueba@prueba.com', '12345456', 23, 'soltero', 'asdasdasd', 'asdasdasd', 'qweqweqweewq', '123'),
(2, 'sosa', 'qwe', 'qwe@asd', '12344123', 23, 'Soltero', '', '', '', '123'),
(3, 'asdqwe', 'qwe', 'wqerty@wqertyt', '12345', 23, 'Soltero', '', '', '', '123'),
(4, 'asdqwe', 'qwe', 'wqerty@wqertyt', '12345', 23, 'Soltero', '', '', '', '123'),
(5, 'asdqwe', 'qwe', 'wqerty@wqertyt', '12345', 23, 'Soltero', '', '', '', '123'),
(6, 'tyre', 'wr', 'e@e', '123', 34, 'Casado', '', '', '', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `villeta_administrador`
--
ALTER TABLE `villeta_administrador`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `villeta_comentario_servicio`
--
ALTER TABLE `villeta_comentario_servicio`
  ADD PRIMARY KEY (`id_comentario`);

--
-- Indices de la tabla `villeta_comentario_servicio_id_servicio`
--
ALTER TABLE `villeta_comentario_servicio_id_servicio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `villeta_comentario_servi_comentario_servicio_id_s_bbbf4ad5_uniq` (`comentario_servicio_id`,`servicio_id`),
  ADD KEY `villeta_comentario_s_servicio_id_8072831c_fk_villeta_s` (`servicio_id`);

--
-- Indices de la tabla `villeta_contactenos`
--
ALTER TABLE `villeta_contactenos`
  ADD PRIMARY KEY (`id_contactenos`);

--
-- Indices de la tabla `villeta_proveedor`
--
ALTER TABLE `villeta_proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `villeta_reserva`
--
ALTER TABLE `villeta_reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `villeta_reserva_id_proveedor_id_2ac313bb_fk_villeta_p` (`id_proveedor_id`),
  ADD KEY `villeta_reserva_nombre_usuario_id_12948268_fk_villeta_t` (`nombre_usuario_id`);

--
-- Indices de la tabla `villeta_servicio`
--
ALTER TABLE `villeta_servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `villeta_servicio_proveedor_servicio`
--
ALTER TABLE `villeta_servicio_proveedor_servicio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `villeta_servicio_proveed_servicio_id_proveedor_id_23df9c68_uniq` (`servicio_id`,`proveedor_id`),
  ADD KEY `villeta_servicio_pro_proveedor_id_4a272312_fk_villeta_p` (`proveedor_id`);

--
-- Indices de la tabla `villeta_turista`
--
ALTER TABLE `villeta_turista`
  ADD PRIMARY KEY (`id_turista`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `villeta_administrador`
--
ALTER TABLE `villeta_administrador`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `villeta_comentario_servicio`
--
ALTER TABLE `villeta_comentario_servicio`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `villeta_comentario_servicio_id_servicio`
--
ALTER TABLE `villeta_comentario_servicio_id_servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `villeta_contactenos`
--
ALTER TABLE `villeta_contactenos`
  MODIFY `id_contactenos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `villeta_proveedor`
--
ALTER TABLE `villeta_proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `villeta_reserva`
--
ALTER TABLE `villeta_reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `villeta_servicio`
--
ALTER TABLE `villeta_servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `villeta_servicio_proveedor_servicio`
--
ALTER TABLE `villeta_servicio_proveedor_servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `villeta_turista`
--
ALTER TABLE `villeta_turista`
  MODIFY `id_turista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `villeta_comentario_servicio_id_servicio`
--
ALTER TABLE `villeta_comentario_servicio_id_servicio`
  ADD CONSTRAINT `villeta_comentario_s_comentario_servicio__d5d51932_fk_villeta_c` FOREIGN KEY (`comentario_servicio_id`) REFERENCES `villeta_comentario_servicio` (`id_comentario`),
  ADD CONSTRAINT `villeta_comentario_s_servicio_id_8072831c_fk_villeta_s` FOREIGN KEY (`servicio_id`) REFERENCES `villeta_servicio` (`id_servicio`);

--
-- Filtros para la tabla `villeta_reserva`
--
ALTER TABLE `villeta_reserva`
  ADD CONSTRAINT `villeta_reserva_id_proveedor_id_2ac313bb_fk_villeta_p` FOREIGN KEY (`id_proveedor_id`) REFERENCES `villeta_proveedor` (`id_proveedor`),
  ADD CONSTRAINT `villeta_reserva_nombre_usuario_id_12948268_fk_villeta_t` FOREIGN KEY (`nombre_usuario_id`) REFERENCES `villeta_turista` (`id_turista`);

--
-- Filtros para la tabla `villeta_servicio_proveedor_servicio`
--
ALTER TABLE `villeta_servicio_proveedor_servicio`
  ADD CONSTRAINT `villeta_servicio_pro_proveedor_id_4a272312_fk_villeta_p` FOREIGN KEY (`proveedor_id`) REFERENCES `villeta_proveedor` (`id_proveedor`),
  ADD CONSTRAINT `villeta_servicio_pro_servicio_id_2fc9f76f_fk_villeta_s` FOREIGN KEY (`servicio_id`) REFERENCES `villeta_servicio` (`id_servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
