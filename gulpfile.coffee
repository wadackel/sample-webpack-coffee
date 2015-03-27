gulp = require "gulp"
$    = do require "gulp-load-plugins"

# src/app.coffeeをdistディレクトリにコンパイルします
gulp.task "webpack", ->
  gulp.src "./src/"
  .pipe $.webpack require "./webpack.config.coffee"
  .pipe gulp.dest "./dist/"

# srcディレクトリ内の.coffee, または.jsファイルが変更されたらwebpackタスクを実行
gulp.task "default", ->
  $.watch "./src/**/*.+(coffee|js)", ->
    gulp.start "webpack"