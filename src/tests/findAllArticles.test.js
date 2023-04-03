const request = require('supertest')

describe('FilterArticlesByCategory', () => {
  test('Should return articles sorted by date', async () => {
    const response = await request('http://localhost:3000')
      .get('/findAllArticles')

    expect(response.status).toBe(200)
    expect(response.body).toBeInstanceOf(Array)

    const date1 = new Date(response.body[0].date)
    const date2 = new Date(response.body[1].date)
    expect(date1.getTime()).toBeLessThan(date2.getTime())
  })
})