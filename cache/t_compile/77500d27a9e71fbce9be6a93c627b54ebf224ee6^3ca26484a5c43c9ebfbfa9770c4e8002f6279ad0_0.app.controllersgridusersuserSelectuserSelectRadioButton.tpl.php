<?php
/* Smarty version 4.3.1, created on 2024-09-29 06:27:14
  from 'app:controllersgridusersuserSelectuserSelectRadioButton.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_66f8d722e845f1_82964208',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3ca26484a5c43c9ebfbfa9770c4e8002f6279ad0' => 
    array (
      0 => 'app:controllersgridusersuserSelectuserSelectRadioButton.tpl',
      1 => 1724443806,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_66f8d722e845f1_82964208 (Smarty_Internal_Template $_smarty_tpl) {
?>
<input type="radio" id="user_<?php echo $_smarty_tpl->tpl_vars['rowId']->value;?>
" name="userId" class="advancedUserSelect" <?php if ($_smarty_tpl->tpl_vars['userId']->value == $_smarty_tpl->tpl_vars['rowId']->value) {?>checked="checked" <?php }?>value="<?php echo $_smarty_tpl->tpl_vars['rowId']->value;?>
" />
<?php }
}
