gulp = require('gulp')
sass = require('gulp-sass')
pug = require('gulp-pug')
coffee = require('gulp-coffee')
webserver = require('gulp-webserver')

# Default rule
gulp.task 'default', ['pug','sass','coffee']

# watch
gulp.task 'watch', ->
  gulp.watch './src/*.pug', ['pug']
  gulp.watch './src/*.sass', ['sass']
  gulp.watch './src/*.coffee', ['coffee']
  gulp.src('./public').pipe(
    webserver({
      host: "0.0.0.0",
      livereload: true,
      port: 8888
    })
  )

gulp.task 'pug', ->
  gulp.src('./src/*.pug').pipe(pug({pretty: true})).pipe(gulp.dest('./public/'))

gulp.task 'sass', ->
  gulp.src('./src/*.sass').pipe(sass()).pipe(gulp.dest('./public/'))

gulp.task 'coffee', ->
  gulp.src('./src/*.coffee').pipe(coffee()).pipe(gulp.dest('./public/'))
