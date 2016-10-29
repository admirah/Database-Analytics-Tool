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
    },
    {
      freezeTableName: true 
    }
    )
    ;
  return mjesto;
};
