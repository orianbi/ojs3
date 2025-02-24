<?php

/**
 * @file plugins/themes/default/DefaultChildThemePlugin.inc.php
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class DefaultChildThemePlugin
 * @ingroup plugins_themes_default
 *
 * @brief Default theme
 */
import('lib.pkp.classes.plugins.ThemePlugin');

class basicThemePlugin extends ThemePlugin {
	/**
	 * Initialize the theme's styles, scripts and hooks. This is only run for
	 * the currently active theme.
	 *
	 * @return null
	 */
	public function init() {
		$this->setParent('defaultmanuscriptchildthemeplugin');
		      $this->modifyStyle('stylesheet', array('addLess' => array('styles/index.less'))
		    );
			  $this->addStyle(
				'bootstrap',
				'https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css',
				array('baseUrl' => '')
			);			
			$this->addScript(
				'gooleapisjs',
				'https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js',
				array('baseUrl' => '')
			);

			  $this->addStyle('my-custom-style', 'styles/stylesheet.min.css'
			);
	}
	

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.themes.basic.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.basic.description');
	}
}

?>
