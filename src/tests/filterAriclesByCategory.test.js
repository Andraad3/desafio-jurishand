const request = require('supertest')

describe('FilterArticlesByCategory', () => {
  test('Must return an object', async () => {
    const response = await request('http://localhost:3000')
      .get('/filterArticlesByCategory')

    expect(response.status).toBe(200)
    expect(response.body).toBeInstanceOf(Object)
  })
})