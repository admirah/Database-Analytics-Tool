module.exports = function (sequelize, DataTypes) {
  var nastavnik_predmet = sequelize.define('nastavnik', {
      nastavnik: {
        type: DataTypes.INTEGER,
        primaryKey:true,
        allowNull: false
      },

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
  return nastavnik_predmet;
};
