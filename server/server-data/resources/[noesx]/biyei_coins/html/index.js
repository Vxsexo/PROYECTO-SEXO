

  $(document).ready(function () {
      $('select').selectize({
          sortField: 'text'
      });
  });
$(function () {
    function display(bool) {
        if (bool) {
            $("#container").fadeIn(300);
        } else {
            $("#container").fadeOut(300);
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })
    // if the person uses the escape key, it will exit the resource
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('http://biyei_coins/exit', JSON.stringify({}));
            return
        }
    };
    $("#close").click(function () {
        $.post('http://biyei_coins/exit', JSON.stringify({}));
        return
    })

    window.addEventListener('message', (event) => {

        const data = event.data;
    
        if (data.type === 'BIYEI:DISPLAY') {
            document.getElementById('get_coins').textContent = data.get_coins;
            document.getElementById("logo").src=data.logo;
            document.getElementById('titlemain').textContent = data.titlemain;
            document.getElementById('textmain').textContent = data.textmain;

            
        }
    
    });
    

    
    
    //when the user clicks on the submit button, it will run
    $("#submit").click(function () {
        let inputValue = $("#input").val()
        if (inputValue.length >= 100) {
            $.post("http://biyei_coins/error", JSON.stringify({
                error: "Input was greater than 100"
            }))
            return
        } else if (!inputValue) {
            $.post("http://biyei_coins/error", JSON.stringify({
                error: "There was no value in the input field"
            }))
            return
        }
        // if there are no errors from above, we can send the data back to the original callback and hanndle it from there
        $.post('http://biyei_coins/main', JSON.stringify({
            text: inputValue,
        }));
        return;
    })
})