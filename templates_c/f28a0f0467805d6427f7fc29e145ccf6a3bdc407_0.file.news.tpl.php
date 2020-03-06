<?php
/* Smarty version 3.1.34-dev-7, created on 2020-03-06 14:39:05
  from 'D:\xampp\htdocs\web11\templates\tpl\news.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5e61f00953e655_70733573',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f28a0f0467805d6427f7fc29e145ccf6a3bdc407' => 
    array (
      0 => 'D:\\xampp\\htdocs\\web11\\templates\\tpl\\news.tpl',
      1 => 1583476742,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e61f00953e655_70733573 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['op']->value == "op_list") {?>
    <table class="table table-striped table-bordered table-hover table-sm">
        <thead>
        <tr> 
            
            <th scope="col-lg-3">日期</th>
            <th scope="col-lg-6">標題</th>
            <th scope="col-lg-3" class="text-center">
                <a href="?op=op_form"><i class="fas fa-plus-square"></i>新增</a>
            </th>
        </tr>
        </thead>
        <tbody>
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['rows']->value, 'row');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['row']->value) {
?>
                <tr>
                    <td class="align-middle"><?php echo $_smarty_tpl->tpl_vars['row']->value['date'];?>
</td>
                    <td class="align-middle"><?php echo $_smarty_tpl->tpl_vars['row']->value['title'];?>
</td>
                    <td class="text-center align-middle">
                        <a href="?op=op_form&newn=<?php echo $_smarty_tpl->tpl_vars['row']->value['newn'];?>
"><i class="far fa-edit"></i></a>
                        <a href="javascript:void(0)" onclick="op_delete(<?php echo $_smarty_tpl->tpl_vars['row']->value['newn'];?>
);"><i class="far fa-trash-alt"></i></a>
                    </td>
                </tr>
            <?php
}
} else {
?>
                <tr>
                    <td colspan=3>目前沒有資料</td>
                </tr>
            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

        </tbody>
    </table>
    <?php echo $_smarty_tpl->tpl_vars['bar']->value;?>

    <!-- sweetalert2 -->
    <link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['xoAppUrl']->value;?>
class/sweetalert2/sweetalert2.min.css">
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['xoAppUrl']->value;?>
class/sweetalert2/sweetalert2.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
>
        function op_delete(newn){
            Swal.fire({
                title: '你確定嗎？',
                text: "您將無法還原！",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: '是的，刪除它！',
                cancelButtonText: '取消'
                }).then((result) => {
                if (result.value) {
                    document.location.href="news.php?op=op_delete&newn="+newn;
                }
            })
        }
    <?php echo '</script'; ?>
>
<?php }
if ($_smarty_tpl->tpl_vars['op']->value == "op_form") {?>
    
    <div class="container">        
        <form action="news.php" method="post" id="myForm" class="mb-2" enctype="multipart/form-data">
            <!-- 	 						 -->
            <div class="row">  
                <!--建立日期-->              
                <div class="col-sm-3">
                    <div class="form-group">
                        <label>建立日期</label>
                        <input type="text" class="form-control" name="date" id="date" value="<?php echo $_smarty_tpl->tpl_vars['row']->value['date'];?>
" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})">
                    </div>
                </div>         
                <!--標題-->              
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>標題<span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="title" id="title" value="<?php echo $_smarty_tpl->tpl_vars['row']->value['title'];?>
" >
                    </div>
                </div>                                                        
            </div>
            
            <div class="row">
                <div class="col-sm-12">  
                    <!-- 商品內容 -->
                    <div class="form-group">
                        <label class="control-label">商品內容</label>
                        <textarea class="form-control" rows="5" id="content" name="content"><?php echo $_smarty_tpl->tpl_vars['row']->value['content'];?>
</textarea>
                    </div>
                </div>
            </div>
            
            <!-- ckeditor -->
            <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['xoAppUrl']->value;?>
class/ckeditor/ckeditor.js"><?php echo '</script'; ?>
>
            <?php echo '<script'; ?>
>
                CKEDITOR.replace('content',{
                    height:500,//高度
                    contentsCss: ['<?php echo $_smarty_tpl->tpl_vars['xoImgUrl']->value;?>
css/creative.css'],//前台樣板css
                    removeDialogTabs: 'image:Link',//取消連結 //link:target;link:advanced;image:advanced
                    filebrowserBrowseUrl: '<?php echo $_smarty_tpl->tpl_vars['xoAppUrl']->value;?>
class/elfinder.php?type=image'//呼叫elfinder.php
                });
            <?php echo '</script'; ?>
>
            <div class="text-center pb-20">
            <input type="hidden" name="op" value="<?php echo $_smarty_tpl->tpl_vars['row']->value['op'];?>
">
            <input type="hidden" name="newn" value="<?php echo $_smarty_tpl->tpl_vars['row']->value['newn'];?>
">
            <button type="submit" class="btn btn-primary">送出</button>
            </div>
        
        </form>
        <!-- 表單驗證 -->
        <?php echo '<script'; ?>
 src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.min.js"><?php echo '</script'; ?>
>
        <!-- 調用方法 -->
        <style>
            .error{
            color:red;
            }
        </style>
        <?php echo '<script'; ?>
>
            $(function(){
                $("#myForm").validate({
                    submitHandler: function(form) {
                        form.submit();
                    },
                    rules: {
                        'title' : {
                            required: true
                        }
                    },
                    messages: {
                        'title' : {
                            required: "必填"
                        }
                    }
                });
            });
        <?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 type='text/javascript' src='<?php echo $_smarty_tpl->tpl_vars['xoAppUrl']->value;?>
class/My97DatePicker/WdatePicker.js'><?php echo '</script'; ?>
>
        
    </div>
<?php }
}
}
