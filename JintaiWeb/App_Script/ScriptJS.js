$(document).ready(function () {
    $("img.lazy").lazyload();
    $('[data-toggle="tooltip"]').tooltip();
});

function Collapse(ByElement, id) {
    var details = $("#details-" + id);
    var register = $("#register-" + id);

    $('#' + ByElement).on('shown.bs.collapse', function () {
        // do something…
        details.addClass('hidden');
        register.removeClass('hidden');
    });

    $('#' + ByElement).on('hidden.bs.collapse', function () {
        // do something…
        details.removeClass('hidden');
        register.addClass('hidden');
    });
}