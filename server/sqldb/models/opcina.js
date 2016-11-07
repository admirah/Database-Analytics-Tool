module.exports = function (sequelize, DataTypes) {
  var opcina = sequelize.define('opcina', {
          naziv: {
        type: DataTypes.STRING,
        allowNull: false
      }
    }, 
    {
      freezeTableName: true
    }
    )
    ;
  return opcina;
};
