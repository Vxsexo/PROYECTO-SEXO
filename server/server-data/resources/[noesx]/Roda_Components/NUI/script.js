$(function()
{
    $('.weapon').hide();
    //get info from client side
    window.addEventListener('message', function(event)
    {
        $('#' + event.data.jsweapon).show();
    }, false);

});

function getclick(comp, weapon)
{
    $.post('https://Roda_Components/datasend', JSON.stringify({ 
        compc: comp,
        weaponc: weapon
     }))
}

 
$(document).keyup((e) => {
    if (e.key === 'Escape') {
        $.post('https://Roda_Components/close', JSON.stringify({ message: null }));
        $('.weapon').hide();
    }
});