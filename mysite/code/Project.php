<?php

class Project extends DataObject {

	private static $db = array (
		'Name' => 'VarChar',
		'Date' => 'Date',
		'Description' => 'HTMLText',
	);

	private static $has_one = array (
		'Image' => 'Image',
		'ProjectsPage' => 'ProjectsPage',
	);

	private static $summary_fields = array (
		'Image.CMSThumbnail' => '',
		'Name' => 'Name',
		'Date' => 'Date',
		'Description' => 'Description',
	);

	public function getCMSFields() {
        $fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Main', TextField::create('Name','Project Name'));
        $fields->addFieldToTab('Root.Main', DateField::create('Date','Project Date')
            ->setConfig('showcalendar', true)
            ->setConfig('dateformat', 'd MMMM yyyy'));
		$fields->addFieldToTab('Root.Main', TextareaField::create('Description','Short Project Description'));
        $fields->addFieldToTab('Root.Main', $image = UploadField::create('Image', 'Image'));
        $image->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg'));
        $image->setFolderName('Projects');        

        return $fields;		
	}

}