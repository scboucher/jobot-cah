class CahLanguage
  @QUESTION_CARDS = /(?:q|question) card$/i
  @DRAW_QUESTION_CARDS = /draw (?:q|question) card$/i
  @ANSWER_CARDS =  /([1-2])?\W*(?:a|answer) card$/i
  @DRAW_ANSWER_CARDS =  /draw ([1-2])?\W*(?:a|answer) card$/i
  @SHUFFLE_CARDS = /shuffle (ANSWERS|QUESTIONS) cards$/i
  @RESET_CARDS = /reset (ANSWERS|QUESTIONS) cards$/i


module.exports = CahLanguage
