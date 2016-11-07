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
    },
    {
      freezeTableName: true 
    }
    )
    ;
  return predmet;
};
