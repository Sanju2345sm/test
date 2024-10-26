CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `code` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ads` (`id`, `name`, `type`, `code`, `status`) VALUES
(1, 'Default Banner Ads', 1, '<center><img src=\"/assets/img/160.png\"></center>', 1),
(2, 'Default Long Banner Ads', 2, '<center><img src=\"/assets/img/728.png\"></center>', 1);

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `Slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Md5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` mediumtext COLLATE utf8_unicode_ci,
  `Instructions` mediumtext COLLATE utf8_unicode_ci,
  `Thumbnail` mediumtext COLLATE utf8_unicode_ci,
  `ActiveThumbnail` int(3) DEFAULT '0',
  `Featured` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SubType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MobileMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Width` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Https` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Url` mediumtext COLLATE utf8_unicode_ci,
  `Asset` mediumtext COLLATE utf8_unicode_ci,
  `Category` mediumtext COLLATE utf8_unicode_ci,
  `Tag` mediumtext COLLATE utf8_unicode_ci,
  `Company` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Played` int(11) DEFAULT '0',
  `Playtime` int(11) DEFAULT '0',
  `image_store` int(2) DEFAULT '0',
  `image_store_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `game_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `total_game` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `game_categories` (`id`, `name`, `slug`, `description`, `total_game`) VALUES
(1, 'Arcade', 'arcade', '', NULL),
(2, '.IO', 'io', '', NULL),
(4, '3D', '3d', '', NULL),
(5, 'Action', 'action', '', NULL),
(6, 'Adventure', 'adventure', '', NULL),
(8, 'Shooting', 'shooting', '', NULL),
(9, 'Racing', 'racing', '', NULL),
(10, 'Girl', 'girl', '', NULL),
(11, 'Puzzle', 'puzzle', '', NULL);

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `pages` (`id`, `title`, `prefix`, `content`, `created`, `updated`) VALUES
(1, 'Privacy', 'privacy', 'Write content from admin panel.', 1646858413, 1646926119),
(2, 'Terms', 'terms', 'Write content from admin panel.', 1646858442, 1646925899);

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infoemail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supportemail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8_unicode_ci,
  `white_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enable_recaptcha` int(11) DEFAULT NULL,
  `recaptcha_publickey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recaptcha_privatekey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_section_h1` longtext COLLATE utf8_unicode_ci,
  `footer_section_text` longtext COLLATE utf8_unicode_ci,
  `footer_section_part_1_h1` longtext COLLATE utf8_unicode_ci,
  `footer_section_part_1_text` longtext COLLATE utf8_unicode_ci,
  `footer_section_part_2_h1` longtext COLLATE utf8_unicode_ci,
  `footer_section_part_2_text` longtext COLLATE utf8_unicode_ci,
  `footer_section_part_3_h1` longtext COLLATE utf8_unicode_ci,
  `footer_section_part_3_text` longtext COLLATE utf8_unicode_ci,
  `header` text COLLATE utf8_unicode_ci,
  `footer` text COLLATE utf8_unicode_ci,
  `gamepix_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `traffic_sources` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `today` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_recovery` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified` int(11) DEFAULT NULL,
  `email_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `account_type` int(11) DEFAULT NULL,
  `account_level` int(11) DEFAULT NULL,
  `account_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `signup_time` int(11) DEFAULT NULL,
  `wallet_passphrase` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `users_logs` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `u_field_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_field_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_field_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_field_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_field_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `game_categories`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `traffic_sources`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `game_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `traffic_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `users_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
