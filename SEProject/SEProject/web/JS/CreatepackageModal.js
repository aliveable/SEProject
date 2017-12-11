/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var keepInclude = [];
var keepOptional = [];

$(document).ready(function () {
    $('#edititemOptional').on("click", function () {
        $('#editmodaloptional').modal('show');
    });


    $('#additemoptional').click(function () {
        $('#additemoptionalmodel').modal('show');

    });

    $('#edititem2').click(function () {
        $('#editmodalinclude').modal('show');

    });

    $('#additemincludebutton').click(function () {
        $('#additemincludemodel').modal('show');

    });

    $('#edititem2').on('click', function (){
        var buttonindex = $(this).index();
        alert(buttonindex);
    });
    
  
    
});

function edittiem(ind){
    alert("fuck");
    $('#additemincludemodel').modal('show');`   `
    $('#recipient-name-include-add').val(keepInclude[ind]);
            
}

function addItem() {

    $('#addItemContainer.row:last').after(
            '<div id="parent" class="row">' +
                '<div class="col-md-11" id="addcomplete" style="">' +
                    '<ul style="font-size: 1.8em;"><div style="word-wrap: break-word">' + $('#recipient-name-include-add').val() + '</div></ul>' +
                '</div>' +
                '<div id="buttonclick" class="col-md-1">' +
                    '<button id="edititem2" type="button" class="btn btn-success" style="margin-left: 2%"> Edit</button>' +
                '</div>' +
            '</div>');
    keepInclude.push($('#recipient-name-include-add').val());
}

function editOptionalItem(){
    $('#recipient-name').val(keepOptional[0][0]);
    $('#recipient-price').val(keepOptional[0][1]);
    $('#recipient-max').val(keepOptional[0][2])
    
}
function addItemOptional() { 
    $('#addItemContainerOptional.row:last').after('<div class="row">' +
            '<div class="col-md-11" style="">' +
            '<ul style="font-size: 1.8em;"> <div style="word-wrap: break-word">' + 'Optional: ' + $('#recipient-name').val() +
            ' Price: ' + $('#recipient-price').val() + ' Max: ' + $('#recipient-max').val() + '</div> </ul>' +
            '</div>' +
            '<div class="col-md-1" style="float: right">' +
            '<button id="edititemOptional1" type="button" class="btn btn-success" style="margin-left: 2%;float: right"> Edit</button>' +
            '</div>' +
            '</div>');
    keepOptional.push([$('#recipient-name').val(), $('#recipient-price').val(), $('#recipient-max').val()]);
}






