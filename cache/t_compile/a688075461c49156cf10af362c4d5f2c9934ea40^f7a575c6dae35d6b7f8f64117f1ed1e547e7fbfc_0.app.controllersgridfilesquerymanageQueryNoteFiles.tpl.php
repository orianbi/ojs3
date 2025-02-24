<?php
/* Smarty version 4.3.1, created on 2024-09-29 06:00:52
  from 'app:controllersgridfilesquerymanageQueryNoteFiles.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_66f8d0f4c8ebe6_48228195',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f7a575c6dae35d6b7f8f64117f1ed1e547e7fbfc' => 
    array (
      0 => 'app:controllersgridfilesquerymanageQueryNoteFiles.tpl',
      1 => 1724443806,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_66f8d0f4c8ebe6_48228195 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
>
	$(function() {
		// Attach the form handler.
		$('#manageQueryNoteFilesForm').pkpHandler('$.pkp.controllers.form.AjaxFormHandler');
	});
<?php echo '</script'; ?>
>

<form class="pkp_form" id="manageQueryNoteFilesForm" action="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('component'=>"grid.files.query.ManageQueryNoteFilesGridHandler",'op'=>"updateQueryNoteFiles",'params'=>$_smarty_tpl->tpl_vars['actionArgs']->value,'submissionId'=>$_smarty_tpl->tpl_vars['submissionId']->value,'queryId'=>$_smarty_tpl->tpl_vars['queryId']->value,'noteId'=>$_smarty_tpl->tpl_vars['noteId']->value,'stageId'=>(defined('WORKFLOW_STAGE_ID_EDITING') ? constant('WORKFLOW_STAGE_ID_EDITING') : null)),$_smarty_tpl ) );?>
" method="post">
	<!-- Current query files -->
	<p><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"editor.submission.query.manageQueryNoteFilesDescription"),$_smarty_tpl ) );?>
</p>

	<div id="existingFilesContainer">
		<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['csrf'][0], array( array(),$_smarty_tpl ) );?>

		<?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0] : null;
if (!is_callable(array($_block_plugin1, 'smartyFBVFormArea'))) {
throw new SmartyException('block tag \'fbvFormArea\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormArea', array('id'=>"manageQueryNoteFiles"));
$_block_repeat=true;
echo $_block_plugin1->smartyFBVFormArea(array('id'=>"manageQueryNoteFiles"), null, $_smarty_tpl, $_block_repeat);
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
				<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'manageQueryNoteFilesGridUrl', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_COMPONENT') ? constant('ROUTE_COMPONENT') : null),'component'=>"grid.files.query.ManageQueryNoteFilesGridHandler",'op'=>"fetchGrid",'params'=>$_smarty_tpl->tpl_vars['actionArgs']->value,'submissionId'=>$_smarty_tpl->tpl_vars['submissionId']->value,'queryId'=>$_smarty_tpl->tpl_vars['queryId']->value,'noteId'=>$_smarty_tpl->tpl_vars['noteId']->value,'escape'=>false),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
				<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['load_url_in_div'][0], array( array('id'=>"manageQueryNoteFilesGrid",'url'=>$_smarty_tpl->tpl_vars['manageQueryNoteFilesGridUrl']->value),$_smarty_tpl ) );?>

			<?php $_block_repeat=false;
echo $_block_plugin2->smartyFBVFormSection(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>

			<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvFormButtons'][0], array( array(),$_smarty_tpl ) );?>

		<?php $_block_repeat=false;
echo $_block_plugin1->smartyFBVFormArea(array('id'=>"manageQueryNoteFiles"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
	</div>
</form>
<?php }
}
