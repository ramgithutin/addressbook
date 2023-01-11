function postvalue(name){
    $.ajax({
        url:'components/getvalue.cfc?method=view',
        type:'post',
        data:{
            method:"view",
            Email:name,
            dataType:"json"
        },
        success:function(response){
            var r=response;
            $('#hello').html(r);
        }
    }) 
}