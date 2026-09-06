window.addEventListener("message", function(event) {
    var v = event.data
    var datos = v.data
    
    switch (v.action) {
        case 'open':
            $('.allPeds').append(`
                <div class="pedContainer" id="${v.name}-clickUse">
                    <h1>${v.label}</h1>
                    <img id="${v.name}" class="imgPed-${v.name}" src="PedImages/${v.name}.webp" onerror="javascript:imgError(this)" alt="">
                </div>
            `)

            $(`#${v.name}-clickUse`).click(function() {
                $.post('https://Roda_MasterPeds/UsePed', JSON.stringify({
                    pednameputo : $(`.imgPed-${v.name}`).attr('id')
                }));
                CloseAll()
             })
            $('.container').fadeIn()
        break;


        case 'OpenUserMenu':
            $('.TitleAndTarget').attr('id', v.target)
            $('.TitleAndTarget').text(`Give Peds to [${v.target}] ${v.targetname}`)
            $('.GivePedMenu').show()
        break;


        case 'LoadDefaultPeds': 
            $('.containerDefaultPeds').append(`
                <div class="ShowPeds">
                    <input class="InputPro" type="text" name="" id="${v.pedname}-value" placeholder="Insert Label">
                    <img src="PedImages/${v.pedname}.webp" onerror="javascript:imgError(this)" alt="">
                    <a class="${v.pedname}" id="${v.pedname}-Click" href="#">Give Ped</a>
                </div>
            `)

            $(`#${v.pedname}-Click`).click(function() {
               $.post('https://Roda_MasterPeds/CheckPed', JSON.stringify({
                   userlabel : $(`#${v.pedname}-value`).val(),
                   userid : $('.TitleAndTarget').attr('id'),
                   username : $(`.${v.pedname}`).attr('class')
               }));
                CloseAll()
            })
        break;


        case 'ManagePeds': 
                $('.userpene').text(`Manage the Peds of ${v.targetname}`)
                $('tbody').append(`
                <tr class="RipPedsXD" id="${v.name}-remove">
                    <td class="${v.name}-label" id="${v.name}">${v.label}</td>
                    <td>${v.name}</td>
                    <td><a class="${v.name}-removePedxD" id="${v.target}" href="#">Delete Ped</a></td>
                </tr>
                `)
                $('.ManagePeds').show()
                $(`.${v.name}-removePedxD`).click(function(){
                    pid = this.id
                    labelped = $(`.${v.name}-label`).text()
                    nombreped = $(`.${v.name}-label`).attr('id')
                    $.post('https://Roda_MasterPeds/DeletePed', JSON.stringify({
                        userlabel : labelped,
                        nombreped : nombreped,
                        targt : pid,
                    }));
                    $(`#${v.name}-remove`).remove()
                })
        break;


        case 'showNoti': 
            ShowNoti(v.tituloxD, v.cuerpoxD)
        break;

        case 'showError': 
            $('.errorpe').show()
        break;

        case 'hideError': 
            $('.errorpe').hide()
        break;
        

    }
});


function imgError(img) {
    img.error="";
    img.src="PedImages/roda_ped.webp";
}

window.addEventListener("load", () => {
    $.post('https://Roda_MasterPeds/LoadDefaultPeds', JSON.stringify({}));
})

function CloseAll(){
    $('.container').hide()
    $('.GivePedMenu').hide()
    $('.errorpe').hide()
    $('.pedContainer').remove()
    $('.ManagePeds').hide()
    $('.RipPedsXD').remove()
    $('#namepedPro').val('')
    $('input').val('')
    $('#labelpedPro').val('') 
    $.post('https://Roda_MasterPeds/exit', JSON.stringify({}));
}

$(function(){
    $('.fa-sign-out').click(function(){
        CloseAll()
        $.post('https://Roda_MasterPeds/exit', JSON.stringify({}));
    })


    $('.ResetPed').click(function(){
        CloseAll()
        $.post('https://Roda_MasterPeds/resetped', JSON.stringify({}));
    })

    $('.CustomPed').click(function(){
        nombreped = $('#namepedPro').val() || 'NULL'
        labelped = $('#labelpedPro').val() || 'NULL'
        $.post('https://Roda_MasterPeds/CheckPed', JSON.stringify({
            userlabel : labelped,
            userid : $('.TitleAndTarget').attr('id'),
            username : nombreped,
        }));
    })

    $('#SearchReport').keyup(function(){
        // Search Text
        var search = $(this).val();
    
        // Hide all table tbody rows
        $('table tbody tr').hide();
    
        // Count total search result
        var len = $('table tbody tr:not(.notfound) td:contains("'+search+'")').length;
    
        if(len > 0){
          // Searching text in columns and show match row
          $('table tbody tr:not(.notfound) td:contains("'+search+'")').each(function(){
            $(this).closest('tr').show();
          });
        }
    
    })
})


$(document).keyup((e) => {
    if (e.key === "Escape") {
        CloseAll()
    }
});


function ShowNoti(title, cuerpo) {
    var sound = new Audio('sound/default.mp3');
    sound.volume = 0.3;
    var id = $(`.NotisDaddy .notis`).length;
    $('.NotisDaddy').animate({'right':'1vw'})
    $('.NotisDaddy').show()
    $('.NotisDaddy').append(`
    <div id=${id} class="notis"> 
            <h1>${title}</h1>
            <p>${cuerpo}</p>
    </div>
    `)
    sound.play();
    setTimeout(function () {
        var $this = $(`.NotisDaddy .notis[id=${id}]`);
        $this.animate({'left':'20vw'})
        $this.fadeOut(400)
        
    }, 3000)
}