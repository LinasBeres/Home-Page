require('coffee-script')
express = require('express')
argv    = process.argv.slice(2)

app  = express()
port = argv[0] or 4242

app.get '/', (req, res) ->
  res.send "Hello There"

console.log "Starting server on port: #{port}"
app.listen port

