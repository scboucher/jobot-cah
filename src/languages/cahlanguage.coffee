class CahLanguage
  @QUESTION_CARDS = /(?:q|question) card$/i
  @ANSWER_CARDS =  /([1-2])?\W+?(?:a|answer) card$/i

module.exports = CahLanguage
