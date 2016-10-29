module.exports = function (sequelize, DataTypes) {
  var akademska_godina = sequelize.define('akademska_godina', {
      naziv: {
        type: DataTypes.STRING,
        allowNull: false
      },
      aktuelna: {
        type: DataTypes.BOOLEAN,
        allowNull: false
      }
    }, //createdAt koji sequelize automatski kreira cemo koristiti kao timestamp
    {
      freezeTableName: true // Model tableName will be the same as the model name
    }
    )
    ;
  return akademska_godina;
};
