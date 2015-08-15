_ =require 'lodash'
CAHModel = require '../models/cahmodel.coffee'
exports.question_cards = (res) ->
  res.reply res.random CAHModel.QUESTIONS

exports.answer_cards = (res) ->
  numberOfCards = res.match[1]
  if numberOfCards?
    res.reply res.random CAHModel.ANSWERS for i in [1..numberOfCards]
  else
    res.reply  res.random CAHModel.ANSWERS

exports.draw_question_card = (res) ->
  if CAHModel.DECK.QUESTIONS.length > 0
    res.reply CAHModel.DECK.QUESTIONS.pop()
  else
    res.reply "The question deck is empty"

exports.draw_answer_card = (res)->
  drawAnswerCard = ()->
    if CAHModel.DECK.ANSWER.length > 0
      res.reply CAHModel.DECK.ANSWER.pop()
    throw "Deck is empty"
  numberOfCard = res.match[1]
  if numberOfCard
    try
      drawAnswerCard() for i in [1..numberOfCard]
    catch e
      res.send e


exports.shuffle_deck = (res)->
  type = res.match[1].toUpperCase()
  CAHModel.shuffle(type)
  res.reply "#{type} has been shuffle"
exports.reset_deck=(res)->
  type = res.match[1].toUpperCase()
  CAHModel.reset(type)
  res.reply "#{type} has been reset"


