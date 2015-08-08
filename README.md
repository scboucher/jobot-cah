#  [![NPM version][npm-image]][npm-url] [![Build Status][travis-image]][travis-url] [![Dependency Status][daviddm-image]][daviddm-url]

# hubot-jobot-cah

Use hubot as a [Card Against Humanity](http://www.cardsagainsthumanity.com) deck
See [`src/jobot-cah.coffee`](src/jobot-cah.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-jobot-cah --save`

Then add **jobot-cah** to your `external-scripts.json`:

```json
[
  "jobot-cah"
]
```

## Sample Interaction

```
user1>> hubot q card
hubot>> Some terrible question?
```
[npm-image]: https://badge.fury.io/js/jobot-cah.svg
[npm-url]: https://npmjs.org/package/jobot-cah
[travis-image]: https://travis-ci.org/scboucher/jobot-cah.svg?branch=master
[travis-url]: https://travis-ci.org/scboucher/jobot-cah
[daviddm-image]: https://david-dm.org/scboucher/jobot-cah.svg?theme=shields.io
[daviddm-url]: https://david-dm.org/scboucher/jobot-cah
