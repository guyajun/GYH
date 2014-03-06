$(function() {
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
});
