module.exports = function (sequelize, DataTypes) {
  var osoba = sequelize.define('osoba', {
         ime: {
        type: DataTypes.STRING,
        allowNull: false
      },
      prezime: {
        type: DataTypes.STRING,
        allowNull: false
      }   ,
      spol: {
        type: DataTypes.ENUM('M','Z',''),
        allowNull: false
      },
      brindexa: {
        type: DataTypes.STRING,
        allowNull: false
      },
      datum_rodjenja: {
        type: DataTypes.DATE,
        allowNull: false
      },
      kanton: {
        type: DataTypes.INTEGER,
        allowNull: false
      }
    }, //createdAt koji sequelize automatski kreira cemo koristiti kao timestamp
    {
      freezeTableName: true // Model tableName will be the same as the model name
    }
    )
    ;
  return osoba;
};
