$(function(){
//	$('#role-name1').blur(function(){
//		var names=$('.aaa');
//		alert(names.length);
//		for(var i=0;i<names.length;i++){
//			alert($('.aaa')[i].text);
//			if(names[i]===$(this).val()){
//				bootbox.alert("抱歉，此角色已经存在！");
//			}
//		}
//	});
	$('.delete').on('click',function(){
		var tr = $(this).parent().parent();
		var roleName=tr.find('#td-name').text();
		$('#form-hide').find('#role-name').val(roleName);
		bootbox.dialog({
			  message: "确定要删除吗？",
			  title: "注意",
			  buttons: {
			    success: {
			      label: "确定",
			      className: "btn-danger",
			      callback: function() {
			        $('#form-hide').submit();
			      }
			    },
			    danger: {
			      label: "取消",
			      className: "bootbox-close-button close btn-success"
			    }
			  }
			});
//		$('#modal-edit').find('#role-id').val(tr.find('#td-id').text());
//		$('#modal-edit').find('#role-name').val(tr.find('#td-name').text());
//		$('#modal-edit').find('#role-description').val(tr.find('#td-description').text());
//		$('#modal-edit').modal('show');
	});
	$('.edit').on('click',function(){
		var tr = $(this).parent().parent();
		$('#modal-edit').find('#role-id').val(tr.find('#td-id').text());
		$('#modal-edit').find('#role-name').val(tr.find('#td-name').text());
		$('#modal-edit').find('#role-description').val(tr.find('#td-description').text());
		$('#modal-edit').modal('show');
	});
	$('#saveBtn').on('click',function(){
		var roleId=$('#roleId');
		var checkBoxes= $('#table-id').find('.subMenu');
		var count=0;
		var menuIds="";
		for(var i=0;i<checkBoxes.length;i++){
			if(checkBoxes[i].checked==true){
				menuIds+=checkBoxes[i].value+",";
			}				
		}	
		$('#menuIds').val(menuIds);	
		$('#form-authority').submit();
		
	});
	
//    $('.assign').on('click',function(){    	
//    	var tr = $(this).parent().parent();
//		var roleId=tr.find('#td-id');
//		$('#roleId').val(tr.find('#td-id').text());
////    	$('#modal-right').modal('show');
////    	window.location.reload();
//    });
   $('.main').on('click',function(){
	   if($(this).is(':checked')){
		   var tr = $(this).parent().parent();
			var checkBoxes=tr.find('.subMenu');
			for(var i=0;i<checkBoxes.length;i++){
				checkBoxes[i].checked = true;
			}
	   }
	   else{
		   var tr = $(this).parent().parent();
			var checkBoxes=tr.find('.subMenu');
			for(var i=0;i<checkBoxes.length;i++){
				checkBoxes[i].checked = false;
			}
	   }   	
   });	
   
   
   $('.subMenu').on('click',function(){
	   if($(this).is(':checked')){
		   var tr = $(this).parent().parent();
			var checkBoxes=tr.find('.subMenu');
			var count=0;
			for(var i=0;i<checkBoxes.length;i++){
				if(checkBoxes[i].checked==true){
					count++;
				}				
			}
			if(count==checkBoxes.length){
				tr.find('.main').attr('checked',true);
			}
	   }
   });	
});
