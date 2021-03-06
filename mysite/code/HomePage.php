<?php

class HomePage extends Page {

	private static $has_many = array (
		'HomeSlides' => 'HomeSlide',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$conf=GridFieldConfig_RelationEditor::create(10);
        $conf->addComponent(new GridFieldSortableRows('SortOrder'));

        $fields->addFieldToTab('Root.HomeSlides', new GridField('HomeSlides', 'HomeSlides', $this->HomeSlides(), $conf));

		return $fields;
	}	

}

class HomePage_Controller extends Page_controller {

	public function LatestArticles($count = 6) {
		return ArticlePage::get()
			->limit($count);
	}

	public function init() {
		parent::init();
		Requirements::javascript($this->ThemeDir()."/javascript/homepage.js");
	    Requirements::javascript($this->ThemeDir()."/javascript/slick/slick.min.js");
	}	

}