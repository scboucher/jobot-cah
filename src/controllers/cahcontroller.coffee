
CAHModel = require '../models/cahmodel.coffee'
exports.question_cards = (res) ->
  res.reply res.random CAHModel.QUESTIONS

exports.answer_cards = (res) ->
  numberOfCards = res.match[1]
  if numberOfCards?
    res.reply res.random CAHModel.ANSWERS for i in [1..numberOfCards]
  else
    res.reply  res.random CAHModel.ANSWERS
