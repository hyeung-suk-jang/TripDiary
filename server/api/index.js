const express = require("express");
const router = express.Router();

router.use("/user", require("./user"));
router.use("/trip", require("./trip"));

module.exports = router;

/*
1. 유저 로그인
2. 구매코드 입력(비회원)
3. 비밀번호 찾기
4. 전화걸기 : rn에서 직접.
import {Linking} from 'react-native'
Linking.openURL(`tel:${phoneNumber}`)
5. 이메일보내기 : 서버경유해서.
6. mytriplist, paging.
7. 상세투어보기
8. 

- 로그인 api
table : user(id, pw)
input : 사용자 로그인 타입, 아이디, 비번
output : true/false

- 구매코드입력(5자리) api
table : purchasecode(codenumber)
output : true/false

- 전화문의 : 0507-1484-7177
- 이메일상담 : info@tripsoda.com

- 나의 투어일정 리스트 api
지역이름->투어타이틀, 대표투어이미지, 출발시점, 기간(소요시간), 대표이미지
구매코드테이블 join 구매관리 join 구매관광지 join 관광지 join 관광지사진
sorting(투어날짜순으로 정렬), 하단에 지난 투어일정 나오기.
- 상세투어일정 api
전체 투어일정 리스트(대표투어코드 정보)

- 상세관광지정보 api
주소(지도:위도경도), 전화번호, 오디오 가이드듣기, 스크롤 뷰

- 오디오 가이드상세듣기 api

- 메세지리스트, 검색 api

- 설정 api

*/