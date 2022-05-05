<?php

/**
 * This is the model class for table "option".
 *
 * The followings are the available columns in table 'option':
 * @property integer $id
 * @property string $name
 * @property string $type
 * @property integer $sort_order
 * @property integer $update_by
 * @property string $update_time
 */
class Option extends CActiveRecord {

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'option';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('name, type, sort_order, update_by', 'required'),
            array('sort_order, update_by', 'numerical', 'integerOnly' => true),
            array('name', 'length', 'max' => 50),
            array('type', 'length', 'max' => 20),
            array('update_time', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, name, type, sort_order, update_by, update_time', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'name' => 'Name',
            'type' => 'Type',
            'sort_order' => 'Sort Order',
            'update_by' => 'Update By',
            'update_time' => 'Update Time',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     *
     * Typical usecase:
     * - Initialize the model fields with values from filter form.
     * - Execute this method to get CActiveDataProvider instance which will filter
     * models according to data in model fields.
     * - Pass data provider to CGridView, CListView or any similar widget.
     *
     * @return CActiveDataProvider the data provider that can return the models
     * based on the search/filter conditions.
     */
    public function search() {
        // @todo Please modify the following code to remove attributes that should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id);
        $criteria->compare('name', $this->name, true);
        $criteria->compare('type', $this->type, true);
        $criteria->compare('sort_order', $this->sort_order);
        $criteria->compare('update_by', $this->update_by);
        $criteria->compare('update_time', $this->update_time, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Option the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public static function getOptionTypes() {
        return array('select' => 'Select', 'radio' => 'Radio', 'image' => 'Image');
    }

    public static function dropDownWithGroup() {
        $data = array();
        $parent = Option::model()->findAll('id!="" group by type');
        foreach ($parent as $p) {
            $getChild = self::model()->findAll('type=:type', array(':type' => $p->type));
            if (count($getChild) > 0) {
                $child = array();
                foreach ($getChild as $c):
                    $child [$c->id] = $c->name;
                endforeach;
                $data[strtoupper($p->type)] = $child;
            }
        }
        return $data;
    }

    public static function getOptionContainer($type, $id, $name, $optionCount, $parentData = array(), $childData = array()) {
        if ($type == 'select' || $type == 'radio' || $type == 'image') {

            //Start Option Dropdown
            $optionDrop = '<select class="form-control" name="option[' . $optionCount . '][item_id][]">';
            $options = OptionItem::model()->findAll('option_id=:optionId', array(':optionId' => $id));
            foreach ($options as $op):
                $optionDrop .= '<option value="' . $op->id . '">' . $op->name . '</option>';
            endforeach;
            $optionDrop .= '</select>';
            //End Option dropdown
            
            //Start IsRequired Dropdown
            $isRequiredDrop = '<select class="form-control" name="option[' . $optionCount . '][required]">';
            if (count($parentData) > 0) {
                if ($parentData['isrequired'] == 'Yes')
                    $selectedYes = 'selected="selected"';
                else if ($parentData['isrequired'] == 'No')
                    $selectedNo = 'selected="selected"';
            } else {
                $selectedYes = '';
                $selectedNo = '';
            }
            $isRequiredDrop .='<option ' . $selectedYes . '>Yes</option>';
            $isRequiredDrop .='<option ' . $selectedNo . '>No</option>';
            $isRequiredDrop .='</select>';
            //End IsRequired Dropdown

            if (count($parentData) > 0) {
                if ($parentData['option_id'] == $op->id)
                    $selected = 'selected="selected"';
            }else {
                $selected = '';
            }

            if (count($childData) > 0) {
                $childContent = '';
                foreach ($childData as $childRow):
                    //Start Option Dropdown
                    $optionDrop = '<select class="form-control" name="option[' . $optionCount . '][item_id][]">';
                    $options = OptionItem::model()->findAll('option_id=:optionId', array(':optionId' => $id));
                    foreach ($options as $op):
                            if ($childRow->option_item_id == $op->id)
                                $selected = 'selected="selected"';
                            else
                                $selected='';
                        $optionDrop .= '<option ' . $selected . ' value="' . $op->id . '">' . $op->name . '</option>';
                    endforeach;
                    $optionDrop .= '</select>';
                    //End Option dropdown
                    
                    //Start price prefix Dropdown
                    $pricePrefixDrop = '<select class="form-control" name="option['.$optionCount.'][price_prefix][]">';
                    $selectedPlus='';
                    $selectedMinus='';
                    if ($childRow->price_prefix == '+')
                        $selectedPlus = 'selected="selected"';
                    else if ($childRow->price_prefix == '-')
                        $selectedMinus = 'selected="selected"';
                    $pricePrefixDrop .='<option ' . $selectedPlus . '>+</option>';
                    $pricePrefixDrop .='<option ' . $selectedMinus . '>-</option>';
                    $pricePrefixDrop .='</select>';
                    //End price prefix Dropdown
                    
                    
                    $childContent .= <<<CHILD
<tr>
<td class="text-left">
$optionDrop
</td>
<td class="text-right">
<input type="text" class="form-control" placeholder="Quantity" name="option[$optionCount][qty][]" value="$childRow->quantity">
</td>
<td class="text-right">
$pricePrefixDrop
<input type="text" class="form-control" placeholder="Price" name="option[$optionCount][price][]" value="$childRow->price">
</td>
<td class="text-left">
<button class="btn btn-danger" title="Remove" onclick="$(this).parent().parent().remove();" data-toggle="tooltip" type="button" data-original-title="Remove"><i class="fa fa-minus-circle"></i></button>
</td>
</tr>
CHILD;
                endforeach;
            } else {

                $childContent = <<<CHILD
<tr>
<td class="text-left">
$optionDrop
</td>
<td class="text-right">
<input type="text" class="form-control" placeholder="Quantity" name="option[$optionCount][qty][]" >
</td>
<td class="text-right">
<select class="form-control" name="option[$optionCount][price_prefix][]">
<option value="+">+</option>
<option value="-">-</option>
</select>
<input type="text" class="form-control" placeholder="Price" name="option[$optionCount][price][]">
</td>
<td class="text-left">
<button class="btn btn-danger" title="Remove" onclick="$(this).parent().parent().remove();" data-toggle="tooltip" type="button" data-original-title="Remove"><i class="fa fa-minus-circle"></i></button>
</td>
</tr>
CHILD;
            }




            $container = <<<CON
<div class="table-responsive" >

<div style="padding:5px; margin:10px 0px; background-color:#efefef; border-radius:5px;"><i class="fa fa-minus-circle" style="cursor: pointer; color:red" class="del-option-container" onclick="$(this).parent().parent().remove();"></i> $name</div>
                    
<input type="hidden" name="option[$optionCount][id]" value="$id">
<label>Required</label>
$isRequiredDrop
<br>           
<table class="table table-striped table-bordered table-hover" id="option-value$optionCount">
  <thead>
    <tr>
      <td class="text-left">Option Value</td>
      <td class="text-right">Quantity</td>
      <td class="text-right">Price</td>
      <td></td>
    </tr>
  </thead>
  <tbody>
    $childContent
    </tbody>
    <tfoot>
    <tr>
      <td colspan="3"></td>
      <td class="text-left">
          <button class="btn btn-primary" title="" data-toggle="tooltip" onclick="addOptionValue('$optionCount');" type="button" data-original-title="Add Option Value"><i class="fa fa-plus-circle"></i></button>
      </td>
    </tr>
  </tfoot>
</table>

<div id="hiddenTr$optionCount" style="display:none">
<table>
<tr>
<td class="text-left">
    $optionDrop
</td>
<td class="text-right">
    <input type="text" class="form-control" placeholder="Quantity" name="option[$optionCount][qty][]">
</td>
<td class="text-right">
    <select class="form-control" name="option[$optionCount][price_prefix][]">
        <option value="+">+</option>
        <option value="-">-</option>
    </select>
    <input type="text" class="form-control" placeholder="Price" name="option[$optionCount][price][]">
</td>
<td class="text-left">
    <button class="btn btn-danger" title="Remove" onclick="$(this).parent().parent().remove();" data-toggle="tooltip" type="button" data-original-title="Remove"><i class="fa fa-minus-circle"></i></button>
</td>
</tr>    
</table>
</div>
                    
</div>
CON;
            return $container;
        }
    }

}
