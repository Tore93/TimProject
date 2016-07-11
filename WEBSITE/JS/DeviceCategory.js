
$(document).ready(function () {

    $.ajax({
        method: "POST",
        //dataType: "json", //type of data
        crossDomain: true, //localhost purposes
        url: "http://hypermedia2016tim.altervista.org/php/PhotoDeviceCategory.php", //Relative or absolute path to file.php file
        // data: {id:info},
        success: function(response) {
            var json=JSON.parse(response);

            for(var i=0;i<json.length;i++){
                console.log(json.length);

                var content =json[i].Name;
                var IMG = $('.content img');

                var content2 =json[i].Path;


                console.log(content);
                console.log(json[i].Id_category);


                if(json[i].Id_category=='1'){
                    console.log("entro nel primo elemento");
                    $(".content .column .devCategory:nth-child(1) p").html(content);

                    IMG[i].src= content2;

                }
                else if(json[i].Id_category=='2'){ 
                    console.log("entro nel secodno elemento");
                    $(".content .column .devCategory:nth-child(2) p").html(content);
                    IMG[i].src= content2;
                }else if(json[i].Id_category=='3'){
                    console.log("entro nel terzo elemento");
                    $(".content .column .devCategory:nth-child(3) p").html(content);
                    IMG[i].src= content2;
                }else if(json[i].Id_category=='4'){
                    console.log("entro nel quanrto elemento");
                    $(".content .column2 .devCategory:nth-child(1) p").html(content);
                    IMG[i].src= content2;

                }
                else if(json[i].Id_category=='5'){
                    console.log("entro nel quanrto elemento");
                    $(".content .column2 .devCategory:nth-child(2) p").html(content);
                    IMG[i].src= content2;

                }
                else if(json[i].Id_category=='6'){
                    console.log("entro nel quanrto elemento");
                    $(".content .column2 .devCategory:nth-child(3) p").html(content);
                    IMG[i].src= content2;

                }
                content='';
            }




            // based on id I will fill the related divs


        },
        error: function(request,error)
        {
            console.log("Error");
        }
    })

}
                  
                  
                  
                 );

