
$(document).ready(function () {
    $("#space-table").DataTable({
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
