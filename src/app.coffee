$  = require "jquery"
jp = require "jp-prefecture"

$ ->

  # 各セレクタ
  $prefResult = $("#pref-result")
  $prefInput = $("#pref-input")

  # 入力値を英語表記へ変換して表示
  $prefInput.on "keyup", ->
    result =  jp.prefConvert $(@).val(), "en"
    result ?= "Not Found!"
    $prefResult.text result
