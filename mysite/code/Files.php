<?php

class Files extends DataExtension {

    private static $db = array(
        'Description' => 'Text'
    );

    private static $belongs_many_many = array(
        'BannerAd' => 'BannerAd'
    );
}