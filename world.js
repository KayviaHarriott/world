$(document).ready(function(){
    function testing(){
        alert ("This message is here.");
    }

    function requestCountry(city = ""){
        let countryI = $("#country").val();
        countryI = countryI.trim();
        
        $.ajax("world.php", {
            method: 'GET',
            data: {
                country: countryI,
                context: city
            }
        }).done(function(response){
            let parseHTML = response;
            $("#result").html(parseHTML);
        }).fail(function(){
            alert('There was an issue with the request.');
        });
    }
    
    $("#lookup").click(function(){
        testing();
        requestCountry();
    });
    
    $("#countrys").keypress(function(){
        testing();
        requestCountry();
        
    });
    
    $("#lookup-citiess").click(function(){
        testing();
        requestCountry("cities");
    });

    
});