$ ->
  $('[data-toggle="tooltip"]').tooltip() # Initialise all tooltips

  $('#links').click () ->
    $('.university').hide()
    $('.links').show()
  $('#uni').click () ->
    $('.university').show()
    $('.links').hide()

  $.ajax
    url: "links/links.txt"
    dataType: "text"
    success: (data) ->
      createLinks(data)


createLinks = (data) ->
  # Creates a link object that will be added to links class
  links = data.split('\n')
  console.log(links)

  index = 0
  template = ''
  for line, i in links
    if line == '' then continue
    info = line.split(',')
    template += "<li class='link'><a href=" + info[1] + ">" + info[0] + "</a></li>"

    if (i+1)%22 is 0
      index++
      $('.links ul')[index - 1].innerHTML = template
      template = ''

  if template isnt ''
    index++
    $('.links ul')[index - 1].innerHTML = template
