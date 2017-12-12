$(document).ready(function () {
    $('#addpackagecreate').click(function () {
        addReserve();
        addCost();
        removePeriod();
    });

    $('#reserve-list').on('click', '#removepackage', function () {
        var people = $(this).parent().parent().children("#data").children("#people").val();
        $("#total_cost").val(parseInt($("#total_cost").val())-parseInt(($("#price").val())*people));
        $("#cost").val(parseInt($("#cost").val())-parseInt(($("#price").val())*people));
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
            '<div id="data" class="col-lg-4">\n' +
            '   <label style="font-size: 1.5em">' + $('#input-people').val() + '</label> <label style="font-size: 1.6em">People</label>\n' +
            '<input type="hidden" id="people" value="'+$('#input-people').val()+'">\n' +
            '</div>\n' +
            '<div class="col-lg-4">\n' +
            '   <button id="removepackage" type="button" class="btn btn-danger mr-right" style="float: right">Remove</button>\n' +
            '</div>\n';
    $('#reserve-list').append(html);
}

function addCost(){
    $("#total_cost").val(parseInt($("#total_cost").val())+parseInt(($("#price").val())*$("#input-people").val()));
    $("#cost").val(parseInt($("#cost").val())+parseInt(($("#price").val())*$("#input-people").val()));
}