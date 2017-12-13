function checkEmptyInput() {
    if($('#first_name').val() === '') {
        return getAlert();
    } else if($('#last_name').val() === '') {
        return getAlert();
    } else if($('#email').val() === '') {
        return getAlert();
    } else if($('#phone').val() === '') {
        return getAlert();
    } else if($('#address').val() === '') {
        return getAlert();
    } else if($('#district').val() === '') {
        return getAlert();
    } else if($('#sub_district').val() === '') {
        return getAlert();
    } else if($('#postal_code').val() === '') {
        return getAlert();
    }
}

function getAlert() {
    alert("Please fill in the form");
    return false;
}
