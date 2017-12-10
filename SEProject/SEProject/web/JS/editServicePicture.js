$(document).ready(function () {
    $('#input-upload').change(function () {
        if (this.files.length > 5) {
            alert('You cannot upload more than 5 pics!!!');
            $(this).val("");
        }
    });
});
