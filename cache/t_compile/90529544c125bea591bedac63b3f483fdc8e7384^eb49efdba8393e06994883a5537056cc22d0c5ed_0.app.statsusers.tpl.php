<?php
/* Smarty version 4.3.1, created on 2024-09-29 00:33:55
  from 'app:statsusers.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_66f884532feca0_59761202',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'eb49efdba8393e06994883a5537056cc22d0c5ed' => 
    array (
      0 => 'app:statsusers.tpl',
      1 => 1724443806,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_66f884532feca0_59761202 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_207081874966f884532f0982_83161317', "page");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/backend.tpl");
}
/* {block "page"} */
class Block_207081874966f884532f0982_83161317 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'page' => 
  array (
    0 => 'Block_207081874966f884532f0982_83161317',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

	<div class="pkpStats">
		<div class="pkpStats__panel">
			<pkp-header>
				<h1 id="usersTableLabel" class="pkpHeader__title"><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"manager.statistics.statistics.registeredUsers"),$_smarty_tpl ) );?>
</h1>
				<template slot="actions">
					<pkp-button ref="exportButton" @click="$modal.show('export')">
						<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"common.export"),$_smarty_tpl ) );?>

					</pkp-button>
				</template>
			</pkp-header>
			<table class="pkpTable" labelled-by="usersTableLabel">
				<thead>
					<tr>
						<th><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"common.name"),$_smarty_tpl ) );?>
</th>
						<th><?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"stats.total"),$_smarty_tpl ) );?>
</th>
					</tr>
				</thead>
				<tbody>
					<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['userStats']->value, 'row');
$_smarty_tpl->tpl_vars['row']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['row']->value) {
$_smarty_tpl->tpl_vars['row']->do_else = false;
?>
						<tr>
							<td><?php echo $_smarty_tpl->tpl_vars['row']->value['name'];?>
</td>
							<td><?php echo $_smarty_tpl->tpl_vars['row']->value['value'];?>
</td>
						</tr>
					<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
				</tbody>
			</table>
		</div>
	</div>
	<modal
		v-bind="MODAL_PROPS"
		name="export"
		@closed="setFocusToRef('exportButton')"
	>
		<modal-content
			close-label="common.close"
			modal-name="export"
			title="<?php echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['translate'][0], array( array('key'=>"manager.export.usersToCsv.label"),$_smarty_tpl ) );?>
"
		>
			<pkp-form v-bind="components.usersReportForm" @set="set" @success="loadExport" />
		</modal-content>
	</modal>
<?php
}
}
/* {/block "page"} */
}
