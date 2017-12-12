$(document).ready(function () {
    $('#addpackagecreate').click(function () {
        addReserve();
    });

    $('#removepackage').on('click', '#removepackage', function () {
        alert("click");
        //$(this).parent().parent().html();
    });
});

function addReserve() {
    var html = '<div class="row" style="border: 2px solid #D3D3D3f0;padding-top: 1.5%">\n' +
            '<div class="col-lg-4">\n' +
            '   <label style="font-size: 1.5em" >' + $('.custom-select').val() + '</label>\n' +
            '</div>\n' +
            '<div class="col-lg-4">\n' +
            '   <label style="font-size: 1.5em">' + $('#input-people').val() + '</label> <label style="font-size: 1.6em">People</label>\n' +
            '</div>\n' +
            '<div class="col-lg-4">\n' +
            '   <button  id="removepackage" type="button" class="btn btn-danger mr-right" style="float: right">Remove</button>\n' +
            '</div>\n';

    $('#reserve-list').append(html);
}