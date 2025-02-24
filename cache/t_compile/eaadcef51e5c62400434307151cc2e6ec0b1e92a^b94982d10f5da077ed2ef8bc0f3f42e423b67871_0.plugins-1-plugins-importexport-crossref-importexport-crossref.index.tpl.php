<?php
/* Smarty version 4.3.1, created on 2024-09-28 15:30:20
  from 'plugins-1-plugins-importexport-crossref-importexport-crossref:index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_66f804ec11ee88_80295464',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b94982d10f5da077ed2ef8bc0f3f42e423b67871' => 
    array (
      0 => 'plugins-1-plugins-importexport-crossref-importexport-crossref:index.tpl',
      1 => 1724443545,
      2 => 'plugins-1-plugins-importexport-crossref-importexport-crossref',
    ),
  ),
  'includes' => 
  array (
    'app:controllers/notification/inPlaceNotificationContent.tpl' => 5,
  ),
),false)) {
function content_66f804ec11ee88_80295464 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_53568747666f804ec0eabf8_22511715', "page");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/backend.tpl");
}
/* {block "page"} */
class Block_53568747666f804ec0eabf8_22511715 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page' => 
  array (
    0 => 'Block_53568747666f804ec0eabf8_22511715',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

	<h1 class="app__pageHeading">
		<?php echo $_smarty_tpl->tpl_vars['pageTitle']->value;?>

	</h1>

	<?php if (!empty($_smarty_tpl->tpl_vars['configurationErrors']->value) || !call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['currentContext']->value->getData('publisherInstitution') )) || !$_smarty_tpl->tpl_vars['exportArticles']->value || (!$_smarty_tpl->tpl_vars['currentContext']->value->getData('onlineIssn') && !$_smarty_tpl->tpl_vars['currentContext']->value->getData('printIssn'))) {?>
		<?php $_smarty_tpl->_assignInScope('allowExport', false);?>
	<?php } else { ?>
		<?php $_smarty_tpl->_assignInScope('allowExport', true);?>
	<?php }?>

	<?php echo '<script'; ?>
 type="text/javascript">
		// Attach the JS file tab handler.
		$(function() {
			$('#importExportTabs').pkpHandler('$.pkp.controllers.TabHandler');
		});
	<?php echo '</script'; ?>
>
	<div id="importExportTabs">
		<ul>
			<li><a href="#settings-tab"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.common.settings"),$_smarty_tpl ) );?>
</a></li>
			<?php if ($_smarty_tpl->tpl_vars['allowExport']->value) {?>
				<li><a href="#exportSubmissions-tab"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.common.export.articles"),$_smarty_tpl ) );?>
</a></li>
			<?php }?>
		</ul>
		<div id="settings-tab">
			<?php if (!$_smarty_tpl->tpl_vars['allowExport']->value) {?>
				<div class="pkp_notification" id="crossrefConfigurationErrors">
					<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['configurationErrors']->value, 'configurationError');
$_smarty_tpl->tpl_vars['configurationError']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['configurationError']->value) {
$_smarty_tpl->tpl_vars['configurationError']->do_else = false;
?>
						<?php if ($_smarty_tpl->tpl_vars['configurationError']->value == (defined('DOI_EXPORT_CONFIG_ERROR_DOIPREFIX') ? constant('DOI_EXPORT_CONFIG_ERROR_DOIPREFIX') : null)) {?>
							<?php $_smarty_tpl->_subTemplateRender("app:controllers/notification/inPlaceNotificationContent.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('notificationId'=>'crossrefConfigurationErrors','notificationStyleClass'=>"notifyWarning",'notificationTitle'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.missingRequirements" )),'notificationContents'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.error.DOIsNotAvailable" ))), 0, true);
?>
						<?php } elseif ($_smarty_tpl->tpl_vars['configurationError']->value == (defined('EXPORT_CONFIG_ERROR_SETTINGS') ? constant('EXPORT_CONFIG_ERROR_SETTINGS') : null)) {?>
							<?php $_smarty_tpl->_subTemplateRender("app:controllers/notification/inPlaceNotificationContent.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('notificationId'=>'crossrefConfigurationErrors','notificationStyleClass'=>"notifyWarning",'notificationTitle'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.missingRequirements" )),'notificationContents'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.error.pluginNotConfigured" ))), 0, true);
?>
						<?php }?>
					<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					<?php if (!$_smarty_tpl->tpl_vars['currentContext']->value->getData('publisherInstitution')) {?>
						<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'journalSettingsUrl', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_PAGE') ? constant('ROUTE_PAGE') : null),'page'=>"management",'op'=>"settings",'path'=>"context",'escape'=>false),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
						<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'missingPublisherMessage', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.crossref.error.publisherNotConfigured",'journalSettingsUrl'=>$_smarty_tpl->tpl_vars['journalSettingsUrl']->value),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
						<?php $_smarty_tpl->_subTemplateRender("app:controllers/notification/inPlaceNotificationContent.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('notificationId'=>'crossrefConfigurationErrors','notificationStyleClass'=>"notifyWarning",'notificationTitle'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.missingRequirements" )),'notificationContents'=>$_smarty_tpl->tpl_vars['missingPublisherMessage']->value), 0, true);
