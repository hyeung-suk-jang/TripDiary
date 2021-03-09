const express = require("express");
const router = express.Router();
const { User, Purchasecode,Tour } = require("../models");
const jwt = require("jsonwebtoken");
const nodemailer = require('nodemailer');

async function emailfunc(useremail,msg){
    //유저정보 가져오기.
    let transporter = nodemailer.createTransport({
        // 사용하고자 하는 서비스, gmail계정으로 전송할 예정이기에 'gmail'
        service: 'gmail',
        // host를 gmail로 설정
        host: 'smtp.gmail.com',
        port: 587,
        secure: false,
        auth: {
          // Gmail 주소 입력, 'testmail@gmail.com'
          user: process.env.GMAIL_ID,
          // Gmail 패스워드 입력
          pass: process.env.GMAIL_PW,
        },
      });
      console.log('transporter:'+transporter)
      
      // send mail with defined transport object
    let info = await transporter.sendMail({
        from: `"Tripsoda" <${process.env.GMAIL_ID}>`,
        to: useremail,
        subject: '임시비밀번호',
        text: msg,
        html: `<b>${msg}</b>`,
    });

    console.log('Message sent: %s', info.messageId);
    return info
}

const saveDeviceToken = async(req,res) => {
    console.log('login rest  api :'+req)
    try {
        const { userid, devicetoken } = req.body;
        console.log('userid '+userid+", devicetoken : " + devicetoken)
        const user = await User.findOne({
            where: {
                id: userid
            },
        });
        
        if (!user) {
            res.status(400).json({
                error: "유저 정보가 없습니다..",
            });
            return;
        }else{
            //device token save

        }
        res.status(200).json({ resultCode:0, resultMsg:'success',resultData:user });
    } catch (e) {
        res.status(500).json({ error: "로그인 할 수 없습니다." });
    }
}

const login = async (req, res) => {
    console.log('login rest  api :'+req)
    try {
        const { userid, userpw } = req.body;
        console.log('userid '+userid+", userpw : " + userpw)
        const user = await User.findOne({
            where: {
                id: userid,
                pw:userpw
            },
        });

        
        if (!user) {
            res.status(400).json({
                error: "유저 정보가 없습니다..",
            });
            return;
        }

        res.status(200).json({ resultCode:0, resultMsg:'success',resultData:user });
    } catch (e) {
        res.status(500).json({ error: "로그인 할 수 없습니다." });
    }
}

const findpw = async(req,res) => {
    console.log('findpw rest api :'+req.body.userid)
    try{
        const {userid} = req.body
        const user = await User.findOne({
            where :{
                id : userid
            }
        })
        if(!user){
            res.status(400).json({
                error: "유저 정보가 없습니다..",
            });
            return;
        }
        
        const info = emailfunc(user.email)
        
        res.status(200).json({ resultCode:0, resultMsg:'success',resultData:info });
    }catch(e){
        res.status(500).json({ error: "서버 에러."+e.toString()  });
    }
}

const numberPass = async(req, res) => {
    console.log('numberPass rest api')
    try{
        const {usernum} = req.body
        const usercode = await Purchasecode.findOne({
            where :{
                codenumber : usernum
            }
        })
        if(!usercode){
            res.status(400).json({
                error: "구매코드 정보가 없습니다..",
            });
            return;
        }
        //트립정보 가져오기.
        const mytrip = await Tour.findOne({
            where :{
                idx : 1
            }
        })
        
        res.status(200).json({ resultCode:0, resultMsg:'success',resultData:mytrip });
    }catch(e){
        res.status(500).json({ error: "서버 에러." });
    }
}

const sendEmail = async (req, res) => {
    console.log('sendEmail rest  api :'+req)
    try {
        const { useremail,msg } = req.body;
        const info = emailfunc(useremail,msg)

        res.status(200).json({ resultCode:0, resultMsg:'success',resultData:info });
    } catch (e) {
        res.status(500).json({ error: "로그인 할 수 없습니다." });
    }
}

router.post("/login", login);
router.post("/findpw", findpw);
router.post("/numberPass", numberPass);
router.post("/sendEmail", sendEmail);
router.post("/saveDeviceToken", saveDeviceToken);



module.exports = router;

