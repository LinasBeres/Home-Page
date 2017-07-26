$ ->
  word = getTimeWord()
  $('.time h1').append(word)
  setInterval(displayTime, 1000)
  new FormInput("#search_form", ".holder")

getTimeWord = ->
  hour = new Date().getHours()

  if hour >= 6 and hour < 12 then return " Morning!"
  else if hour >= 12 and hour < 17 then return " Afternoon!"
  else if hour >= 17 and hour < 24 then return " Evening!"
  else return "...? Wait shouldn't you be asleep?"

displayTime = ->
  dateTime = new Date()

  if dateTime.getHours() < 10 then hours = '0' + dateTime.getHours() else hours = dateTime.getHours()
  if dateTime.getMinutes() < 10 then minutes = '0' + dateTime.getMinutes() else minutes = dateTime.getMinutes()
  if dateTime.getSeconds() < 10 then seconds = '0' + dateTime.getSeconds() else seconds = dateTime.getSeconds()

  time = hours + ':' + minutes + ':' + seconds
  $('time').html(time)
