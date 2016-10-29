/**
 * Created by Admira on 29.10.2016..
 */
module.exports = function (sequelize, DataTypes) {
  var mjesto = sequelize.define('mjesto', {
      
      naziv: {
        type: DataTypes.STRING,
        allowNull: false
      },
      opcina_van_bih: {
        type: DataTypes.STRING,
        allowNull: false
      }
    }, //createdAt koji sequelize automatski kreira cemo koristiti kao timestamp
    {
      freezeTableName: true // Model tableName will be the same as the model name
    }
    )
    ;
  return mjesto;
};
