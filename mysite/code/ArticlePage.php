<?php

class ArticlePage extends Page {

	private static $db = array (
		'Date' => 'Date',
		'Teaser' => 'Text',
		'Author' => 'Varchar',
	);

	private static $has_one = array (
		'Photo' => 'Image',
		'Brochure' => 'File'
	);

	private static $many_many = array (
		'Categories' => 'ArticleCategory',
		'GalleryImage' => 'Image'
	);

	private static $can_be_root = false;

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', DateField::create('Date', 'Date of Article')
			->setConfig('showcalendar', true)
		, 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('Author', 'Author of Article'), 'Content');
		$fields->addFieldToTab('Root.Main', TextareaField::create('Teaser'), 'Content');

		$fields->addFieldToTab('Root.Gallery',
			$uploadField = new UploadField(
				$name = 'GalleryImage',
				$title = 'Upload one or more images (max 10 in total)'
			)
		);
		$uploadField->setAllowedMaxFileNumber(10);		
		$uploadField->setFolderName('ProjectGalleryImages');
		$uploadField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif', 'svg'));
		$uploadField->setPreviewMaxWidth(100);
		$uploadField->setPreviewMaxHeight(100);

		$fields->addFieldToTab('Root.Categories', CheckboxSetField::create(
			'Categories',
			'Selected Categories',
			$this->Parent()->Categories()->map('ID','Title')
		));
		
		return $fields;
	}

	public function CategoriesList() {
		if ($this->Categories()->exists()) {
			return implode(', ', $this->Categories()->column('Title'));
		}
	}

}

class ArticlePage_Controller extends Page_Controller {

}