<?php

class Award extends DataObject {

	private static $db = array(
        'AwardTitle' => 'Text',
        'AwardDescription' => 'Text',
        'AwardURL' => 'HTMLtext',
	);

	private static $has_one = array(
		'AwardImage' => 'Image',
		'ArticlePage' => 'ArticlePage',
	);

	private static $summary_fields = array(
		'AwardImage.CMSThumbnail' => 'Thumbnail',
		'AwardTitle' => 'Name of Award',
		'AwardDescription' => 'Description',
		'AwardURL' => 'URL'
	);

	public function getCMSFields() {

		$fields = FieldList::create(
			TextField::create('AwardTitle'),
			TextField::create('AwardDescription'),
			TextField::create('AwardURL'),
			$uploader = UploadField::create('AwardImage')
		);

		$uploader->setFolderName('Awards');
		$uploader->getValidator()->setAllowedExtensions(array('png','gif','jpeg','jpg'));

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