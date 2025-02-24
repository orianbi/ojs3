<?php
/* Smarty version 4.3.1, created on 2024-09-29 00:38:40
  from 'app:controllersgridlanguagesinstallLanguageForm.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_66f88570645486_34610777',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '09ba4722f9733f7836321948cce1105b138309c8' => 
    array (
      0 => 'app:controllersgridlanguagesinstallLanguageForm.tpl',
      1 => 1724443806,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
    'app:controllers/notification/inPlaceNotification.tpl' => 1,
  ),
),false)) {
function content_66f88570645486_34610777 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
>
	$(function() {
		// Attach the form handler.
		$('#installLanguageForm').pkpHandler('$.pkp.controllers.form.AjaxFormHandler');
	});
<?php echo '</script'; ?>
>

<form class="pkp_form" id="installLanguageForm" method="post" action="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_COMPONENT') ? constant('ROUTE_COMPONENT') : null),'component'=>"grid.admin.languages.AdminLanguageGridHandler",'op'=>"saveInstallLocale"),$_smarty_tpl ) );?>
">
	<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['csrf'][0], array( array(),$_smarty_tpl ) );?>

	<?php $_smarty_tpl->_subTemplateRender("app:controllers/notification/inPlaceNotification.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('notificationId'=>"installLanguageFormNotification"), 0, false);
?>

	<?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0] : null;
if (!is_callable(array($_block_plugin1, 'smartyFBVFormArea'))) {
throw new SmartyException('block tag \'fbvFormArea\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormArea', array('id'=>"availableLocalesFormArea",'title'=>"admin.languages.availableLocales"));
$_block_repeat=true;
echo $_block_plugin1->smartyFBVFormArea(array('id'=>"availableLocalesFormArea",'title'=>"admin.languages.availableLocales"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
		<?php $_block_plugin2 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin2, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array('list'=>"true",'description'=>"admin.languages.installNewLocalesInstructions"));
$_block_repeat=true;
echo $_block_plugin2->smartyFBVFormSection(array('list'=>"true",'description'=>"admin.languages.installNewLocalesInstructions"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['notInstalledLocales']->value, 'locale', false, NULL, 'locales', array (
));
$_smarty_tpl->tpl_vars['locale']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['locale']->value) {
$_smarty_tpl->tpl_vars['locale']->do_else = false;
?>
				<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"checkbox",'id'=>"locale-".((string)$_smarty_tpl->tpl_vars['locale']->value),'name'=>"localesToInstall[".((string)$_smarty_tpl->tpl_vars['locale']->value)."]",'value'=>$_smarty_tpl->tpl_vars['locale']->value,'label'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['allLocales']->value[$_smarty_tpl->tpl_vars['locale']->value] )),'translate'=>false),$_smarty_tpl ) );?>

			<?php
}
if ($_smarty_tpl->tpl_vars['locale']->do_else) {
?>
				<p><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"admin.languages.noLocalesAvailable"),$_smarty_tpl ) );?>
</p>
			<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
		<?php $_block_repeat=false;
echo $_block_plugin2->smartyFBVFormSection(array('list'=>"true",'description'=>"admin.languages.installNewLocalesInstructions"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
	<?php $_block_repeat=false;
echo $_block_plugin1->smartyFBVFormArea(array('id'=>"availableLocalesFormArea",'title'=>"admin.languages.availableLocales"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>

	<?php if (!empty($_smarty_tpl->tpl_vars['notInstalledLocales']->value)) {?>
		<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvFormButtons'][0], array( array('id'=>"installLanguageFormSubmit",'submitText'=>"common.save"),$_smarty_tpl ) );?>

	<?php }?>
</form>
<?php }
}
