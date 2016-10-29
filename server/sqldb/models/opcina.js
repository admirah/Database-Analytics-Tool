module.exports = function (sequelize, DataTypes) {
  var opcina = sequelize.define('opcina', {
          naziv: {
        type: DataTypes.STRING,
        allowNull: false
      }
    }, //createdAt koji sequelize automatski kreira cemo koristiti kao timestamp
    {
      freezeTableName: true // Model tableName will be the same as the model name
    }
    )
    ;
  return opcina;
};
