<?php
/* Smarty version 4.3.1, created on 2024-09-28 12:03:52
  from 'plugins-1-plugins-importexport-datacite-importexport-datacite:index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_66f7d488490fa7_20867784',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e59bfcea6a6e99bf00f4e588fb030acc887716e7' => 
    array (
      0 => 'plugins-1-plugins-importexport-datacite-importexport-datacite:index.tpl',
      1 => 1724443545,
      2 => 'plugins-1-plugins-importexport-datacite-importexport-datacite',
    ),
  ),
  'includes' => 
  array (
    'app:controllers/notification/inPlaceNotificationContent.tpl' => 3,
  ),
),false)) {
function content_66f7d488490fa7_20867784 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_99236932166f7d4884587b0_83251508', "page");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/backend.tpl");
}
/* {block "page"} */
class Block_99236932166f7d4884587b0_83251508 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page' => 
  array (
    0 => 'Block_99236932166f7d4884587b0_83251508',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

	<h1 class="app__pageHeading">
		<?php echo $_smarty_tpl->tpl_vars['pageTitle']->value;?>

	</h1>

	<?php if (!empty($_smarty_tpl->tpl_vars['configurationErrors']->value)) {?>
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
				<?php if ($_smarty_tpl->tpl_vars['exportArticles']->value) {?>
					<li><a href="#exportSubmissions-tab"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.common.export.articles"),$_smarty_tpl ) );?>
</a></li>
				<?php }?>
				<?php if ($_smarty_tpl->tpl_vars['exportIssues']->value) {?>
					<li><a href="#exportIssues-tab"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.common.export.issues"),$_smarty_tpl ) );?>
</a></li>
				<?php }?>
				<?php if ($_smarty_tpl->tpl_vars['exportRepresentations']->value) {?>
					<li><a href="#exportRepresentations-tab"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.common.export.representations"),$_smarty_tpl ) );?>
</a></li>
				<?php }?>
			<?php }?>
		</ul>
		<div id="settings-tab">
			<?php if (!$_smarty_tpl->tpl_vars['allowExport']->value) {?>
				<div class="pkp_notification" id="dataciteConfigurationErrors">
					<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['configurationErrors']->value, 'configurationError');
$_smarty_tpl->tpl_vars['configurationError']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['configurationError']->value) {
$_smarty_tpl->tpl_vars['configurationError']->do_else = false;
?>
						<?php if ($_smarty_tpl->tpl_vars['configurationError']->value == (defined('DOI_EXPORT_CONFIG_ERROR_DOIPREFIX') ? constant('DOI_EXPORT_CONFIG_ERROR_DOIPREFIX') : null)) {?>
							<?php $_smarty_tpl->_subTemplateRender("app:controllers/notification/inPlaceNotificationContent.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('notificationId'=>'dataciteConfigurationErrors','notificationStyleClass'=>"notifyWarning",'notificationTitle'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.missingRequirements" )),'notificationContents'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.error.DOIsNotAvailable" ))), 0, true);
?>
						<?php } elseif ($_smarty_tpl->tpl_vars['configurationError']->value == (defined('EXPORT_CONFIG_ERROR_SETTINGS') ? constant('EXPORT_CONFIG_ERROR_SETTINGS') : null)) {?>
							<?php $_smarty_tpl->_subTemplateRender("app:controllers/notification/inPlaceNotificationContent.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('notificationId'=>'dataciteConfigurationErrors','notificationStyleClass'=>"notifyWarning",'notificationTitle'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.missingRequirements" )),'notificationContents'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.error.pluginNotConfigured" ))), 0, true);
?>
						<?php }?>
					<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					<?php if (!$_smarty_tpl->tpl_vars['exportArticles']->value && !$_smarty_tpl->tpl_vars['exportIssues']->value && !$_smarty_tpl->tpl_vars['exportRepresentations']->value) {?>
						<?php $_smarty_tpl->_subTemplateRender("app:controllers/notification/inPlaceNotificationContent.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('notificationId'=>'dataciteConfigurationErrors','notificationStyleClass'=>"notifyWarning",'notificationTitle'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.missingRequirements" )),'notificationContents'=>call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'translate' ][ 0 ], array( "plugins.importexport.common.error.noDOIContentObjects" ))), 0, true);
?>
					<?php }?>
				</div>
			<?php }?>

			<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'dataciteSettingsGridUrl', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_COMPONENT') ? constant('ROUTE_COMPONENT') : null),'component'=>"grid.settings.plugins.settingsPluginGridHandler",'op'=>"manage",'plugin'=>"DataciteExportPlugin",'category'=>"importexport",'verb'=>"index",'escape'=>false),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
			<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['load_url_in_div'][0], array( array('id'=>"dataciteSettingsGridContainer",'url'=>$_smarty_tpl->tpl_vars['dataciteSettingsGridUrl']->value),$_smarty_tpl ) );?>

		</div>

		<?php if ($_smarty_tpl->tpl_vars['allowExport']->value) {?>
			<?php if ($_smarty_tpl->tpl_vars['exportArticles']->value) {?>
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
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_COMPONENT') ? constant('ROUTE_COMPONENT') : null),'component'=>"grid.pubIds.PubIdExportSubmissionsListGridHandler",'op'=>"fetchGrid",'plugin'=>"datacite",'category'=>"importexport",'escape'=>false),$_smarty_tpl ) );
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
								<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"checkbox",'id'=>"validation",'label'=>"plugins.importexport.common.validation",'checked'=>(($tmp = $_smarty_tpl->tpl_vars['validation']->value ?? null)===null||$tmp==='' ? true ?? null : $tmp)),$_smarty_tpl ) );?>

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
				</div>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['exportIssues']->value) {?>
				<div id="exportIssues-tab">
					<?php echo '<script'; ?>
 type="text/javascript">
						$(function() {
							// Attach the form handler.
							$('#exportIssueXmlForm').pkpHandler('$.pkp.controllers.form.FormHandler');
						});
					<?php echo '</script'; ?>
>
					<form id="exportIssueXmlForm" class="pkp_form" action="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['plugin_url'][0], array( array('path'=>"exportIssues"),$_smarty_tpl ) );?>
" method="post">
						<input type="hidden" name="tab" value="exportIssues-tab" />
						<?php $_block_plugin4 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0] : null;
