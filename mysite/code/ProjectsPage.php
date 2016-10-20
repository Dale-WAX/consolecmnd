<?php

class ProjectsPage extends Page {

	private static $has_many = array (
		'Projects' => 'Project',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Projects', GridField::create(
			'Projects',
			'Projects on this page.',
			$this->Projects(),
			GridFieldConfig_RecordEditor::create()
		));

		return $fields;
	}
}

class ProjectsPage_Controller extends Page_Controller {

}