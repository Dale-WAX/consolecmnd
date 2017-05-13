<?php

class SiteConfigExtension extends DataExtension {

	private static $db = array (
		'TwitterLink' => 'Varchar',
        'InstagramLink' => 'Varchar',
		'EmailLink' => 'Varchar',
		'FooterContent' => 'Text',
		'FooterContentLink' => 'Varchar(255)',
	);

	public function updateCMSFields(FieldList $fields) {
		$fields->addFieldsToTab('Root.Social', array (
			TextField::create('TwitterLink', 'Twitter'),
            TextField::create('InstagramLink', 'Instagram'),
			TextField::create('EmailLink', 'Email Address')
		));

    $fields->addFieldToTab('Root.Main', TextField::create('FooterContent','Link Text'));
    $fields->addFieldToTab('Root.Main', TextField::create('FooterContentLink','Link'));
	}

}