<?php

class AdPage extends Page {

	private static $db = array (
		'Date' => 'Date',
		'Teaser' => 'Text'
	);

	private static $has_one = array (
		'Thumbnail' => 'Image'
	);

	private static $many_many = array (
		'AdFiles' => 'Files',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', DateField::create('Date', 'Date of Article')
			->setConfig('showcalendar', true)
		, 'Content');
		$fields->addFieldToTab('Root.Main', TextareaField::create('Teaser'), 'Content');

        $fields->addFieldToTab('Root.Main', $Thumbnail = UploadField::create('Thumbnail', 'Thumbnail'), 'Content');
        $Thumbnail->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg', 'mp4'));
        $Thumbnail->setFolderName('Thumbnails'); 

		$fields->addFieldToTab('Root.BannerAds', GridField::create(
			'Ads',
			'Ads on this page.',
			$this->Ads(),
			GridFieldConfig_RecordEditor::create()
		)); 		

		return $fields;
	}
}

class AdPage_Controller extends Page_Controller {

}