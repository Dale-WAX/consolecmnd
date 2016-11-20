<?php

class HomePage extends Page {

	private static $has_many = array (
		'HomeSlides' => 'HomeSlide',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.HomeSlides', GridField::create(
			'HomeSlides',
			'Header Slides',
			$this->HomeSlides(),
			GridFieldConfig_RecordEditor::create()
		));

		return $fields;
	}	

}

class HomePage_Controller extends Page_controller {

	public function LatestArticles($count = 6) {
		return ArticlePage::get()
			->sort('Created', 'DESC')
			->limit($count);
	}

	public function init() {
		parent::init();
		Requirements::javascript($this->ThemeDir()."/javascript/homepage.js");
	    Requirements::javascript($this->ThemeDir()."/javascript/slick/slick.min.js");
	}	

}