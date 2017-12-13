function checkEmptyInput() {
    if ($('[name="name"]').val() === '') {
        return getAlert();
    } else if ($('[name="price"]').val() === '') {
        return getAlert();
    } else if ($('[name="before"]').val() === '') {
        return getAlert();
    } else if ($('[name="max"]').val() === '') {
        return getAlert();
    } else if ($('[name="open_time"]').val() === '') {
        return getAlert();
    } else if ($('[name="close_time"]').val() === '') {
        return getAlert();
    }
}

function checkEmptyInputi2(item) {
    if ($(item).parent().parent().children('.col-lg-6').children('#package_text').val() === '') {
        return getAlert();
    }
}

function checkEmptyInput2() {
    if ($('.includeinput #package_text').val() === '') {
        return getAlert();
    }
}

function checkEmptyInputi3(item) {
    if ($(item).parent().parent().children('.col-lg-4').children('#package_text').val() === '') {
        return getAlert();
    } else if ($(item).parent().parent().children('.col-lg-2').children('#package_list_price').val() === '') {
        return getAlert();
    }
}

function checkEmptyInput3() {
    if ($('.optionalinput #package_text').val() === '') {
        return getAlert();
    } else if ($('.optionalinput #package_list_price').val() === '') {
        return getAlert();
    }
}

function getAlert() {
    alert("Please fill in the form");
    return false;
}
