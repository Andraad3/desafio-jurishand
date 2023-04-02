const { Router } = require('express')
const FindAllArticles = require('../modules/findAllArticles')
const FindArticlesByKeyword = require('../modules/findArticleByKeyword')
const FilterArticlesByCategory = require('../modules/filterArticlesByCategory')
const InsertArticle = require('../modules/insertArticle')

const router = Router()

router.get('/findAllArticles', FindAllArticles.findAllArticles)
router.get('/filterArticlesByCategory', FilterArticlesByCategory.filterArticlesByCategory)
router.get('/findArticlesByKeyword/:keyword', FindArticlesByKeyword.findArticlesByKeyword)
router.post('/insertArticle', InsertArticle.insertArticle)

module.exports = router