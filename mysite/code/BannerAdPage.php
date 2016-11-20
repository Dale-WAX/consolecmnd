<?php

class BannerAdPage extends Page {

	private static $has_many = array(
		'BannerAds' => 'BannerAd',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.BannerAds', GridField::create(
			'BannerAds',
			'BannerAds on this page',
			$this->BannerAds(),
			GridFieldConfig_RecordEditor::create()
		));

		return $fields;
	}
}

class BannerAdPage_Controller extends Page_Controller {

	// private static $allowed_actions = array (
	// 	'show',
	// );

	// public function show(SS_HTTPRequest $request) {
	// 	$bannerAd = BannerAd::get()->find('URLSegment', $request->param('ID'));

	// 	if (!$bannerAd) {
	// 		return $this->httpError(404, 'That ad could not be found.');
	// 	}

	// 	return array (
	// 		'BannerAd' => $bannerAd,
	// 		'Title' => $bannerAd->Title
	// 	);
	// }

}