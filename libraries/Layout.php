<?php 


class Layout
{

	public $layout		= '';
	public $js			= '';
	public $css			= '';
	public $script		= '';
	public $style		= '';
	public $title       = '';
	public $messages = array();
	
	public function __construct($layout = 'default')
	{
		$this->set_layout($layout);
	}
	
	//SETTERS
	public function set_layout($layout)
	{
		$this->layout	= $layout.'.php';
	}
	
	public function set_title($title)
	{
		$this->title = $title;
	}
	
	public function set_style($style)
	{
		$this->style = $style;
	}
	
	public function set_css($files = array())
	{
		if(is_array($files)) {
			foreach ( $files as $file )
			$this->js .= '<script type="text/javascript" src="'.$file.'"></script>';
			
		}
		else {
			$this->css .= '<link href="'.$files.'" rel="stylesheet" type="text/css"/>
			';
		}
	}
	
	public function set_script($script)
	{
		$this->script .= $script;
	}
	
	public function set_js($files)
	{
		if(is_array($files)) {
			foreach ( $files as $file )
			$this->js .= '<script type="text/javascript" src="'.$file.'"></script>';
		}
		else {
			$this->js .= '<script type="text/javascript" src="'.$files.'"></script>';
		}
	}
	
	public function set_messages($messages = array())
	{
		foreach($messages as $type=>$message)
		{
			$this->messages[$type] = $message;
		}
	}
	
	//GETTERS
	public function get_script()
	{
		return $this->script;
	}
	public function get_style()
	{
		return $this->style;
	}	
	public function get_title()
	{
		return $this->title;
	}	
	public function get_css()
	{
		return $this->css;
	}	
	public function get_js()
	{
		return $this->js;
	}
	
	public function get_messages()
	{
		if(empty($this->messages))
		{return FALSE;}
		else
		{
			return $this->messages;
		}
	}
	
	public function view($view = null, $data = array(), $return = false)
	{
		$render_view = $this->generate_view($view, $data);
		
		print $render_layout = $this->generate_view('layouts/'.$this->layout, $render_view);
	}
	
	function generate_view($view = null, $content_data = null) {
		
		if(is_array($content_data))
		{
			extract($content_data);
		}
		
		ob_start();

		include ('views/'.$view);

		return ob_get_clean();
	}
}
