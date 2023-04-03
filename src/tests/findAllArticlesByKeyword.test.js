const request = require('supertest')

describe('FindArticlesByKeyword', () => {
  test('It must return the articles that contain the keyword informed in the content', async () => {
    const response = await request('http://localhost:3000')
      .get('/findArticlesByKeyword/lei')

    expect(response.status).toBe(200)
    expect(response.body).toBeInstanceOf(Array)
    expect(response.body[0].content).toMatch(/lei/i)
  })

  test('It should return the articles that contain the keyword informed in the title', async () => {
    const response = await request('http://localhost:3000')
      .get('/findArticlesByKeyword/lei')

    expect(response.status).toBe(200)
    expect(response.body).toBeInstanceOf(Array)
    expect(response.body[0].title).toMatch(/lei/i)
  })

  test("Should return an array if it doesn't find any articles", async () => {
    const response = await request('http://localhost:3000')
      .get('/findArticlesByKeyword/oioioi')

    expect(response.status).toBe(200)
    expect(response.body).toBeInstanceOf(Array)
  })
})