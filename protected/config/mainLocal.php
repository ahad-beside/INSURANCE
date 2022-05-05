<?php
date_default_timezone_set('Asia/Kabul');
// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');
// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
    'basePath' => dirname(__FILE__) . DIRECTORY_SEPARATOR . '..',
    'name' => 'Instant Life Insurance',
    'theme' => 'insurance',
    // preloading 'log' component
    'preload' => array('log'),
    
    
    
    // autoloading model and component classes
    'import' => array(
        'application.models.*',
        'application.components.*',
        'ext.YiiMailer.YiiMailer',
    ),
    'modules' => array(
        'shop' => array('debug' => 'true'),
        'admin'=>array('defaultController'=>'dashboard'),
        'gii' => array(
            'class' => 'system.gii.GiiModule',
            'password' => '123456',
            // If removed, Gii defaults to localhost only. Edit carefully to taste.
            'ipFilters' => array('127.0.0.1', '::1'),
        ),
    ),
    // application components
    'components' => array(
        'Cookies' => array('class' => 'application.components.CookiesHelper'),
        //YiimageThumb
        'thumb' => array(
            'class' => 'YiimageThumb'
        ),
        //EasyCode Components
        'easycode'=>array('class'=>'EasyCode'),
        'ePdf' => array(
            'class' => 'ext.yii-pdf.EYiiPdf',
            'params' => array(
                'mpdf' => array(
                    'librarySourcePath' => 'application.vendors.mpdf.*',
                    'constants' => array(
                        '_MPDF_TEMP_PATH' => Yii::getPathOfAlias('application.runtime'),
                    ),
                    'class' => 'mpdf', // the literal class filename to be loaded from the vendors folder
                    'defaultParams'     => array( // More info: http://mpdf1.com/manual/index.php?tid=184
                        'mode'              => '', //  This parameter specifies the mode of the new document.
                        'format'            => 'A4', // format A4, A5, ...
                        'default_font_size' => 12, // Sets the default document font size in points (pt)
                        'default_font'      => 'Arial', // Sets the default font-family for the new document.
                        'mgl'               => 5, // margin_left. Sets the page margins for the new document.
                        'mgr'               => 5, // margin_right
                        'mgt'               => 6, // margin_top
                        'mgb'               => 6, // margin_bottom
                        'mgh'               => 9, // margin_header
                        'mgf'               => 9, // margin_footer
                        'orientation'       => 'P', // landscape or portrait orientation
                    )
                ),
                'HTML2PDF' => array(
                    'librarySourcePath' => 'application.vendors.html2pdf.*',
                    'classFile' => 'html2pdf.class.php', // For adding to Yii::$classMap
                    'defaultParams' => array(// More info: http://wiki.spipu.net/doku.php?id=html2pdf:en:v4:accueil
                        'orientation' => 'P', // landscape or portrait orientation
                        'format' => 'A4', // format A4, A5, ...
                        'language' => 'en', // language: fr, en, it ...
                        'unicode' => true, // TRUE means clustering the input text IS unicode (default = true)
                        'encoding' => 'UTF-8', // charset encoding; Default is UTF-8
                        'marges' => array(5, 5, 5, 8), // margins by default, in order (left, top, right, bottom)
                    )
                )
            ),
        ),
        'clientScript' => array(
            'scriptMap' => array(
                'jquery.js' => false,
                'jquery.min.js' => false,
            ),
        /* 'packages' => array(
          'jquery' => array(
          'baseUrl' => 'js/',
          'js' => array('jquery-1.11.0.js'),
          'coreScriptPosition' => CClientScript::POS_HEAD
          ),
          ), */
        ),
        'user' => array(
            // enable cookie-based authentication
            'allowAutoLogin' => true,
            'class' => 'EWebUser',
        ),
        // uncomment the following to enable URLs in path-format
        'urlManager' => array(
            'urlFormat' => 'path',
            'showScriptName' => false,
            'urlSuffix'=>'.jsp',
            'caseSensitive'=>false,
            'rules' => array(
                '<controller:\w+>/<id:\d+>' => array('<controller>/view'),
                '<controller:\w+>/<action:\w+>/<id:\d+>' => array('<controller>/<action>'),
                '<controller:\w+>/<action:\w+>' => array('<controller>/<action>'),
                
                '<module:\w+>/<controller:\w+>/<id:\d+>' => array('<module>/<controller>/view.jsp'),
                '<module:\w+>/<controller:\w+>/<action:\w+>/<id:\d+>' => array('<module>/<controller>/<action>'),
                '<module:\w+>/<controller:\w+>/<action:\w+>' => array('<module>/<controller>/<action>'),
            ),
        ),
        /* 'db' => array(
          'connectionString' => 'sqlite:' . dirname(__FILE__) . '/../data/testdrive.db',
          ), */
        // uncomment the following to use a MySQL database
        'db' => array(
            'connectionString' => 'mysql:host=localhost;dbname=insur-form',
            'emulatePrepare' => true,
            'username' => 'pk_admin',
            //'password' => 'fokirnirPUT2020',
            'password' => 'pk7171',
            'charset' => 'utf8',
            //'enableParamLogging' => true,
        ),
        'errorHandler' => array(
            // use 'site/error' action to display errors
            'errorAction' => 'site/error',
        ),
        'log' => array(
            'class' => 'CLogRouter',
            'routes' => array(
                array(
                    'class' => 'CFileLogRoute',
                    'levels' => 'error, warning',
                ),
            // uncomment the following to show log messages on web pages
            /*
              array(
              'class'=>'CWebLogRoute',
              ),
             */
            ),
        ),
    ),
    // application-level parameters that can be accessed
    // using Yii::app()->params['paramName']
    'params' => array(
        // this is used in contact page
        'SERVER_HOST' => 'http://localhost/cms/',
        'SITE_URL' => 'http://localhost',
        'md5Key'=>2441139,
        'companyLogo' => '/images/logo.png',
        'adminEmail' => 'info@coder71.com',
        'currencySymbol'=>'BD. ',
        'countryName'=>'Bangladesh',
        'bankName'=>'Bangladesh Bank',
        'bankAccountNumber'=>'10000000',
    ),
);
