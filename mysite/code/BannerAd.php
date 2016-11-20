<?php

class BannerAd extends DataObject {

	private static $db = array(
		'Title' => 'Varchar',
		'Description' => 'HTMLText',
	);

	private static $has_one = array (
		'Photo' => 'Image',
		'BannerAdPage' => 'BannerAdPage',
	);

	// private static $summary_fields = array (
		// 'Photo.CMSThumbnail' => '',
		// 'Name' => 'Name',
		// 'Position' => 'Position',
		// 'Description' => 'Bio',
		// 'URLSegment' => 'URLSegment',
	// );

	public function getCMSFields() {
		$fields = FieldList::create(
			TextField::create('Title'),
			TextareaField::create('Description'),
			$uploader = UploadField::create('Photo')
		);

		$uploader->setFolderName('leadership-photos');
		$uploader->getValidator()->setAllowedExtensions(array(
			'png','gif','jpeg','jpg'
		));

		return $fields;
	}	


	// public function Link() {
 //        return $this->BannerAdPage()->Link('show/'.$this->URLSegment);
 //    }

 //    public function LinkingMode() {
 //    	return Controller::curr()->getRequest()->param('ID') == $this->ID ? 'active' : 'link';
 //    }

 //    public function onBeforeWrite() {
 //        parent::onBeforeWrite();

 //        if((!$this->URLSegment || $this->URLSegment == '') && $this->Title != '') {
 //            if ($this->Title) { $this->URLSegment = SiteTree::create()->generateURLSegment($this->Title); }
 //        } else if ($this->isChanged('URLSegment')) {
 //            $segment = preg_replace('/[^A-Za-z0-9]+/','-',$this->URLSegment);
 //            $segment = preg_replace('/-+/','-',$segment);
 //            if(!$segment) {
 //                $segment = SiteTree::create()->generateURLSegment($this->Title);
 //            }
 //            $this->URLSegment = $segment;
 //        }
 //    }

}