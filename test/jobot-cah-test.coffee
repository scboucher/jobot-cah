chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'
language = require '../src/languages/cahlanguage.coffee'
expect = chai.expect

describe 'Jobot Cards against humanity!', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/jobot-cah')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(language.QUESTION_CARDS)
    expect(@robot.respond).to.have.been.calledWith(language.ANSWER_CARDS)

  it ' Not done : registers a hear listener', ->
    expect(@robot.hear).to.not.have.been.calledWith(/orly/)

  it 'Question card regex', ->
    expect("q card").to.match(language.QUESTION_CARDS)
    expect("question card").to.match(language.QUESTION_CARDS)
  it 'Answer Card regex', ->
    expect("a card").to.match(language.ANSWER_CARDS)
    expect("answer card").to.match(language.ANSWER_CARDS)
#    expect((language.ANSWER_CARDS.exec "1 a card").match[1]).to.be.equal(1)
