
var initialValue = 0;

var sliderTooltip = function(event, ui) {
    var curValue = ui.value || initialValue;
    var tooltip = '<div class="tooltip"><div class="tooltip-inner">' + curValue + '</div><div class="tooltip-arrow"></div></div>';

    $('.ui-slider-handle').html(tooltip);

}

$("#slider").slider({
    value: initialValue,
    min: 0,
    max: 5,
    step: 1,
    create: sliderTooltip,
    slide: sliderTooltip
});