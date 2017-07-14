require('coffee-script')
express = require('express')
path    = require('path')
argv    = process.argv.slice(2)

app  = express()
port = argv[0] or 4242

app.set 'view engine', 'pug'
app.set 'json spaces', 4
app.use '/static', express.static(path.join(__dirname, 'views'))
app.use '/scripts', express.static(path.join(__dirname, './public/scripts'))
app.use '/stylesheets', express.static(path.join(__dirname, './public/stylesheets'))
app.use '/images', express.static(path.join(__dirname, './public/images'))
app.use '/bower_components', express.static(path.join(__dirname, '/bower_components'))

app.get '/', (req, res) ->
	res.render 'index', {title: 'Home', message: 'Hello!'}

console.log "Starting server on port: #{port}"
app.listen port

