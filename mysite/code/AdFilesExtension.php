<?php

    class AdFilesExtension extends DataExtension {
        
        private static $belongs_many_many = array(
        	'Ad' => 'Ad'
        );
        
    }