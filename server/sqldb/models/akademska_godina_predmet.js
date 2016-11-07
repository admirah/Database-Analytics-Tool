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
    },
    {
      freezeTableName: true 
    }
    )
    ;
  return akademska_godina_predmet;
};
