$(function() {
	$('#check-all').attr('checked', true);
	var checkBoxes = $('.check-one');
	for ( var i = 0; i < checkBoxes.length; i++) {
		checkBoxes[i].checked = true;
	}
	$('#check-all').on('click', function() {
		var checkBoxes = $('.check-one');
		if ($(this).is(':checked')) {
			for ( var i = 0; i < checkBoxes.length; i++) {
				checkBoxes[i].checked = true;
			}
		} else {
			for ( var i = 0; i < checkBoxes.length; i++) {
				checkBoxes[i].checked = false;
			}
		}
	});
	$('.check-one').on('click', function() {
		if ($(this).is(':checked')) {
			var checkBoxes = $('.check-one');
			var count = 0;
			for ( var i = 0; i < checkBoxes.length; i++) {
				if (checkBoxes[i].checked == true) {
					count++;
				}
			}
			if (count == checkBoxes.length) {
				var checkAll=$('.check-all');
				for(var i=0;i<checkAll.length;i++){
					checkAll[i].checked = true;
				}
			}
		} else {
			if ($('#check-all').is(':checked')) {
				$('#check-all').attr('checked', false);
			}
		}
	});

	$('#download-btn').on('click', function() {
		var checkBoxes = $('.check-one');
		var str = "";
		for ( var i = 0; i < checkBoxes.length; i++) {
			if (checkBoxes[i].checked == true) {
				str += checkBoxes[i].value + ",";
			}
		}
		$('#downloads').val(str);
		$('#form-download').submit();
	});

	$('#delete-btn').on('click', function() {
		var checkBoxes = $('.check-one');
		var str = "";
		for ( var i = 0; i < checkBoxes.length; i++) {
			if (checkBoxes[i].checked == true) {
				str += checkBoxes[i].value + ",";
			}
		}
		$('#delete').val(str);
		$('#form-delete').submit();
	});
});