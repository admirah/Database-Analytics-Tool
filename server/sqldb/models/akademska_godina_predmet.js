module.exports = function (sequelize, DataTypes) {
  var akademska_godina_predmet = sequelize.define('akademska_godina_predmet', {
      akademska_godina: {
        type: DataTypes.INTEGER,
        primaryKey:true,
        allowNull: false
      },

      predmet: {
        type: DataTypes.INTEGER,
        primaryKey:true,
        allowNull: false
      }
    }, //createdAt koji sequelize automatski kreira cemo koristiti kao timestamp
    {
      freezeTableName: true // Model tableName will be the same as the model name
    }
    )
    ;
  return akademska_godina_predmet;
};
