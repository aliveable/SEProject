function checkEmptyInputi(item) {
    if($(item).parent().parent().children('.col-md-6').children('#space_text').val() === '') {
        return getAlert();
    }
}

function checkEmptyInput() {
    if($('.inputhere #space_text').val() === '') {
        return getAlert();
    }
}

function getAlert() {
    alert("Please fill in the form");
    return false;
}
