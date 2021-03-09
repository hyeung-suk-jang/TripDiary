"use strict";
module.exports = (sequelize, DataTypes) => {
    const Mytrip = sequelize.define("Mytrip", {
        idx: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            unique: true,
            allowNull: false,
        },
        useridx: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        areaname: {
            type: DataTypes.STRING(50),
            allowNull: false,
        },
        startdate: {
            type: DataTypes.STRING(50),
            allowNull: false,
        },
        filename: {
            type: DataTypes.STRING(50),
            allowNull: false,
        },
        createdAt: {
            type: DataTypes.DATE,
            defaultValue: DataTypes.NOW,
            field: "regdate",
        },
        
        updatedAt: {
            type: DataTypes.DATE,
            name: "updatedAt",
            field: "moddate",
        },
    });
    Mytrip.associate = (models) => {
        Mytrip.hasMany(models.Mytripsdetail, {
            as: "Mytripsdetail",
            foreignKey: "tripidx",
            sourceKey: "idx",
        });
    }

    return Mytrip;
};
