<?php
/**
 * Fusion Textbox Module
 * 
 * Allows textbox fields to be
 * declared in a theme's Fusion
 * configuration file.
 *
 * @author ShopDev
 * @version 2.0
 *
 * Copyright (c) 2012
 * This is NOT open source software
 */
class Textbox implements Module
{
	protected $name = '';
	protected $title = '';
	protected $description = '';
	protected $value;	
	
	public function __construct($value, $setting)
	{		
		$attributes = $setting['attributes'];
		
		$this->value = isset($value) ? $value : $attributes['default'];
		$this->name = $attributes['name'];
		$this->title = $attributes['title'];
		
		if (isset($attributes['description'])) $this->description = $attributes['description'];
	}
	
	public function paintConfiguration()
	{
		// Change template directory
		$GLOBALS['smarty']->template_dir = dirname(__FILE__);
		
		// Assign variables
		$GLOBALS['smarty']->assign('name', $this->name);
		$GLOBALS['smarty']->assign('title', $this->title);
		$GLOBALS['smarty']->assign('description', $this->description);
		$GLOBALS['smarty']->assign('value', $this->value);
		
		// Return rendered template
		return $GLOBALS['smarty']->fetch('textbox.tpl');
	}
	
	public function validate()
	{
		if (strlen(trim($this->value)) <= 0) return "A value is required for {$this->title}";
		
		return true;
	}
	
	public function yield()
	{
		return $this->value;
	}
}