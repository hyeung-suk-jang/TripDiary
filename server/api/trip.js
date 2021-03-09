const express = require("express");
const router = express.Router();
const { User, Mytrip,Mytripsdetail } = require("../models");
const {
    getTypePath,
    getDatePath,
    makeWhereConditionByEqual,
} = require("../utils/pathFunc");
const paginate = require("express-paginate");

const mytriplist = async (req, res) => {
    console.log('trip rest  api :'+req)
    try {
        const { page, limit, ...rest } = req.body;
        
        const where = makeWhereConditionByEqual(rest);
        console.log(where)
        const results = await User.findAndCountAll({
            include: [
                { model: Mytrip, as: 'mytrip' , required: true}
            ],                        
            limit,
            offset: req.offset,
            where: { idx:  req.body.useridx}
        });
        const pageCount = Math.ceil(results.count / limit);
        const pages = paginate.getArrayPages(req)(
            3, // 몇개의 페이지씩 볼건지
            pageCount,
            page
        );
        res.status(200).json({ pageCount, pages, data: results.rows });
    } catch (e) {
        console.log(e);
        res.status(500).json({ error: "Internal Server Error" });
    }
}

const mytripdetail = async (req, res) => {
    console.log('detail rest  api :'+req)
    try {
        const { page, limit, ...rest } = req.body;
        
        const where = makeWhereConditionByEqual(rest);

        const results = await Mytrip.findAndCountAll({
            include: [
                { model: Mytripsdetail, as: 'Mytripsdetail' , required: true}
            ],                        
            limit,
            offset: req.offset,
            where: { idx:  req.body.tripidx}
        });

        if (!mytripdetail) {
            res.status(200).json({}); // 응답은 성공 but 데이터는 없음
        }
        const pageCount = Math.ceil(results.count / limit);
        const pages = paginate.getArrayPages(req)(
            3, // 몇개의 페이지씩 볼건지
            pageCount,
            page
        );
        res.status(200).json({ pageCount, pages, data: results.rows });
    } catch (e) {
        console.log(e);
        res.status(500).json({ error: "Internal Server Error" });
    }
}


router.post("/list", mytriplist);
router.post("/detail", mytripdetail);

module.exports = router;

