<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of EasyCode
 *
 * @author Rajib
 */
class EasyCode
{

    public function init()
    {

    }


    public function loadStatusDropdownOptions()
    {
        return array('1' => 'Enable', '0' => 'Disable');
    }

    public function getLastSortingNumber($model, $col)
    {
        $model = new $model;
        $getLastSort = $model->findBySql('select max(' . $col . ') as ' . $col . ' from `' . $model->tableName() . '`');
        return $getLastSort[$col] + 1;
    }

    public function getStatusOptions($all = '')
    {
        if ($all == '')
            return array('1' => 'Enable', '0' => 'Disable');
        else
            return array('' => $all, '1' => 'Enable', '0' => 'Disable');
    }

    public function getStatus($status)
    {
        if ($status == '1')
            $val = '<span class="btn btn-success btn-sm">Enabled</span>';
        else
            $val = '<span class="btn btn-danger btn-sm">Disabled</span>';
        return $val;
    }

    public function genPass($pass)
    {
        return md5($pass);
    }

    public function genFileName($ext)
    {
        $file = time() . rand(1, 999) . '.' . $ext;
        $path = UPLOAD . '/' . $file;
        if (!file_exists($path))
            return $file;
        else
            $this->genFileName($ext);
    }

    public function showOriginalImage($file, $type = 'path')
    {
        if ($file != '') {
            if (file_exists(UPLOAD . '/' . $file)) {
                if ($type == 'path')
                    echo Yii::app()->request->baseurl . '/upload/' . $file;
            }
        }
    }

    public function actualshowImage($file, $width, $height, $retunImg = true)
    {

        $option = array(
            'width' => $width,
            'height' => $height,
            //'link' => '#',
            'hint' => 'false',
            'crop' => false,
            'sharpen' => 'true',
            //'longside' => $width,
            // Any $htmlOptions that can be used in CHtml::image()
            'imgOptions' => array('class' => 'thumb_image'),
            'imgAlt' => $file,
        );


        if ($file != '') {
            //return CHtml::image($folder.$file,$file);
            if (file_exists(UPLOAD . '/' . $file)) {
                return Yii::app()->thumb->render(UPLOAD . '/' . $file, $option, $retunImg);
            }
        }
    }

    public function showImage($file, $width, $height, $retunImg = true, $crop = true, $longside = true)
    {
        if ($longside) {
            $option = array(
                'width' => $width,
                'height' => $height,
                //'link' => '#',
                'hint' => 'false',
                'crop' => $crop,
                'sharpen' => 'true',
                'longside' => $width,
                // Any $htmlOptions that can be used in CHtml::image()
                'imgOptions' => array('class' => 'thumb_image opt1'),
                'imgAlt' => $file,
            );
        } else {
            $option = array(
                'width' => $width,
                'height' => $height,
                //'link' => '#',
                'hint' => 'false',
                'crop' => $crop,
                'sharpen' => 'true',
                'longside' => $height,
                // Any $htmlOptions that can be used in CHtml::image()
                'imgOptions' => array('class' => 'thumb_image opt2'),
                'imgAlt' => $file,
            );
        }

        if ($file != '') {
            //return CHtml::image($folder.$file,$file);
            if (file_exists(UPLOAD . '/' . $file)) {
                return Yii::app()->thumb->render(UPLOAD . '/' . $file, $option, $retunImg);
            }
        }
    }

    public function deleteFile($file)
    {
        if ($file != '' && file_exists(UPLOAD . '/' . $file)) {
            unlink(UPLOAD . '/' . $file);
        }
    }

    public function showNotification()
    {
        $var = '';
        if (Yii::app()->user->hasFlash('success')) {
            $var .= '<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' . Yii::app()->user->getFlash('success') . '</div>';
        }
        if (Yii::app()->user->hasFlash('error')) {
            $var .= '<div class="alert alert-danger"><i class="fa fa-times-circle"></i> ' . Yii::app()->user->getFlash('error') . '</div>';
        }
        if (Yii::app()->user->hasFlash('warning')) {
            $var .= '<div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> ' . Yii::app()->user->getFlash('warning') . '</div>';
        }
        return $var;
    }

    public function isActive($routes = array(), $module, $id, $controller)
    {
        $routeCurrent = '';
        if ($module !== null) {
            $routeCurrent .= sprintf('%s/', $module->id);
        }
        $routeCurrent .= sprintf('%s/%s', $id, $controller);
        foreach ($routes as $route) {
            $pattern = sprintf('~%s~', preg_quote($route));
            if (preg_match($pattern, $routeCurrent)) {
                return true;
            }
        }
        return false;
    }

}
