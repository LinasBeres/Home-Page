module.export = (grunt) ->
	grunt.initConfig ->
		watch:
			less:
				files: ['bower.json']
				task: ['exec:bower_install']
		exec:
			bower_install:
				cmd: "bower install"
