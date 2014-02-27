<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'luciepersonaltra',
	"password" => 'XEj6CoVeh8A4xmcIubF8',
	"database" => 'luciepersonaltraining_db',
	"path" => '',
);

// Set the site locale
i18n::set_locale('en_US');