const connection = require('../models')

class InsertArticle {
    static async insertArticle(req, res) {
        try {
            const dbConnection = await connection()
            const data = req.body
            console.log("🚀 ~ file: insertArticle.js:8 ~ InsertArticle ~ insertArticle ~ data:", data)
            const articles = await dbConnection.model('article').create({
                title: data.title,
                author: data.author,
                content: data.content,
                date: data.date,
                category: data.category
            })
            return res.status(200).json(articles)
        } catch (error) {
            console.log("🚀 ~ file: insertArticle.js:17 ~ InsertArticle ~ insertArticle ~ error:", error)
            return res.status(500).json(error.message)
        }
    }
}

module.exports = InsertArticle