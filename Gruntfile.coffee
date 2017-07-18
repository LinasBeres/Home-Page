module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    watch:
      files: ['bower.json']
      tasks: ['exec:bower_install']
    exec:
      bower_install:
        cmd: "bower install"
    coffee:
      compile:
        expand: true,
        nonull: true,
        cwd: 'dev/coffee',
        src: ['*.coffee'],
        dest: './public/scripts/',
        ext: '.js'

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  null
