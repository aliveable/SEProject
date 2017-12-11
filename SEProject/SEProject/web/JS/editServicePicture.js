$(document).ready(function () {
    $('#input-upload').change(function () {
        if (this.files.length > 5) {
            $('#btn-upload').prop("disabled", true);
            alert('You cannot upload more than 5 pics!!!');
            $(this).val("");
        } else if (this.files.length === 0) {
            $('#btn-upload').prop("disabled", true);
        } else {
            $('#btn-upload').prop("disabled", false);
        }
    });
});
