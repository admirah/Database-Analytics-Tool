module.exports = function (sequelize, DataTypes) {
  var predmet = sequelize.define('predmet', {
    sifra: {
        type: DataTypes.STRING,
        allowNull: false
      },
      naziv: {
        type: DataTypes.STRING,
        allowNull: false
      }   ,
      kratki_naziv: {
        type: DataTypes.STRING,
        allowNull: false
      },
      ects: {
        type: DataTypes.FLOAT,
        allowNull: false
      }
    }, //createdAt koji sequelize automatski kreira cemo koristiti kao timestamp
    {
      freezeTableName: true // Model tableName will be the same as the model name
    }
    )
    ;
  return predmet;
};
