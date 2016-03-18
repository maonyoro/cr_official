gulp = require('gulp')
sass = require('gulp-sass')
jade = require('gulp-jade')
coffee = require('gulp-coffee')
webserver = require('gulp-webserver')

# Default rule
gulp.task 'default', ->
  gulp.run('jade','sass','coffee')

# watch
gulp.task 'watch', ->
  gulp.watch './src/*.jade', ['jade']
  gulp.watch './src/*.scss', ['sass']
  gulp.watch './src/*.coffee', ['coffee']
  gulp.src('./public').pipe(
    webserver({
      livereload: true
    })
  )

gulp.task 'jade', ->
  gulp.src('./src/*.jade').pipe(jade({pretty: true})).pipe(gulp.dest('./public/'))

gulp.task 'sass', ->
  gulp.src('./src/*.scss').pipe(sass()).pipe(gulp.dest('./public/'))

gulp.task 'coffee', ->
  gulp.src('./src/*.coffee').pipe(coffee()).pipe(gulp.dest('./public/'))