?>
					<?php }?>
					<?php if (!$_smarty_tpl->tpl_vars['currentContext']->value->getData('onlineIssn') && !$_smarty_tpl->tpl_vars['currentContext']->value->getData('printIssn')) {?>
						<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'journalSettingsUrl', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_PAGE') ? constant('ROUTE_PAGE') : null),'page'=>"management",'op'=>"settings",'path'=>"context",'escape'=>false),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
						<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'missingIssnMessage', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.crossref.error.issnNotConfigured",'journalSettingsUrl'=>$_smarty_tpl->tpl_vars['journalSettingsUrl']->value),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
						<?php $_smarty_tpl->_subTemplateRender("app:controllers/notification/inPlaceNotificationContent.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('notificationId'=>'crossrefConfigurationErrors','notificationStyleClass'=>"notifyWarning",'notificationTitle'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.missingRequirements" )),'notificationContents'=>$_smarty_tpl->tpl_vars['missingIssnMessage']->value), 0, true);
?>
					<?php }?>
					<?php if (!$_smarty_tpl->tpl_vars['exportArticles']->value) {?>
						<?php $_smarty_tpl->_subTemplateRender("app:controllers/notification/inPlaceNotificationContent.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('notificationId'=>'crossrefConfigurationErrors','notificationStyleClass'=>"notifyWarning",'notificationTitle'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.missingRequirements" )),'notificationContents'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.crossref.error.noDOIContentObjects" ))), 0, true);
?>
					<?php }?>
				</div>
			<?php }?>

			<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'crossrefSettingsGridUrl', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_COMPONENT') ? constant('ROUTE_COMPONENT') : null),'component'=>"grid.settings.plugins.settingsPluginGridHandler",'op'=>"manage",'plugin'=>"CrossRefExportPlugin",'category'=>"importexport",'verb'=>"index",'escape'=>false),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
			<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['load_url_in_div'][0], array( array('id'=>"crossrefSettingsGridContainer",'url'=>$_smarty_tpl->tpl_vars['crossrefSettingsGridUrl']->value),$_smarty_tpl ) );?>

		</div>

		<?php if ($_smarty_tpl->tpl_vars['allowExport']->value) {?>
			<div id="exportSubmissions-tab">
				<?php echo '<script'; ?>
 type="text/javascript">
					$(function() {
						// Attach the form handler.
						$('#exportSubmissionXmlForm').pkpHandler('$.pkp.controllers.form.FormHandler');
					});
				<?php echo '</script'; ?>
>
				<form id="exportSubmissionXmlForm" class="pkp_form" action="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['plugin_url'][0], array( array('path'=>"exportSubmissions"),$_smarty_tpl ) );?>
" method="post">
					<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['csrf'][0], array( array(),$_smarty_tpl ) );?>

					<input type="hidden" name="tab" value="exportSubmissions-tab" />
					<?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0] : null;
if (!is_callable(array($_block_plugin1, 'smartyFBVFormArea'))) {
throw new SmartyException('block tag \'fbvFormArea\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormArea', array('id'=>"submissionsXmlForm"));
$_block_repeat=true;
echo $_block_plugin1->smartyFBVFormArea(array('id'=>"submissionsXmlForm"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
						<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'submissionsListGridUrl', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_COMPONENT') ? constant('ROUTE_COMPONENT') : null),'component'=>"grid.pubIds.PubIdExportSubmissionsListGridHandler",'op'=>"fetchGrid",'plugin'=>"crossref",'category'=>"importexport",'escape'=>false),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
						<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['load_url_in_div'][0], array( array('id'=>"submissionsListGridContainer",'url'=>$_smarty_tpl->tpl_vars['submissionsListGridUrl']->value),$_smarty_tpl ) );?>

						<?php $_block_plugin2 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin2, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array('list'=>"true"));
$_block_repeat=true;
echo $_block_plugin2->smartyFBVFormSection(array('list'=>"true"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
							<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"checkbox",'id'=>"validation",'label'=>"plugins.importexport.crossref.settings.form.validation",'checked'=>(($tmp = $_smarty_tpl->tpl_vars['validation']->value ?? null)===null||$tmp==='' ? false ?? null : $tmp)),$_smarty_tpl ) );?>

							<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"checkbox",'id'=>"onlyValidateExport",'label'=>"plugins.importexport.crossref.settings.form.onlyValidateExport",'checked'=>(($tmp = $_smarty_tpl->tpl_vars['onlyValidateExport']->value ?? null)===null||$tmp==='' ? false ?? null : $tmp)),$_smarty_tpl ) );?>

						<?php $_block_repeat=false;
echo $_block_plugin2->smartyFBVFormSection(array('list'=>"true"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
						<?php if (!empty($_smarty_tpl->tpl_vars['actionNames']->value)) {?>
							<?php $_block_plugin3 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin3, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array());
$_block_repeat=true;
echo $_block_plugin3->smartyFBVFormSection(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
							<ul class="export_actions">
								<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['actionNames']->value, 'actionName', false, 'action');
$_smarty_tpl->tpl_vars['actionName']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['action']->value => $_smarty_tpl->tpl_vars['actionName']->value) {
$_smarty_tpl->tpl_vars['actionName']->do_else = false;
?>
									<li class="export_action">
										<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"submit",'label'=>((string)$_smarty_tpl->tpl_vars['actionName']->value),'id'=>((string)$_smarty_tpl->tpl_vars['action']->value),'name'=>((string)$_smarty_tpl->tpl_vars['action']->value),'value'=>"1",'class'=>((string)$_smarty_tpl->tpl_vars['action']->value),'translate'=>false,'inline'=>true),$_smarty_tpl ) );?>

									</li>
								<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
							</ul>
							<?php $_block_repeat=false;
echo $_block_plugin3->smartyFBVFormSection(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
						<?php }?>
					<?php $_block_repeat=false;
echo $_block_plugin1->smartyFBVFormArea(array('id'=>"submissionsXmlForm"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
				</form>
				<p><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.crossref.statusLegend"),$_smarty_tpl ) );?>
</p>
			</div>
		<?php }?>
	</div>
<?php
}
}
/* {/block "page"} */
}
