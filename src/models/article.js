module.exports = function (sequelize, DataTypes) {
    var article = sequelize.define('article', {
        id: {
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true,
            autoIncrement: true
          },
          title: {
            type: DataTypes.STRING,
            allowNull: false
          },
          author: {
            type: DataTypes.STRING,
            allowNull: false
          },
          content: {
            type: DataTypes.TEXT,
            allowNull: false
          },
          date: {
            type: DataTypes.DATE,
            allowNull: false
          },
          category: {
            type: DataTypes.STRING,
            allowNull: false
          }
    }, {
        sequelize,
        modelName: 'article',
        freezeTableName: true,
        tableName: 'article',
        timestamps: false
    })

    return article
}