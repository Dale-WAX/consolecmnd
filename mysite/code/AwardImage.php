<?php

class AwardImage extends DataExtension {

    private static $db = array(
        'Description' => 'Text'
    );

    private static $belongs_many_many = array(
        'ArticlePage' => 'ArticlePage'
    );
}