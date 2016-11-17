<?php

class BannerAd extends DataObject {

	private static $db = array (
		'Name' => 'Varchar',
		'Position' => 'Varchar(255)',
		'Description' => 'HTMLText',
		// 'URLSegment' => 'Varchar(255)',
	);

	private static $has_one = array (
		'BannerAdPage' => 'BannerAdPage',
	);

	private static $many_many = array (
		'Files' => 'Files'
	);

	private static $summary_fields = array (
		// 'Photo.CMSThumbnail' => '',
		'Name' => 'Name',
		'Position' => 'Position',
		'Description' => 'Bio',
		// 'URLSegment' => 'URLSegment',
	);

	public function getCMSFields() {
		$fields = FieldList::create(
			TextField::create('Name'),
			TextField::create('Position'),
			// TextField::create('URLSegment'),
			HtmlEditorField::create('Description'),
			$uploader = UploadField::create('Files')
		);

		$uploader->setFolderName('BannerAds');
		$uploader->getValidator()->setAllowedExtensions(array(
			'png','gif','jpeg','jpg','js','html','css'
		));

		return $fields;
	}


	public function Link() {
        return $this->BannerAdPage()->Link('show/'.$this->URLSegment);
    }

    public function LinkingMode() {
    	return Controller::curr()->getRequest()->param('ID') == $this->ID ? 'active' : 'link';
    }

    public function onBeforeWrite() {
        parent::onBeforeWrite();

        if((!$this->URLSegment || $this->URLSegment == '') && $this->Title != '') {
            if ($this->Title) { $this->URLSegment = SiteTree::create()->generateURLSegment($this->Title); }
        } else if ($this->isChanged('URLSegment')) {
            $segment = preg_replace('/[^A-Za-z0-9]+/','-',$this->URLSegment);
            $segment = preg_replace('/-+/','-',$segment);
            if(!$segment) {
                $segment = SiteTree::create()->generateURLSegment($this->Title);
            }
            $this->URLSegment = $segment;
        }
    }

}