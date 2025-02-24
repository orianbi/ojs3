<?php
/* Smarty version 4.3.1, created on 2024-09-29 01:02:13
  from 'plugins-1-plugins-importexport-pubmed-importexport-pubmed:index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_66f88af5c96d48_41076027',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '773c702fbc5a8438243e1f1f251bdb836779746b' => 
    array (
      0 => 'plugins-1-plugins-importexport-pubmed-importexport-pubmed:index.tpl',
      1 => 1724443545,
      2 => 'plugins-1-plugins-importexport-pubmed-importexport-pubmed',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_66f88af5c96d48_41076027 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_195677334566f88af594acf0_19252799', "page");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/backend.tpl");
}
/* {block "page"} */
class Block_195677334566f88af594acf0_19252799 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page' => 
  array (
    0 => 'Block_195677334566f88af594acf0_19252799',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

	<h1 class="app__pageHeading">
		<?php echo $_smarty_tpl->tpl_vars['pageTitle']->value;?>

	</h1>

	<?php echo '<script'; ?>
 type="text/javascript">
		// Attach the JS file tab handler.
		$(function() {
			$('#exportTabs').pkpHandler('$.pkp.controllers.TabHandler');
			$('#exportTabs').tabs('option', 'cache', true);
		});
	<?php echo '</script'; ?>
>
	<div id="exportTabs">
		<ul>
			<li><a href="#exportSubmissions-tab"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.native.exportSubmissions"),$_smarty_tpl ) );?>
</a></li>
			<li><a href="#exportIssues-tab"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.native.exportIssues"),$_smarty_tpl ) );?>
</a></li>
		</ul>
		<div id="exportSubmissions-tab">
			<?php echo '<script'; ?>
 type="text/javascript">
				$(function() {
					// Attach the form handler.
					$('#exportXmlForm').pkpHandler('$.pkp.controllers.form.FormHandler');
				});
			<?php echo '</script'; ?>
>
			<form id="exportXmlForm" class="pkp_form" action="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['plugin_url'][0], array( array('path'=>"exportSubmissions"),$_smarty_tpl ) );?>
" method="post">
				<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['csrf'][0], array( array(),$_smarty_tpl ) );?>

				<?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0] : null;
if (!is_callable(array($_block_plugin1, 'smartyFBVFormArea'))) {
throw new SmartyException('block tag \'fbvFormArea\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormArea', array('id'=>"submissionsXmlForm"));
$_block_repeat=true;
echo $_block_plugin1->smartyFBVFormArea(array('id'=>"submissionsXmlForm"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
					<submissions-list-panel
						v-bind="components.submissions"
						@set="set"
					>

						<template v-slot:item="{item}">
							<div class="listPanel__itemSummary">
								<label>
									<input
										type="checkbox"
										name="selectedSubmissions[]"
										:value="item.id"
										v-model="selectedSubmissions"
									/>
									<span class="listPanel__itemSubTitle">
										{{ localize(item.publications.find(p => p.id == item.currentPublicationId).fullTitle) }}
									</span>
								</label>
								<pkp-button element="a" :href="item.urlWorkflow" style="margin-left: auto;">
									{{ __('common.view') }}
								</pkp-button>
							</div>
						</template>
					</submissions-list-panel>
					<?php $_block_plugin2 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormSection'][0][0] : null;
if (!is_callable(array($_block_plugin2, 'smartyFBVFormSection'))) {
throw new SmartyException('block tag \'fbvFormSection\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormSection', array());
$_block_repeat=true;
echo $_block_plugin2->smartyFBVFormSection(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
						<pkp-button :disabled="!components.submissions.itemsMax" @click="toggleSelectAll">
							<template v-if="components.submissions.itemsMax && selectedSubmissions.length >= components.submissions.itemsMax">
								<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"common.selectNone"),$_smarty_tpl ) );?>

							</template>
							<template v-else>
								<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"common.selectAll"),$_smarty_tpl ) );?>

							</template>
						</pkp-button>
						<pkp-button @click="submit('#exportXmlForm')">
							<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"plugins.importexport.native.exportSubmissions"),$_smarty_tpl ) );?>

						</pkp-button>
					<?php $_block_repeat=false;
echo $_block_plugin2->smartyFBVFormSection(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
				<?php $_block_repeat=false;
echo $_block_plugin1->smartyFBVFormArea(array('id'=>"submissionsXmlForm"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
			</form>
		</div>
		<div id="exportIssues-tab">
			<?php echo '<script'; ?>
 type="text/javascript">
				$(function() {
					// Attach the form handler.
					$('#exportIssuesXmlForm').pkpHandler('$.pkp.controllers.form.FormHandler');
				});
			<?php echo '</script'; ?>
>
			<form id="exportIssuesXmlForm" class="pkp_form" action="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['plugin_url'][0], array( array('path'=>"exportIssues"),$_smarty_tpl ) );?>
" method="post">
				<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['csrf'][0], array( array(),$_smarty_tpl ) );?>

				<?php $_block_plugin3 = isset($_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['fbvFormArea'][0][0] : null;
if (!is_callable(array($_block_plugin3, 'smartyFBVFormArea'))) {
throw new SmartyException('block tag \'fbvFormArea\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('fbvFormArea', array('id'=>"issuesXmlForm"));
$_block_repeat=true;
echo $_block_plugin3->smartyFBVFormArea(array('id'=>"issuesXmlForm"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>
					<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'issuesListGridUrl', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('router'=>(defined('ROUTE_COMPONENT') ? constant('ROUTE_COMPONENT') : null),'component'=>"grid.issues.ExportableIssuesListGridHandler",'op'=>"fetchGrid",'escape'=>false),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
					<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['load_url_in_div'][0], array( array('id'=>"issuesListGridContainer",'url'=>$_smarty_tpl->tpl_vars['issuesListGridUrl']->value),$_smarty_tpl ) );?>

					<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['fbvFormButtons'][0], array( array('submitText'=>"plugins.importexport.native.exportIssues",'hideCancel'=>"true"),$_smarty_tpl ) );?>

				<?php $_block_repeat=false;
echo $_block_plugin3->smartyFBVFormArea(array('id'=>"issuesXmlForm"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
			</form>
		</div>
	</div>
<?php
}
}
/* {/block "page"} */
}
