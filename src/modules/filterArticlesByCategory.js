const connection = require('../models')

class FilterArticlesByCategory {
    static async filterArticlesByCategory(req, res) {
        try {
            const dbConnection = await connection()
            const articles = await dbConnection.model('article').findAll()

            // Agrupa os artigos por categoria usando o método reduce
            const articlesByCategory = articles.reduce((acc, article) => {
                const category = article.category
                if (!acc[category]) {
                    acc[category] = []
                }
                acc[category].push(article)
                return acc
            }, {})

            // Retorna os artigos agrupados por categoria
            return res.status(200).json(articlesByCategory)
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }
}

module.exports = FilterArticlesByCategory
