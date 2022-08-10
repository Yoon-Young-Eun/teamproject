$(document).ready(function() {
$('#selectBox').change(function() {
	var state = $('#selectBox option:selected').val();
	if (state == '3') {
		$('.layer').show();
	} else {
		$('.layer').hide();
	}
});
});