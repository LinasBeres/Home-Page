$ ->
  new FormInput()


class FormInput
  constructor: () ->

    $('#search_input').focus()
    $(document).keypress () ->
      $('#search_input').focus()
