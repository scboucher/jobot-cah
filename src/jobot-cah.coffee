# Description
#   use Hubot as a Card against Humanity deck
#
# Configuration:
#
#
# Commands:
#   hubot question card - send a question card
#   hubot <1-2> answer card - send 1 or 2 question card
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
