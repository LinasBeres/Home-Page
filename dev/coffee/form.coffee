class FormInput
  constructor: (@form, @not_form) ->
    @_focus()
    @_exit()

  
  _focus: =>
    form = @form
    not_form = @not_form
    $(document).keypress () ->
      $(form).css("display", "flex")
      $(not_form).hide()
      $("#{form} input").focus()

  _exit: =>
    form = @form
    not_form = @not_form
    $(document).keyup (e) ->
      if e.keyCode is 27   # ESC key
        $("#{form} input").val ''
        $(form).hide()
        $(not_form).show()
      if e.keyCode is 8 or e.keyCode is 46  # Backspace key or Delete key
        val = $.trim $("#{form} input").val()
        if val is ""
          console.log("empty")
          $(form).hide()
          $(not_form).show()

window.FormInput = FormInput
