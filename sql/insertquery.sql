INSERT INTO mytrips(useridx, areaname, startdate, filename)
VALUES(1,'도시1','2021-01-20 10:00:00','/images/mountain.jpg')


INSERT INTO mytrips(useridx, areaname, startdate, filename)
VALUES(1,'도시2','2021-01-22 10:00:00','/images/cross.jpg')



INSERT INTO mytrips(useridx, areaname, startdate, filename)
VALUES(1,'도시3','2021-01-22 10:00:00','/images/road.jpg')


INSERT INTO mytrips(useridx, areaname, startdate, filename)
VALUES(1,'도시4','2021-01-24 10:00:00','/images/rome.jpg')


INSERT INTO mytrips(useridx, areaname, startdate, filename)
VALUES(1,'도시5','2021-01-28 10:00:00','/images/tower.jpg')

SELECT * FROM mytripsdetails

INSERT INTO mytripsdetails(tripidx, areaname, starttime, filename,regdate,moddate)
VALUES(1,'관광지1','2021-01-28 10:00:00','/images/1.jpg',NOW(),NOW())

INSERT INTO mytripsdetails(tripidx, areaname, starttime, filename,regdate,moddate)
VALUES(1,'관광지2','2021-01-28 10:00:00','/images/2.jpg',NOW(),NOW())

INSERT INTO mytripsdetails(tripidx, areaname, starttime, filename,regdate,moddate)
VALUES(1,'관광지3','2021-01-28 10:00:00','/images/3.jpg',NOW(),NOW())

INSERT INTO mytripsdetails(tripidx, areaname, starttime, filename,regdate,moddate)
VALUES(1,'관광지4','2021-01-28 10:00:00','/images/4.jpg',NOW(),NOW())

INSERT INTO mytripsdetails(tripidx, areaname, starttime, filename,regdate,moddate)
VALUES(1,'관광지5','2021-01-28 10:00:00','/images/5.jpg',NOW(),NOW())

INSERT INTO mytripsdetails(tripidx, areaname, starttime, filename,regdate,moddate)
VALUES(1,'관광지6','2021-01-28 10:00:00','/images/6.jpg',NOW(),NOW())

INSERT INTO mytripsdetails(tripidx, areaname, starttime, filename,regdate,moddate)
VALUES(1,'관광지7','2021-01-28 10:00:00','/images/7.jpg',NOW(),NOW())

INSERT INTO mytripsdetails(tripidx, areaname, starttime, filename,regdate,moddate)
VALUES(1,'관광지8','2021-01-28 10:00:00','/images/8.jpg',NOW(),NOW())



SELECT count(`Mytrip`.`idx`) AS `count` FROM `Mytrips` AS `Mytrip` INNER JOIN `Mytripsdetails` AS `Mytripsdetail` ON `Mytrip`.`idx` = `Mytripsdetail`.`tripidx` WHERE `Mytrip`.`idx` = 1;

 SELECT `Mytrip`.`idx`, `Mytrip`.`useridx`, `Mytrip`.`areaname`, `Mytrip`.`startdate`, `Mytrip`.`filename`, `Mytrip`.`regdate` AS `createdAt`, `Mytrip`.`moddate` AS `updatedAt`, `Mytripsdetail`.`idx` AS `Mytripsdetail.idx`, `Mytripsdetail`.`tripidx` AS `Mytripsdetail.tripidx`, `Mytripsdetail`.`areaname` AS `Mytripsdetail.areaname`, `Mytripsdetail`.`starttime` AS `Mytripsdetail.starttime`, `Mytripsdetail`.`filename` AS `Mytripsdetail.filename`, `Mytripsdetail`.`regdate` AS `Mytripsdetail.createdAt`, `Mytripsdetail`.`moddate` AS `Mytripsdetail.updatedAt` FROM `Mytrips` AS `Mytrip` INNER JOIN `Mytripsdetails` AS `Mytripsdetail` ON `Mytrip`.`idx` = `Mytripsdetail`.`tripidx` WHERE `Mytrip`.`idx` = 1 ;