<?php
/* @var $this ProductsController */
/* @var $data Products */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
	<?php echo CHtml::encode($data->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('description')); ?>:</b>
	<?php echo CHtml::encode($data->description); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('metatag_title')); ?>:</b>
	<?php echo CHtml::encode($data->metatag_title); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('metatag_description')); ?>:</b>
	<?php echo CHtml::encode($data->metatag_description); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('metatag_keywords')); ?>:</b>
	<?php echo CHtml::encode($data->metatag_keywords); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('image')); ?>:</b>
	<?php echo CHtml::encode($data->image); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('model')); ?>:</b>
	<?php echo CHtml::encode($data->model); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sku')); ?>:</b>
	<?php echo CHtml::encode($data->sku); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('price')); ?>:</b>
	<?php echo CHtml::encode($data->price); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('quantity')); ?>:</b>
	<?php echo CHtml::encode($data->quantity); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('minimum_quantity')); ?>:</b>
	<?php echo CHtml::encode($data->minimum_quantity); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('substract_stock')); ?>:</b>
	<?php echo CHtml::encode($data->substract_stock); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('outofstock_status')); ?>:</b>
	<?php echo CHtml::encode($data->outofstock_status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('seo_keyword')); ?>:</b>
	<?php echo CHtml::encode($data->seo_keyword); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('manufacturer')); ?>:</b>
	<?php echo CHtml::encode($data->manufacturer); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('status')); ?>:</b>
	<?php echo CHtml::encode($data->status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sort_order')); ?>:</b>
	<?php echo CHtml::encode($data->sort_order); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('update_by')); ?>:</b>
	<?php echo CHtml::encode($data->update_by); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('update_time')); ?>:</b>
	<?php echo CHtml::encode($data->update_time); ?>
	<br />

	*/ ?>

</div>