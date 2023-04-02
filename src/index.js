const express = require('express')
const routes = require('./routes')

const app = express()

routes(app)

app.listen(process.env.PORT || 3000, function(){
    console.log("Express server listening on port %d in %s mode", this.address().port, app.settings.env);
  });

module.exports = app