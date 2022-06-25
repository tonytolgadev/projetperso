Stripe.setPublishableKey('pk_test_51L0R5AHm61DgBwVqEPsXtOKGaZvEYPtH4ecEw6gaBOQUYBeeGZPYT75HJ17pKFZ3IySmO8hBGd01gCNsgfl0JORw00V6KIhbMI');

var $form = $('#checkout-form');

$form.submit(function(event){
    $('#charge-error').addClass('hidden');
    $form.find('button').prop('disabled', true);
    Stripe.card.createToken({
        number: $('#card-number').val(),
        cvc: $('#card-cvc').val(),
        exp_month: $('#card-expiry-month').val(),
        exp_year: $('#card-expiry-year').val(),
        name: $('#card-name').val()
    }, stripeResponseHandler);
    return false;
});

function stripeResponseHandler(status, response){
    if (response.error) {
        $('#charge-error').removeClass('hidden');
        $('#charge-error').text(response.error.message);
        $form.find('button').prop('disabled', false);
    } else {
        var token = response.id;
        $form.append($('<input type="hidden" name="stripeToken"/>').val(token));

        // submit the form:
        $form.get(0).submit();

    }
}
