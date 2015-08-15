chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'
language = require '../src/languages/cahlanguage.coffee'
model = require '../src/models/cahmodel.coffee'
expect = chai.expect

describe 'Testing Regex and their values for Jobot-cah ', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/jobot-cah')(@robot)

  it 'Should respond to question card', ->
    expect(@robot.respond).to.have.been.calledWith(language.QUESTION_CARDS)

  it 'Question card regex', ->
    expect("q card").to.match(language.QUESTION_CARDS)
    expect("question card").to.match(language.QUESTION_CARDS)

  it 'Should respond to draw a card', ->
    expect(@robot.respond).to.have.been.calledWith(language.DRAW_QUESTION_CARDS)

  it 'Should respond to answer card', ->
    expect(@robot.respond).to.have.been.calledWith(language.ANSWER_CARDS)

  it 'Should return Answer Card regex values', ->
    expect("a card").to.match(language.ANSWER_CARDS)
    expect("answer card").to.match(language.ANSWER_CARDS)
    expect((language.ANSWER_CARDS.exec "1 a card")[1]).to.be.equal('1')
    expect((language.ANSWER_CARDS.exec "2 a card")[1]).to.be.equal('2')

  it 'Should respond to draw answer card', ->
    expect(@robot.respond).to.have.been.calledWith(language.DRAW_ANSWER_CARDS)

  it 'Should respond to reset deck', ->
    expect(@robot.respond).to.have.been.calledWith(language.RESET_CARDS)

  it 'Should respond to shuffle deck', ->
    expect(@robot.respond).to.have.been.calledWith(language.SHUFFLE_CARDS)

  it 'Should not registers a hear listener', ->
    expect(@robot.hear).to.not.have.been.calledWith(/orly/)

  it 'Should', ->


describe 'Jobot-Cah Model testing', ->
  it 'Should have empty deck', ->
    expect(model.DECK.ANSWERS).to.have.length(0)
    expect(model.DECK.QUESTIONS).to.have.length(0)
  it 'Reset should populate ', ->
    model.reset('ANSWERS')
    model.reset('QUESTIONS')
    expect(model.DECK.ANSWERS).to.have.length.above(0)
    expect(model.DECK.QUESTIONS).to.have.length.above(0)
