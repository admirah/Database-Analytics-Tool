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
    }, //createdAt koji sequelize automatski kreira cemo koristiti kao timestamp
    {
      freezeTableName: true // Model tableName will be the same as the model name
    }
    )
    ;
  return nastavnik_predmet;
};