if (!is_callable(array($_block_plugin4, 'smartyFBVFormArea'))) {
throw new SmartyException('block tag \'fbvFormArea\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormArea', array('id'=>"issuesXmlForm"));
$_block_repeat=true;
echo $_block_plugin4->smartyFBVFormArea(array('id'=>"issuesXmlForm"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
							<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'issuesListGridUrl', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_COMPONENT') ? constant('ROUTE_COMPONENT') : null),'component'=>"grid.pubIds.PubIdExportIssuesListGridHandler",'op'=>"fetchGrid",'plugin'=>"datacite",'category'=>"importexport",'escape'=>false),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
							<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['load_url_in_div'][0], array( array('id'=>"issuesListGridContainer",'url'=>$_smarty_tpl->tpl_vars['issuesListGridUrl']->value),$_smarty_tpl ) );?>

							<?php $_block_plugin5 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin5, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array('list'=>"true"));
$_block_repeat=true;
echo $_block_plugin5->smartyFBVFormSection(array('list'=>"true"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
								<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"checkbox",'id'=>"validation",'label'=>"plugins.importexport.common.validation",'checked'=>(($tmp = $_smarty_tpl->tpl_vars['validation']->value ?? null)===null||$tmp==='' ? true ?? null : $tmp)),$_smarty_tpl ) );?>

							<?php $_block_repeat=false;
echo $_block_plugin5->smartyFBVFormSection(array('list'=>"true"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
							<?php if (!empty($_smarty_tpl->tpl_vars['actionNames']->value)) {?>
								<?php $_block_plugin6 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin6, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array());
$_block_repeat=true;
echo $_block_plugin6->smartyFBVFormSection(array(), null, $_smarty_tpl, $_block_repeat);
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
echo $_block_plugin6->smartyFBVFormSection(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
							<?php }?>
						<?php $_block_repeat=false;
echo $_block_plugin4->smartyFBVFormArea(array('id'=>"issuesXmlForm"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
					</form>
				</div>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['exportRepresentations']->value) {?>
				<div id="exportRepresentations-tab">
					<?php echo '<script'; ?>
 type="text/javascript">
						$(function() {
							// Attach the form handler.
							$('#exportRepresentationXmlForm').pkpHandler('$.pkp.controllers.form.FormHandler');
						});
					<?php echo '</script'; ?>
>
					<form id="exportRepresentationXmlForm" class="pkp_form" action="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['plugin_url'][0], array( array('path'=>"exportRepresentations"),$_smarty_tpl ) );?>
" method="post">
						<input type="hidden" name="tab" value="exportRepresentations-tab" />
						<?php $_block_plugin7 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0] : null;
if (!is_callable(array($_block_plugin7, 'smartyFBVFormArea'))) {
throw new SmartyException('block tag \'fbvFormArea\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormArea', array('id'=>"representationsXmlForm"));
$_block_repeat=true;
echo $_block_plugin7->smartyFBVFormArea(array('id'=>"representationsXmlForm"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
							<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'representationsListGridUrl', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_COMPONENT') ? constant('ROUTE_COMPONENT') : null),'component'=>"grid.pubIds.PubIdExportRepresentationsListGridHandler",'op'=>"fetchGrid",'plugin'=>"datacite",'category'=>"importexport",'escape'=>false),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
							<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['load_url_in_div'][0], array( array('id'=>"representationsListGridContainer",'url'=>$_smarty_tpl->tpl_vars['representationsListGridUrl']->value),$_smarty_tpl ) );?>

							<?php $_block_plugin8 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin8, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array('list'=>"true"));
$_block_repeat=true;
echo $_block_plugin8->smartyFBVFormSection(array('list'=>"true"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
								<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvElement'][0], array( array('type'=>"checkbox",'id'=>"validation",'label'=>"plugins.importexport.common.validation",'checked'=>(($tmp = $_smarty_tpl->tpl_vars['validation']->value ?? null)===null||$tmp==='' ? true ?? null : $tmp)),$_smarty_tpl ) );?>

							<?php $_block_repeat=false;
echo $_block_plugin8->smartyFBVFormSection(array('list'=>"true"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
							<?php if (!empty($_smarty_tpl->tpl_vars['actionNames']->value)) {?>
								<?php $_block_plugin9 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin9, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array());
$_block_repeat=true;
echo $_block_plugin9->smartyFBVFormSection(array(), null, $_smarty_tpl, $_block_repeat);
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
echo $_block_plugin9->smartyFBVFormSection(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
							<?php }?>
						<?php $_block_repeat=false;
echo $_block_plugin7->smartyFBVFormArea(array('id'=>"representationsXmlForm"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
					</form>
				</div>
			<?php }?>
		<?php }?>
	</div>
<?php
}
}
/* {/block "page"} */
}
