<?php
/* Smarty version 4.3.1, created on 2024-09-29 05:58:46
  from 'app:controllersinformationCentersubmissionHistory.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.3.1',
  'unifunc' => 'content_66f8d0767ce597_18107414',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ddee6ace424f828055c47a64e58f0b2e1f2d7b84' => 
    array (
      0 => 'app:controllersinformationCentersubmissionHistory.tpl',
      1 => 1724443806,
      2 => 'app',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_66f8d0767ce597_18107414 (Smarty_Internal_Template $_smarty_tpl) {
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['help'][0], array( array('file'=>"editorial-workflow",'section'=>"editorial-history",'class'=>"pkp_help_tab"),$_smarty_tpl ) );?>


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'default', 'submissionHistoryGridUrl', null);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['url'][0], array( array('params'=>$_smarty_tpl->tpl_vars['gridParameters']->value,'router'=>(defined('ROUTE_COMPONENT') ? constant('ROUTE_COMPONENT') : null),'component'=>"grid.eventLog.SubmissionEventLogGridHandler",'op'=>"fetchGrid",'escape'=>false),$_smarty_tpl ) );
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo call_user_func_array( $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['load_url_in_div'][0], array( array('id'=>"submissionHistoryGridContainer",'url'=>$_smarty_tpl->tpl_vars['submissionHistoryGridUrl']->value),$_smarty_tpl ) );?>

<?php }
}
