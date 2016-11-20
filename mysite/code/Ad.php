<?php

class Ad extends DataObject {

	private static $db = array(
		'Name' => 'VarChar',
		'FileName' => 'VarChar',
		'width' => 'VarChar',
		'height' => 'VarChar',
		'Description' => 'HTMLText',
	);

	private static $has_one = array(
		'Image' => 'Image',
		// 'AdFilesExtension' => 'File',
		'Files' => 'File',
		'ArticlePage' => 'ArticlePage',
	);

	// private static $many_many = array(
	// 	'AdFilesExtension' => 'File'
	// );

	private static $summary_fields = array(
		'Image.CMSThumbnail' => 'Thumbnail',
		'Name' => 'Name of Ad',
		'Description' => 'Description',
	);

	public function getCMSFields() {

		$fields = FieldList::create(
			TextField::create('Name'),
			TextField::create('FileName'),
			TextField::create('width'),
			TextField::create('height'),
			TextareaField::create('Description'),
			$uploader = UploadField::create('Image'),
			$adField = UploadField::create('Files')
		);

		$uploader->setFolderName('ad-thumbnail');
		$uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

		$adField->setFolderName('Ad-Files');
		// $adField->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));
		$adField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif', 'svg', 'doc', 'css', 'js', 'html'));
		$adField->setAllowedMaxFileNumber(20);

  //       $fields = parent::getCMSFields();

  //       $fields->addFieldToTab('Root.Main',    
  //           $adField = new UploadField(
  //               $name = 'AdFilesExtension',
  //               $title = 'Upload one or more files (max 20 in total)'
  //           )    
  //       );
  //       $adField->setAllowedMaxFileNumber(20);
  //       $adField->setFolderName('Ad-Files');
		// $adField->setAllowedExtensions(array('jpg', 'jpeg', 'png', 'gif', 'svg', 'doc', 'css', 'js', 'html'));
		// $adField->setPreviewMaxWidth(100);
		// $adField->setPreviewMaxHeight(100);

        return $fields;		
	}

	public function Link() {
        return $this->ArticlePage()->Link('show/'.$this->URLSegment);
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