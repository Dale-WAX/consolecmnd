<?php

class HomePage extends Page {

}

class HomePage_Controller extends Page_controller {

	public function LatestArticles($count = 6) {
		return ArticlePage::get()
			->sort('Created', 'DESC')
			->limit($count);
	}

}