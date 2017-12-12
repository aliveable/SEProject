/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $("#useourservice-table").DataTable({
        order: [[0, "desc"]],
        columnDefs: [
            {
                searchable: false,
                targets: [4]
            },
            {
                orderable: false,
                targets: [4]
            }
        ]
    });
});