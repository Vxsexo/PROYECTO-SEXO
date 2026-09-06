$(function () {
  var displayed = false;
  function display(bool) {
    if (bool) {
      $(".defcon_card").show();
      displayed = true;
    } else {
      $(".defcon_card").hide();
      displayed = false;
    }
  }

  window.addEventListener("message", function (event) {
    var data = event.data;
    if (data.type === "display:change_defcon") {
      display(true);
      document.getElementById("def").style =
        "background-color: " + data.colordef + ";";

      document.getElementById("num_def").textContent = data.numberdef;
    }
    if (data.type === "display:toggleUI") {
      if (displayed == true) {
        display(false);
      } else {
        display(true);
      }
    }
    if (data.type === "display:ocultar") {
      display(false);
    }
    if (data.type === "display:mostrar") {
      display(true);
    }
  });
});
