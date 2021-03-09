"use strict";
module.exports = (sequelize, DataTypes) => {
    const Mytripsubdetail = sequelize.define("Mytripsubdetail", {
        idx: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            unique: true,
            allowNull: false,
        },
        tripidx: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
        areaname: {
            type: DataTypes.STRING(50),
            allowNull: false,
        },
        starttime: {
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

    return Mytripsubdetail;
};
