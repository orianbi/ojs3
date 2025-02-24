<?php
/* Smarty version 4.3.1, created on 2024-09-28 15:30:21
  from 'plugins-1-plugins-importexport-crossref-importexport-crossref:settingsForm.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_66f804ed0c5cf1_72416508',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f4eb76e24252bd6fa40d1a436544d3d9c24c8de3' => 
    array (
      0 => 'plugins-1-plugins-importexport-crossref-importexport-crossref:settingsForm.tpl',
      1 => 1724443545,
      2 => 'plugins-1-plugins-importexport-crossref-importexport-crossref',
    ),
  ),
  'includes' => 
  array (
    'app:linkAction/linkAction.tpl' => 1,
  ),
),false)) {
function content_66f804ed0c5cf1_72416508 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 type="text/javascript">
	$(function() {
		// Attach the form handler.
		$('#crossrefSettingsForm').pkpHandler('$.pkp.controllers.form.AjaxFormHandler');
	});
<?php echo '</script'; ?>
>
<form class="pkp_form" id="crossrefSettingsForm" method="post" action="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_COMPONENT') ? constant('ROUTE_COMPONENT') : null),'op'=>"manage",'plugin'=>"CrossRefExportPlugin",'category'=>"importexport",'verb'=>"save"),$_smarty_tpl ) );?>
">
	<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['csrf'][0], array( array(),$_smarty_tpl ) );?>

	<?php if ($_smarty_tpl->tpl_vars['doiPluginSettingsLinkAction']->value) {?>
		<?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0] : null;
if (!is_callable(array($_block_plugin1, 'smartyFBVFormArea'))) {
throw new SmartyException('block tag \'fbvFormArea\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormArea', array('id'=>"doiPluginSettingsLink"));
$_block_repeat=true;
echo $_block_plugin1->smartyFBVFormArea(array('id'=>"doiPluginSettingsLink"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
			<?php $_block_plugin2 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin2, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array());
$_block_repeat=true;
echo $_block_plugin2->smartyFBVFormSection(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
				<?php $_smarty_tpl->_subTemplateRender("app:linkAction/linkAction.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('action'=>$_smarty_tpl->tpl_vars['doiPluginSettingsLinkAction']->value), 0, false);
?>
			<?php $_block_repeat=false;
echo $_block_plugin2->smartyFBVFormSection(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
		<?php $_block_repeat=false;
echo $_block_plugin1->smartyFBVFormArea(array('id'=>"doiPluginSettingsLink"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
	<?php }?>
	<?php $_block_plugin3 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0] : null;
if (!is_callable(array($_block_plugin3, 'smartyFBVFormArea'))) {
throw new SmartyException('block tag \'fbvFormArea\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormArea', array('id'=>"crossrefSettingsFormArea"));
$_block_repeat=true;
echo $_block_plugin3->smartyFBVFormArea(array('id'=>"crossrefSettingsFormArea"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
		<p class="pkp_help"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.crossref.settings.depositorIntro"),$_smarty_tpl ) );?>
</p>
		<?php $_block_plugin4 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin4, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array());
$_block_repeat=true;
echo $_block_plugin4->smartyFBVFormSection(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
			<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"text",'id'=>"depositorName",'value'=>$_smarty_tpl->tpl_vars['depositorName']->value,'required'=>"true",'label'=>"plugins.importexport.crossref.settings.form.depositorName",'maxlength'=>"60",'size'=>$_smarty_tpl->tpl_vars['fbvStyles']->value['size']['MEDIUM']),$_smarty_tpl ) );?>

			<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"text",'id'=>"depositorEmail",'value'=>$_smarty_tpl->tpl_vars['depositorEmail']->value,'required'=>"true",'label'=>"plugins.importexport.crossref.settings.form.depositorEmail",'maxlength'=>"90",'size'=>$_smarty_tpl->tpl_vars['fbvStyles']->value['size']['MEDIUM']),$_smarty_tpl ) );?>

		<?php $_block_repeat=false;
echo $_block_plugin4->smartyFBVFormSection(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
		<?php $_block_plugin5 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin5, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array());
$_block_repeat=true;
echo $_block_plugin5->smartyFBVFormSection(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
			<p class="pkp_help"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.crossref.registrationIntro"),$_smarty_tpl ) );?>
</p>
			<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"text",'id'=>"username",'value'=>$_smarty_tpl->tpl_vars['username']->value,'label'=>"plugins.importexport.crossref.settings.form.username",'maxlength'=>"120",'size'=>$_smarty_tpl->tpl_vars['fbvStyles']->value['size']['MEDIUM']),$_smarty_tpl ) );?>

			<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"text",'password'=>"true",'id'=>"password",'value'=>$_smarty_tpl->tpl_vars['password']->value,'label'=>"plugins.importexport.common.settings.form.password",'maxLength'=>"50",'size'=>$_smarty_tpl->tpl_vars['fbvStyles']->value['size']['MEDIUM']),$_smarty_tpl ) );?>

			<span class="instruct"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.common.settings.form.password.description"),$_smarty_tpl ) );?>
</span><br/>
		<?php $_block_repeat=false;
echo $_block_plugin5->smartyFBVFormSection(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
		<?php $_block_plugin6 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin6, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array('list'=>"true"));
$_block_repeat=true;
echo $_block_plugin6->smartyFBVFormSection(array('list'=>"true"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
			<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"checkbox",'id'=>"automaticRegistration",'label'=>"plugins.importexport.crossref.settings.form.automaticRegistration.description",'checked'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'compare' ][ 0 ], array( $_smarty_tpl->tpl_vars['automaticRegistration']->value,true ))),$_smarty_tpl ) );?>

		<?php $_block_repeat=false;
echo $_block_plugin6->smartyFBVFormSection(array('list'=>"true"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
		<?php $_block_plugin7 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin7, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array('list'=>"true"));
$_block_repeat=true;
echo $_block_plugin7->smartyFBVFormSection(array('list'=>"true"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
			<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"checkbox",'id'=>"testMode",'label'=>"plugins.importexport.crossref.settings.form.testMode.description",'checked'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'compare' ][ 0 ], array( $_smarty_tpl->tpl_vars['testMode']->value,true ))),$_smarty_tpl ) );?>

		<?php $_block_repeat=false;
echo $_block_plugin7->smartyFBVFormSection(array('list'=>"true"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
	<?php $_block_repeat=false;
echo $_block_plugin3->smartyFBVFormArea(array('id'=>"crossrefSettingsFormArea"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
	<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvFormButtons'][0], array( array('submitText'=>"common.save"),$_smarty_tpl ) );?>

	<p><span class="formRequired"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"common.requiredField"),$_smarty_tpl ) );?>
</span></p>
</form>
<?php }
}
