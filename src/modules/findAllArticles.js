const connection = require('../models')

class FindAllArticles {
    static async findAllArticles(req, res) {
        try {
            const dbConnection = await connection()
            const articles = await dbConnection.model('article').findAll({
                order: [['date', 'ASC']]
            })
            return res.status(200).json(articles)
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }
}

module.exports = FindAllArticles