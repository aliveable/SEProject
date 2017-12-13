function checkEmptyInput() {
    if($('[name="space_id"]').val() === '') {
        return getAlert();
    } else if($('[name="price"]').val() === '') {
        return getAlert();
    } else if($('[name="before"]').val() === '') {
        return getAlert();
    } else if($('[name="max"]').val() === '') {
        return getAlert();
    } else if($('[name="open_time"]').val() === '') {
        return getAlert();
    } else if($('[name="close_time"]').val() === '') {
        return getAlert();
    }
}

function getAlert() {
    alert("Please fill in the form");
    return false;
}
