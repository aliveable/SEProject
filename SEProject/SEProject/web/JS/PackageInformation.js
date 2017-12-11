/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function (){
    $('#radio div input').on('click',function (){
        $(this).after('<input type="text" class="from-control">');
    });
});


