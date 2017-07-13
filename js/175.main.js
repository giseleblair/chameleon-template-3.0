// You can add custom JavaScript here
// or create additional files.
//
// Learn more here: https://developer.zesty.io/docs/code-editor/javascript-files/

$(function() {
	setTimeout(function() {
    $('form[data-zlf]').each(function() {
        var $form = $(this),
            formName = $form.attr('data-zlf');
        $form.prepend('<input type="hidden" name="zlf" value="'+formName+'" />');
        $form.prepend('<input type="hidden" name="zcf" value="1" />'); 
    });
    },3000);
});
