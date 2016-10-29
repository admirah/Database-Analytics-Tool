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
    },
    {
      freezeTableName: true 
    }
    )
    ;
  return akademska_godina;
};
