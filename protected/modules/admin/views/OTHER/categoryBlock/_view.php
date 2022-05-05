<?php
/* @var $this CategoryBlockController */
/* @var $data CategoryBlock */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('category_id')); ?>:</b>
	<?php echo CHtml::encode($data->category_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sub_title')); ?>:</b>
	<?php echo CHtml::encode($data->sub_title); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sub_categorires')); ?>:</b>
	<?php echo CHtml::encode($data->sub_categorires); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('first_image')); ?>:</b>
	<?php echo CHtml::encode($data->first_image); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('second_image')); ?>:</b>
	<?php echo CHtml::encode($data->second_image); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('third_image')); ?>:</b>
	<?php echo CHtml::encode($data->third_image); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('best_seller')); ?>:</b>
	<?php echo CHtml::encode($data->best_seller); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('new_arrival')); ?>:</b>
	<?php echo CHtml::encode($data->new_arrival); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('update_by')); ?>:</b>
	<?php echo CHtml::encode($data->update_by); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('update_time')); ?>:</b>
	<?php echo CHtml::encode($data->update_time); ?>
	<br />

	*/ ?>

</div>