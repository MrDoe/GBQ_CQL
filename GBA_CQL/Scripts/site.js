function ToggleLoadButton(btn) {
    btn.value = "Bitte warten...";
    $("body").css("cursor", "progress");
}

function modalAlert() {
    $('#modalAlert').modal('show');
    $("body").css("cursor", "normal");
}
