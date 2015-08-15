# Description
#   use Hubot as a Card against Humanity deck
#
# Configuration:
#
#
# Commands:
#   hubot question card - send a question card
#   hubot <1-2> answer card - send 1 or 2 question card
#   hubot draw question card - Draw a question card from the deck, if any left
#   hubot shuffle answers|questions card - Shuffle card in the deck, i.e. Not those in the discard pile.
#   hubot reset answers|questions card - Shuffle card in the deck, with all cards
#   hubot draw <1-2> answers card - Draw <1-2> answer card from the deck, if any left
#
# Notes:
#   None
#
# Author:
#   Samuel Boucher

language = require './languages/cahlanguage.coffee'
controller = require './controllers/cahcontroller.coffee'
module.exports = (robot) ->
  robot.respond language.QUESTION_CARDS, controller.question_cards
  robot.respond language.ANSWER_CARDS, controller.answer_cards
  robot.respond language.DRAW_ANSWER_CARDS, controller.draw_answer_card
  robot.respond language.DRAW_QUESTION_CARDS, controller.draw_question_card
  robot.respond language.SHUFFLE_CARDS, controller.shuffle_deck
  robot.respond language.RESET_CARDS, controller.reset_deck
