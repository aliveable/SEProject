$(document).ready(function () {
    $('#addpackagecreate').click(function () {
        addReserve();
        removePeriod();
    });

    $('#reserve-list').on('click', '#removepackage', function () {
        $(this).parent().parent().remove();
    });
});

function removePeriod(){
    $('#select_period option:selected').remove();
}

function addReserve() {
    var html = '<div class="row" style="border: 2px solid #D3D3D3f0;padding-top: 1.5%">\n' +
            '<div class="col-lg-4">\n' +
            '   <label id="label-time" style="font-size: 1.5em" >' + $('.custom-select').val() + '</label>\n' +
            '</div>\n' +
            '<div class="col-lg-4">\n' +
            '   <label style="font-size: 1.5em">' + $('#input-people').val() + '</label> <label style="font-size: 1.6em">People</label>\n' +
            '</div>\n' +
            '<div class="col-lg-4">\n' +
            '   <button id="removepackage" type="button" class="btn btn-danger mr-right" style="float: right">Remove</button>\n' +
            '</div>\n';

    $('#reserve-list').append(html);
}