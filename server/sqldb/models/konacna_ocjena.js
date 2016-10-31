module.exports = function(sequelize, DataTypes) {
    var konacna_ocjena = sequelize.define('konacna_ocjena', {
        student: {
            type: DataTypes.INTEGER,
            primaryKex: true,
            allowNull: false
        },

        predmet: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            allowNull: false
        },

        ocjena: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        datum: {
            type: DataTypes.DATE,
            allowNull: false
        }
    }, {
        freezeTableName: true
    });
    return konacna_ocjena;
};
