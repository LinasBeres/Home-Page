_padTime = (n) ->
  if n < 10 then return '0' + n
  else return n

displayWord = (time_holder) ->
  hour = new Date().getHours()

  if hour >= 6 and hour < 12 then $("#{time_holder} h1").html "Good Morning!"
  else if hour >= 12 and hour < 17 then $("#{time_holder} h1").html "Good Afternoon!"
  else if hour >= 17 and hour < 24 then $("#{time_holder} h1").html "Good Evening!"
  else $("#{time_holder} h1").html "Good...? Wait shouldn't you be asleep?"

displayTime = ->
  dateTime = new Date()

  hours = _padTime dateTime.getHours()
  minutes = _padTime dateTime.getMinutes()
  seconds = _padTime dateTime.getSeconds()

  # if dateTime.getHours() < 10 then hours = '0' + dateTime.getHours() else hours = dateTime.getHours()
  # if dateTime.getMinutes() < 10 then minutes = '0' + dateTime.getMinutes() else minutes = dateTime.getMinutes()
  # if dateTime.getSeconds() < 10 then seconds = '0' + dateTime.getSeconds() else seconds = dateTime.getSeconds()

  time = hours + ':' + minutes + ':' + seconds
  $('time').html(time)

window.displayTime = displayTime
window.displayWord = displayWord
