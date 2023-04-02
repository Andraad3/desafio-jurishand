const connection = require('../models')

class FindArticlesByKeyword {
    static async findArticlesByKeyword(req, res) {
        try {
            const dbConnection = await connection()
            const articles = await dbConnection.model('article').findAll({
                where: {
                    [dbConnection.Sequelize.Op.or]: [
                        { title: { [dbConnection.Sequelize.Op.like]: `%${req.params.keyword}%` } },
                        { content: { [dbConnection.Sequelize.Op.like]: `%${req.params.keyword}%` } }
                    ]
                }
            })
            return res.status(200).json(articles)
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }
}

module.exports = FindArticlesByKeyword