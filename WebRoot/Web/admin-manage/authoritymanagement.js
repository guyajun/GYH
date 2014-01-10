$(function(){
	$.ajax({
		type:"post",
		url:"/GP/admin/ShowModulesTree.action",
		dataType:"JSON",
		success:modulestree
	});	

$('#saveBtn').on('click',function(){
	alert('here');
	$('#authoritytree').tree({
		onCheck:function(node,checked)
		{			
			var roleId = $('#roleId').val();
			alert(roleId);
			$.ajax({
				type:'post',
				url:'/GP/admin1/EditAurhotiry.action?roleId='+roleId+'&checked='+checked+'&nodeId='+node.id,
				dataType:'JSON',
				success:function(data){windows.location.reload;}
			});
		}
	});
});
function modulestree(data)
{
	alert(data.modulesTree.id);
	$('#authoritytree').tree({
		checkbox:true,
		data:data.modulesTree,
		onCheck:function(node,checked)
		{
//			var treeposition = $('#authoritytree').position().left;
//			var roleId = $('#roleId').val();
//			$.ajax({
//				type:'post',
//				url:'EditAurhotiry.action',
//				data:"roleId="+roleId+"&checked="+checked+"&nodeId="+node.id,
//				dataType:'text',
//				success:function(data){}
//			});
		}
	});
	loadtreedata($('#roleId').val());
}

function loadtreedata(id)
{
	$.ajax({
		type:'post',
		url:'/GP/admin/UserAuthority.action',
		data:"roleId="+id,
		dataType:'JSON',
		success:function(data)
		{
			var rootNodes = new Array();
			rootNodes = $('#authoritytree').tree('getRoots');
			$.each(rootNodes,function(i,n){
				$('#authoritytree').tree('uncheck',n.target);
			});
			$.each(data.roleModuleIds,function(i,n){
			var node = $('#authoritytree').tree('find',n);
			$('#authoritytree').tree('check',node.target);
			});
		}
	});
}

});

