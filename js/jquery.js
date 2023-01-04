$(document).ready(function() {
	$('#formLogin').submit(function(e) {
		e.preventDefault();
		var firstName = $('#loginUserId').val();
		var lastName = $('#loginPassword').val();
        $(".error").remove();

		if (firstName.length < 1) {
			$('#loginUserId').after('<div class="userError small">*This field is required</div>');
		}
		if (lastName.length < 1) {
			$('#loginPassword').after('<div class="userError small">*This field is required</div>');
		}
    });

});