<?php

class HomeSlide extends DataObject {

	private static $db = array (
		'Title' => 'Varchar',
		'LinkText' => 'Varchar',
		'URLSegment' => 'Varchar(255)',
		'SortOrder'=>'Int'
	);

	private static $has_one = array (
		'Photo' => 'Image',
		'HomePage' => 'HomePage',
	);

	public static $default_sort='SortOrder';

	private static $summary_fields = array (
		'Photo.CMSThumbnail' => 'Slider Image',
		'Title' => 'Title',
		'LinkText' => 'LinkText',
		'URLSegment' => 'URLSegment',
	);

	public function getCMSFields() {
		$fields = FieldList::create(
			TextField::create('Title'),
			TextField::create('LinkText'),
			TextField::create('URLSegment'),
			$uploader = UploadField::create('Photo')
		);

		$uploader->setFolderName('homepage-slider');
		$uploader->getValidator()->setAllowedExtensions(array(
			'png','gif','jpeg','jpg'
		));

		return $fields;
	}

}