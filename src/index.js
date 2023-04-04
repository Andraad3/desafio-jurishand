const express = require('express')
const routes = require('./routes')
const swaggerUi = require('swagger-ui-express')
const swaggerFile = require('./swagger.json')

const app = express()

routes(app)

app.use('/docs', swaggerUi.serve, swaggerUi.setup(swaggerFile))

app.listen(process.env.PORT || 3000, function(){
    console.log("Express server listening on port %d in %s mode", this.address().port, app.settings.env);
  });

module.exports = app