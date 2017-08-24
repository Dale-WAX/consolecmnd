<?php

class ArticlePage extends Page {

	private static $db = array (
		'Date' => 'Date',
		'Teaser' => 'Text',
		'GIF' => 'HTMLtext',
		'YoutubeTour' => 'HTMLtext',
		'SiteVideo' => 'HTMLtext',
		'SiteURL' => 'HTMLtext',
		'Content2' => 'HTMLText',
		'Content3' => 'HTMLText',
	);

	private static $has_one = array (
		'Thumbnail' => 'Image',
		'WebScrollerImage' => 'Image',
		'WebDevicesBrowser' => 'Image',
		'WebDevicesTablet' => 'Image',
		'WebDevicesPhone' => 'Image'
	);

	private static $has_many = array (
		'Ads' => 'Ad',
		'Awards' => 'Award',
	);

	private static $many_many = array (
		'Categories' => 'ArticleCategory',
		'GalleryImage' => 'Image',
		'WebGalleryImage' => 'Image',
		'WebLayoutImage' => 'Image'
	);

	private static $can_be_root = false;

	public function getCMSFields() {
		$fields = parent::getCMSFields();

        //MAIN
		$fields->addFieldToTab('Root.Main', DateField::create('Date', 'Date of Article')
			->setConfig('showcalendar', true)
		, 'Content');
		$fields->addFieldToTab('Root.Main', TextareaField::create('Teaser'), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('GIF', 'GFYCAT Slug'), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('YoutubeTour', 'YouTube Video ID'), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('SiteVideo', 'Video Embed'), 'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('SiteURL', 'URL'), 'Content');
        $fields->addFieldToTab('Root.Main', $Thumbnail = UploadField::create('Thumbnail', 'Thumbnail'), 'Content');
        $Thumbnail->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg', 'mp4'));
        $Thumbnail->setFolderName('Thumbnails');    
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content2', 'Content Middle'));
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('Content3', 'Content Bottom'));

        // SCROLLER
        $fields->addFieldToTab('Root.WebScrollerImage', $WebScrollerImage = UploadField::create('WebScrollerImage', 'Web Scroller Image'));
        $WebScrollerImage->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg', 'mp4'));
        $WebScrollerImage->setFolderName('WebScrollerImage');  

        // WEB DEVICES
        $fields->addFieldToTab('Root.WebDevices', $WebDevicesBrowser = UploadField::create('WebDevicesBrowser', 'Browser'));
        $fields->addFieldToTab('Root.WebDevices', $WebDevicesTablet = UploadField::create('WebDevicesTablet', 'Tablet'));
        $fields->addFieldToTab('Root.WebDevices', $WebDevicesPhone = UploadField::create('WebDevicesPhone', 'Phone'));
        $WebDevicesBrowser->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg', 'mp4'));
        $WebDevicesBrowser->setFolderName('WebDevices');
        $WebDevicesTablet->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg', 'mp4'));
        $WebDevicesTablet->setFolderName('WebDevices');
        $WebDevicesPhone->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg', 'mp4'));
        $WebDevicesPhone->setFolderName('WebDevices');

        //WEB LAYOUT
		$fields->addFieldToTab('Root.WebLayoutImage',
			$uploadField = new UploadField(
				$name = 'WebLayoutImage',
				$title = '1 2 or 3 items layout'
			)
		);
		$uploadField->setAllowedMaxFileNumber(3);
		$uploadField->setFolderName('ProjectWebGalleryImages');
		$uploadField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif', 'svg'));
		$uploadField->setPreviewMaxWidth(100);
		$uploadField->setPreviewMaxHeight(100);	

        //WEB GALLERY
		$fields->addFieldToTab('Root.WebGallery',
			$uploadField = new UploadField(
				$name = 'WebGalleryImage',
				$title = 'Upload one or more images (max 10 in total)'
			)
		);
		$uploadField->setAllowedMaxFileNumber(10);
		$uploadField->setFolderName('ProjectWebGalleryImages');
		$uploadField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif', 'svg'));
		$uploadField->setPreviewMaxWidth(100);
		$uploadField->setPreviewMaxHeight(100);

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

        //ADS
		$fields->addFieldToTab('Root.Ads', GridField::create(
			'Ads',
			'Ads on this page',
			$this->Ads(),
			GridFieldConfig_RecordEditor::create()
		));

        //AWARDS
		$fields->addFieldToTab('Root.Awards', GridField::create(
			'Awards',
			'Awards on this page',
			$this->Awards(),
			GridFieldConfig_RecordEditor::create()
		));
        
        //AWARDS - Single
  //       $fields->addFieldToTab('Root.Awards', TextField::create('AwardTitle', 'Award Title'));
  // 	   $fields->addFieldToTab('Root.Awards', TextField::create('AwardURL', 'URL'));
  //       $fields->addFieldToTab('Root.Awards', $AwardImage = UploadField::create('AwardImage', 'Award Image'));
  //       $AwardImage->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg', 'mp4'));
  //       $AwardImage->setFolderName('AwardImages');

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

