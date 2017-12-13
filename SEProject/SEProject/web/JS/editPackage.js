function checkEmptyInput() {
    if($('[name="name"]').val() === '') {
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

function checkEmptyInput2(item) {
    if($(item).parent().parent().children('.col-md-6').children('#space_text').val() === '') {
        return getAlert();
    }
    alert();
    return false;
}

function checkEmptyInput2() {
    if($('.includeinput #package_text').val() === '') {
        return getAlert();
    }
}

function getAlert() {
    alert("Please fill in the form");
    return false;
}
