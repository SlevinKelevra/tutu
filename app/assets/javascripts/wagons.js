$(document).ready(function() {
    $('#wagon_type').change(function() {
        var type;
        type = $(this).val();

        if (type == 'CoupeWagon') {
            $('.upper_wagons_fields').show();
            $('.lower_wagons_fields').show();
            $('.economy_wagons_fields').hide();
            $('.seat_wagons_fields').hide();
        } else if (type == 'EconomyWagon') {
            $('.upper_wagons_fields').show();
            $('.lower_wagons_fields').show();
            $('.economy_wagons_fields').show();
            $('.seat_wagons_fields').hide();
        } else if (type == 'SVCarriage') {
            $('.upper_wagons_fields').hide();
            $('.lower_wagons_fields').show();
            $('.economy_wagons_fields').hide();
            $('.seat_wagons_fields').hide();
        } else if (type == 'SeatWagon') {
            $('.upper_wagons_fields').hide();
            $('.lower_wagons_fields').hide();
            $('.economy_wagons_fields').hide();
            $('.seat_wagons_fields').show();
        }
    });
})
