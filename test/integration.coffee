request = require('supertest')
webserver = require('../lib/webserver')

describe 'requesting an avatar', ->
  it 'responds with an image', ->
    request(webserver)
      .get('/avatar/abbot')
      .expect('Content-Type', /image/)
      .end (error, response) ->
        throw error if error