$(function(){
	$('#upload-btn').on('click',function(){
		$('#form-upload').submit();
	});
	$('#queryLoopButton').on('click',function(){
		$('#form-loop').submit();
	});
	var _startDatePicker = $('.start-date');
	_startDatePicker.datetimepicker({
		pickTime: false,
		orientation: 'left',
		defaultDate: moment(),
		format: "YYYY-MM-DD",
		icons: {
			time: "fa fa-clock-o",
			date: "fa fa-calendar",
			up: "fa fa-arrow-up",
			down: "fa fa-arrow-down"
		}
	});	
	var _endDatePicker = $('.end-date');
	_endDatePicker.datetimepicker({
		pickTime: false,
		orientation: 'left',
		defaultDate: moment(),
		format: "YYYY-MM-DD",
		icons: {
			time: "fa fa-clock-o",
			date: "fa fa-calendar",
			up: "fa fa-arrow-up",
			down: "fa fa-arrow-down"
		}
	});
	$('#input-page').keyup(function(e) {
		if (e.keyCode === 13) {
			$('#form-page').submit();
		}
	});
	
	$('.btn-detail').on('click',function(){
		var tr = $(this).parent().parent();
		$('#a').text(tr.find('#aa').text());
		$('#b').text(tr.find('#bb').text());
		$('#c').text(tr.find('#cc').text());
		$('#d').text(tr.find('#dd').text());
		$('#e').text(tr.find('#ee').text());
		$('#f').text(tr.find('#ff').text());
		$('#g').text(tr.find('#gg').text());
		$('#h').text(tr.find('#hh').text());
		$('#i').text(tr.find('#ii').text());
		$('#j').text(tr.find('#jj').text());
		$('#k').text(tr.find('#kk').text());
		$('#l').text(tr.find('#ll').text());
		$('#m').text(tr.find('#mm').text());
		$('#n').text(tr.find('#nn').text());
		$('#o').text(tr.find('#oo').text());
		$('#p').text(tr.find('#pp').text());
		$('#q').text(tr.find('#qq').text());
		$('#r').text(tr.find('#rr').text().trim());
		$('#r').attr('href',$('#path').val().trim()+'/'+tr.find('#rr').text().trim());

		$('#s').text(tr.find('#ss').text().trim());
		$('#s').attr('href',$('#path').val().trim()+'/'+tr.find('#ss').text().trim());
		$('#t').text(tr.find('#tt').text().trim());
		$('#t').attr('href',$('#path').val().trim()+'/'+tr.find('#tt').text().trim());
		$('#u').text(tr.find('#uu').text().trim());
		$('#u').attr('href',$('#path').val().trim()+'/'+tr.find('#uu').text().trim());
		$('#v').text(tr.find('#vv').text().trim());
		$('#v').attr('href',$('#path').val().trim()+'/'+tr.find('#vv').text().trim());
		$('#w').text(tr.find('#ww').text().trim());
		$('#w').attr('href',$('#path').val().trim()+'/'+tr.find('#ww').text().trim());
		$('#x').text(tr.find('#xx').text().trim());
		$('#x').attr('href',$('#path').val().trim()+'/'+tr.find('#xx').text().trim());
		$('#y').text(tr.find('#yy').text().trim());
		$('#y').attr('href',$('#path').val().trim()+'/'+tr.find('#yy').text().trim());
		$('#z').text(tr.find('#zz').text().trim());
		$('#z').attr('href',$('#path').val().trim()+'/'+tr.find('#zz').text().trim());
		$('#3a').text(tr.find('#aaa').text());
		$('#3b').text(tr.find('#bbb').text());
		$('#3c').text(tr.find('#ccc').text());
		$('#3d').text(tr.find('#ddd').text());
		$('#3e').text(tr.find('#eee').text());
		$('#modal-detail').modal('show');
	});
	
	
})