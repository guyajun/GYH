$(function() {
	$('.delete').on('click', function() {
		var tr = $(this).parent().parent();
		var id = tr.find('#id').text().trim();
		$('#form-hide').find('#id').val(id);
		var parentId = tr.find('#parentId').text().trim();
		$('#form-hide').find('#parentId').val(parentId);
		bootbox.dialog({
			message : "确定要删除吗?",
			title : "注意",
			buttons : {
				success : {
					label : "确定",
					className : "btn-danger",
					callback : function() {
						$('#form-hide').submit();
					}
				},
				danger : {
					label : "取消",
					className : "bootbox-close-button close btn-success"
				}
			}
		});
	});
	$('.edit').on(
			'click',
			function() {
				var _modalEdit = $('#modal-edit');
				var tr = $(this).parent().parent();
				_modalEdit.find('#id').val(tr.find('#id').text());
				_modalEdit.find('#parentId').val(tr.find('#parentId').text());
				_modalEdit.find('#name').val(tr.find('#name').text());
				var tobody = tr.parent();
				_modalEdit.find('#brand').val(tobody.find('#brand').text());
				_modalEdit.find('#market-price').val(
						tobody.find('#market-price').text());
				_modalEdit.find('#good-price').val(
						tobody.find('#good-price').text());
				_modalEdit.find('#specification').val(
						tobody.find('#specification').text());
				var options = _modalEdit.find('#select').find('option');
				var parentId = tr.find('#parentId').text().trim();
				for ( var i = 0; i < options.length; i++) {
					var optionValue = options[i].value.trim();
					if (optionValue === parentId) {
						options[i].selected = true;
					}
				}
				_modalEdit.modal('show');
			});
	var _form1 = $('#form1');
	var _button1 = _form1.find('#button1');
	var form1Validator = _form1.validate({
		rules : {
			name : {
				required : true
			}
		},
		messages : {
			name : {
				required : "产品名称不能为空"
			}
		}
	});
	_button1.on('click', function() {
		if (form1Validator.form()) {
			_form1.submit();
		}
	});
	var _form2 = $('#form2');
	var _button2 = _form2.find('#button2');
	var form2Validator = _form2.validate({
		rules : {
			name : {
				required : true
			}
		},
		messages : {
			name : {
				required : "产品名称不能为空"
			}
		}
	});
	_button2.on('click', function() {
		if (form2Validator.form()) {
			_form2.submit();
		}
	});
	var _form3 = $('#form3');
	var _button3 = _form3.find('#button3');
	var form3Validator = _form3.validate({
		rules : {
			name : {
				required : true
			}
		},
		messages : {
			name : {
				required : "产品名称不能为空"
			}
		}
	});
	_button3.on('click', function() {
		if (form3Validator.form()) {
			_form3.submit();
		}
	});
});
