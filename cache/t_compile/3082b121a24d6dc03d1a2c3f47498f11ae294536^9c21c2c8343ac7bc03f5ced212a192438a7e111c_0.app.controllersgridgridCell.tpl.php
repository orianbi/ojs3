<?php
/* Smarty version 4.3.1, created on 2024-09-28 11:48:15
  from 'app:controllersgridgridCell.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_66f7d0df68c882_18312107',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9c21c2c8343ac7bc03f5ced212a192438a7e111c' => 
    array (
      0 => 'app:controllersgridgridCell.tpl',
      1 => 1724443806,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
    'app:controllers/grid/gridCellContents.tpl' => 1,
  ),
),false)) {
function content_66f7d0df68c882_18312107 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['id']->value) {?>
	<?php $_smarty_tpl->_assignInScope('cellId', call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'concat' ][ 0 ], array( "cell-",$_smarty_tpl->tpl_vars['id']->value )));
} else { ?>
	<?php $_smarty_tpl->_assignInScope('cellId', '');
}?>
<span <?php if ($_smarty_tpl->tpl_vars['cellId']->value) {?>id="<?php echo call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'escape' ][ 0 ], array( $_smarty_tpl->tpl_vars['cellId']->value ));?>
" <?php }?>class="gridCellContainer">
	<?php $_smarty_tpl->_subTemplateRender("app:controllers/grid/gridCellContents.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
</span>

<?php }
}
