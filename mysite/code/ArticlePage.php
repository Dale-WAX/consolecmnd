<?php

class ArticlePage extends Page {

	private static $db = array (
		'Date' => 'Date',
		'Teaser' => 'Text',
		'GIF' => 'HTMLtext',
		'SiteVideo' => 'HTMLtext',
		'SiteURL' => 'HTMLtext',
        'AwardURL' => 'HTMLtext',
        'AwardTitle' => 'Text',
	);

	private static $has_one = array (
		'Thumbnail' => 'Image',
        'AwardImage' => 'Image'
	);

	private static $has_many = array (
		'Ads' => 'Ad',
	);

	private static $many_many = array (
		'Categories' => 'ArticleCategory',
		'GalleryImage' => 'Image'
//        'AwardImage' => 'Image'
	);

	private static $can_be_root = false;

	public function getCMSFields() {
		$fields = parent::getCMSFields();

        //MAIN
		$fields->addFieldToTab('Root.Main', DateField::create('Date', 'Date of Article')
			->setConfig('showcalendar', true)
		, 'Content');
		$fields->addFieldToTab('Root.Main', TextareaField::create('Teaser'), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('GIF', 'Animated GIF Embed Link'), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('SiteVideo', 'Site demo Video Embed Link'), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('SiteURL', 'URL'), 'Content');
        $fields->addFieldToTab('Root.Main', $Thumbnail = UploadField::create('Thumbnail', 'Thumbnail'), 'Content');
        $Thumbnail->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg', 'mp4'));
        $Thumbnail->setFolderName('Thumbnails');    

        //GALLERY
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
        
        //AWARDS
        $fields->addFieldToTab('Root.Awards', TextField::create('AwardTitle', 'Award Title'));
		$fields->addFieldToTab('Root.Awards', TextField::create('AwardURL', 'URL'));
        $fields->addFieldToTab('Root.Awards', $AwardImage = UploadField::create('AwardImage', 'Award Image'));
        $AwardImage->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg', 'mp4'));
        $AwardImage->setFolderName('AwardImages');
        
//		$fields->addFieldToTab('Root.Awards',
//			$uploadField = new UploadField(
//				$name = 'AwardImage',
//				$title = 'Upload one or more images (max 10 in total)'
//			)
//		);
//		$uploadField->setAllowedMaxFileNumber(10);
//		$uploadField->setFolderName('AwardImages');
//		$uploadField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif', 'svg'));
//		$uploadField->setPreviewMaxWidth(100);
//		$uploadField->setPreviewMaxHeight(100);

        //ADS
		$fields->addFieldToTab('Root.Ads', GridField::create(
			'Ads',
			'Ads on this page',
			$this->Ads(),
			GridFieldConfig_RecordEditor::create()
		));

        //CATEGORIES
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

	private static $allowed_actions = array (
		'show',
	);

	public function show(SS_HTTPRequest $request) {
		$ad = Leadership::get()->find('URLSegment', $request->param('ID'));

		if (!$ad) {
			return $this->httpError(404, 'That ad could not be found.');
		}

		return array (
			'Ad' => $ad,
			'Title' => $ad->Title
		);
	}

}

