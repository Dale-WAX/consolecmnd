<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array (
        'HeaderPhoto' => 'Image'
    );
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', $photo = UploadField::create('HeaderPhoto', 'Header Image'), 'Content');
        
        $photo->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg'));
        $photo->setFolderName('header-photos');

        return $fields;
    }

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();
        Requirements::css($this->ThemeDir()."/css/app.css");
        Requirements::css($this->ThemeDir()."/css/styles.css");
        Requirements::css($this->ThemeDir()."/css/print.css");
        Requirements::Javascript($this->ThemeDir()."/bower_components/modernizr/modernizr.js");
        Requirements::Javascript($this->ThemeDir()."/bower_components/jquery/dist/jquery.min.js");
        Requirements::Javascript($this->ThemeDir()."/bower_components/foundation/js/foundation.min.js");
        // Requirements::Javascript($this->ThemeDir()."/javascript/gfyjs.js");
        Requirements::Javascript($this->ThemeDir()."/javascript/app.js");
	}
		// Requirements::Javascript($this->ThemeDir()."/javascript/masonry.pkgd.min.js");
		// Requirements::Javascript($this->ThemeDir()."/javascript/imagesloaded.pkgd.min.js");
    
    public function PrevNextPage($Mode = 'next') {
	   
	  if($Mode == 'next'){
	    $Where = "ParentID = ($this->ParentID) AND Sort > ($this->Sort)";
	    $Sort = "Sort ASC";
	  }
	  elseif($Mode == 'prev'){
	    $Where = "ParentID = ($this->ParentID) AND Sort < ($this->Sort)";
	    $Sort = "Sort DESC";
	  }
	  else{
	    return false;
	  }
	   
	  return DataObject::get("SiteTree", $Where, $Sort, null, 1);
	     
	}

	public function NumberOfSiblings(){
	    return DataObject::get("SiteTree","ParentID = ($this->ParentID)")->Count();
	}
	public function CurrentPageNumber(){
	    return (DataObject::get("SiteTree","ParentID = ($this->ParentID) AND Sort <= ($this->Sort)")->Count());
	}

}
