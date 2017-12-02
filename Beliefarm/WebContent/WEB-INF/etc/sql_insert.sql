use beliefarm;

-- User INSERT
INSERT INTO User VALUES(
					1,
					"juhyun903@naver.com",
					"juhyunpw",
					"01091196942",
					"이주현");
					
INSERT INTO User VALUES(
					2,
					"jungwoo@naver.com",
					"jungwoopw",
					"01012341234	",
					"박정우");

INSERT INTO User VALUES(
					3,
					"sora@naver.com",
					"sorapw",
					"01012341234	",
					"이소라");

INSERT INTO User VALUES(
					4,
					"chulsoo@naver.com",
					"chulsoopw",
					"01012341234	",
					"김철수");

INSERT INTO User VALUES(
					5,
					"gooma@naver.com",
					"goomapw",
					"01012341234	",
					"이구마");
				

-- Farmer INSERT
INSERT INTO farmer VALUES(
					1,
					"정우농장",
					"정우의 농장입니당",
					"경기도 수원시 권선구",
					"과일",
					2); -- userId
INSERT INTO farmer VALUES(
					2,
					"소라농장",
					"소라의 농장입니당",
					"경기도 남양주시",
					"채소",
					3); -- userId                    
INSERT INTO farmer VALUES(
					3,
					"구마농장",
					"구마의 농장입니당",
					"강원도 원주시",
					"구황작물",
					5); -- userId

-- Project INSERT 
INSERT INTO Project VALUES
					(1, 						-- id
					"[2차 펀딩] 자연재배, 땅에서 자란 딸기",	-- title
					"/Beliefarm/resources/assets/img/project_image/imagename1.png", 			-- image
					"자연의 것은 썩지 않는다. 다만 시들어갈 뿐! 이곳의 딸기는 자연의 속도로 천천히 자랍니다. 크기는 제각각이지만 조직이 치밀하고 식감이 뛰어납니다. 이렇게 키운 이곳의 딸기는 단단한 생명력을 가지고 있습니다. 자연 상태에서 썩지않고 자연스럽게 시드는 이 딸기를 보고 사람들은 일본의 '기적의 사과'와같은 '기적의 딸기'라고 부릅니다. 이 건강한 딸기를 여러분들께 전해드리고 싶습니다.",		-- simple Info 
					"2017-11-01 09:00:00",	-- startDate
					"2017-12-10 10:00:00",	-- endDate
					0,						-- rest
					1000000,					-- goal
					"국민은행",				-- bank
					"991196942",				-- account
					"박정우",				-- account holder
					"스토리담을곳~일단 임시값",					-- story
					"N",						-- project statement 
					1,						-- farmerID, 정우농부
					"QR코드",				-- QR
					23.5,					-- fine temperature
					30,						-- fine humid
					2						-- fine PH
					);

INSERT INTO Project VALUES
					(2,
					"식탁위에 찾아온 땅으로부터 온 채소",
					"/Beliefarm/resources/assets/img/project_image/imagename2.png",
					"채소 상세설명",
					"2017-11-15 09:00:00",
					"2017-11-30 10:00:00",
					0,
					1000000,
					"하나은행",
					"991196942",					
					"이소라",
					"스토리담을곳~일단 임시값",
					"N",
					2, -- 소라농부
					"QR코드",
					13.5,
					20,
                    3
					);
					
INSERT INTO Project VALUES
					(3,
					"[알뜰상품] 내공의 힘, 아삭달콤 부유단감",
					"/Beliefarm/resources/assets/img/project_image/imagename3.png",
					"단감 상세설명",
					"2017-11-20 09:00:00",
					"2017-12-30 10:00:00",
					0,
					1200000,
					"SC제일은행",
					"991196942",					
					"김구마",
					"스토리담을곳~ 일단 임시값",
					"N",
					3, -- 구마 농부 
					"QR코드",
					23.5,
					30,
                    2
					);
					
INSERT INTO Project VALUES
					(4,
					"한국에서도 레몬이? 신선한 제주레몬",
					"/Beliefarm/resources/assets/img/project_image/imagename4.png",
					"상세설명",
					"2017-10-28 09:00:00",
					"2017-12-18 10:00:00",
					0,
					1000000,
					"국민은행",
					"991196942",					
					"이소라",
					"스토리담을곳~ 일단 임시값",
					"N",
					2, -- 소라농부
					"QRcode",
					30,
					10,
                    2
					);
                    
INSERT INTO Project VALUES
					(5,
					"그리움 한 그릇, 겨울 시래기",
					"/Beliefarm/resources/assets/img/project_image/imagename5.png",
					"Delicious~~~ddds",
					"2017-10-20 09:00:00",
					"2017-11-30 10:00:00",
					0,
					1000000,
					"KBbank",
					"991196942",					
					"Jungwoo",
					"story",
					"N",
					1, -- 정우 농부 
					"QRcode",
					23.5,
					30,
					2
					);
                    
INSERT INTO Project VALUES
					(6,
					"뜯어서 구우면 끝. 고등어와 은갈치",
					"/Beliefarm/resources/assets/img/project_image/imagename6.png",
					"Delicious dddd",
					"2017-11-01 09:00:00",
					"2017-12-28 10:00:00",
					0,
					1000000,
					"농협은행",
					"991196942",					
					"이소라",
					"story",
					"N",
					2, -- 소라농부 
					"QRcode",
					23.5,
					30,
                    0
					);
INSERT INTO Project VALUES
					(7,
					"친환경 김치회사가 만든, 유기농 절임배추 10kg",
					"/Beliefarm/resources/assets/img/project_image/imagename7.png",
					"Deliciose Jelly",
					"2017-11-25 09:00:00",
					"2017-12-28 10:00:00",
					0,
					1000000,
					"하나은행",
					"991196942",					
					"박정우",
					"story",
					"N",
					1, -- 정우 농부 
					"QRcode",
					23.5,
					30,
                    2
					);
                    
INSERT INTO Project VALUES
					(8,
					"겨울 간식 홍시. 이제, 입맛에 맞게 익혀드세요!",
					"/Beliefarm/resources/assets/img/project_image/imagename8.png",
					"Deliciose Jelly",
					"2017-10-15 09:00:00",
					"2017-11-20 10:00:00",
					0,
					1000000,
					"KBbank",
					"991196942",					
					"Jungwoo",
					"story",
					"N",
					3, -- 구마 농부
					"QRcode",
					23.5,
					30,
                    0
					);
                    
INSERT INTO Project VALUES
					(9,
					"당신의 호두는 안녕하십니까? 국내산 무농약 호두",
					"/Beliefarm/resources/assets/img/project_image/imagename9.png",
					"Deliciose Jelly",
					"2017-11-20 09:00:00",
					"2017-12-20 10:00:00",
					0,
					1000000,
					"KBbank",
					"991196942",					
					"Jungwoo",
					"story",
					"N",
					1,
					"QRcode",
					23.5,
					30,
                    2
					);
                    
INSERT INTO Project VALUES
					(10,
					"껍질까지 안심하고 먹는, 네가지 품종 고구마",
					"/Beliefarm/resources/assets/img/project_image/imagename10.png",
					"Deliciose Jelly",
					"2017-11-01 09:00:00",
					"2017-12-30 10:00:00",
					0,
					1000000,
					"KBbank",
					"991196942",					
					"Jungwoo",
					"story",
					"N",
					2,
					"QRcode",
					23.5,
					30,
                    1
					);
                    
INSERT INTO Project VALUES
					(11,
					"오고생이왓의 초록귤",
					"/Beliefarm/resources/assets/img/project_image/imagename11.png",
					"Deliciose Jelly",
					"2017-10-30 09:00:00",
					"2017-11-30 10:00:00",
					0,
					1000000,
					"KBbank",
					"991196942",					
					"Jungwoo",
					"story",
					"N",
					3,
					"QRcode",
					23.5,
					30,
                    2
					);
                    
INSERT INTO Project VALUES
					(12,
					"청매실에 투자하시면 나무에서 잘익은 황매실로 돌려드립니다.",
					"/Beliefarm/resources/assets/img/project_image/imagename12.png",
					"Deliciose Jelly",
					"2017-10-15 09:00:00",
					"2017-12-01 10:00:00",
					0,
					1000000,
					"KBbank",
					"991196942",					
					"Jungwoo",
					"story",
					"N",
					2,
					"QRcode",
					23.5,
					30,
                    3
					);


-- Diary INSERT 
INSERT INTO Diary VALUES
					(1, -- id 
					"2017-10-10 10:00:00", -- registdate
					"image", -- image route
					"contentsss",		-- content			
					1); -- project Id
					
INSERT INTO Diary VALUES
					(2,
					"2017-10-15 10:00:00",
					"image2",
					"contentsss2",					
					1);					

-- Reward INSERT
INSERT INTO REWARD VALUES 
					(1,
                    "자연재배 딸기(육보) 1kg x 1box", -- name
                    24000, -- price
                    50, -- number 
                    "자연재배 딸기(육보) 1kg x 1box \n
                    26,000원 ---> 24,000원 (택배비 포함)", -- detail 
                    "11/30일 부터 매주 화, 목 발송됩니다. 날씨에 따라 발송일이 조정될 수 있습니다.", -- deliveryDate 
                    "N", -- reward state
                    1); -- projectID 딸기 리워드 
INSERT INTO REWARD VALUES 
					(2,
                    "자연재배 딸기(육보) 1kg x 2box",
                    44000,
                    60,
                    "자연재배 딸기(육보) 1kg x 2box \n
					48,000원 ---> 44,000원 (택배비 포함)",
                    "11/30일 부터 매주 화, 목 발송됩니다. 날씨에 따라 발송일이 조정될 수 있습니다. ", 
                    "N",
                    1);  -- 딸기 리워드 
INSERT INTO REWARD VALUES 
					(3, 
                    "무첨가 자연재배 딸기잼 500g",
                    20000,
                    70,
                    "기적의 딸기잼 500g \n
                    딸기 60% + 유기농 설탕 Native 40% \n
					16,000원 + 택배비 4,000원 ",
                    "onSaturday",
                    "N",
                    1); -- 딸기 리워드 
INSERT INTO REWARD VALUES 
					(4, 
                    "snacks",
                    3000,
                    100,
                    "delicioussnacks",
                    "onSaturday",
                    "N",
                    2); -- 쌈채소 리워드 
INSERT INTO REWARD VALUES 
					(5, 
                    "snacks",
                    3000,
                    100,
                    "delicioussnacks",
                    "onSaturday",
                    "N",
                    2); -- 쌈채소 리워드 

-- SupportProject INSERT 
INSERT INTO SUPPORTPROJECT VALUES 
					(1, -- id
                    2,  -- quantity
                    "경기도 수원시 팔달구 팔달문로 84",  -- address
                    1 ,  -- userID : 정우회원
                    1);  -- rewardId : 딸기 
INSERT INTO SUPPORTPROJECT VALUES 
					(2, 
                    1, 
                    "평촌", 
                    2,  -- 소라
                    1); 
INSERT INTO SUPPORTPROJECT VALUES 
					(3, 
                    1, 
                    "우만동", 
                    3,  -- 구마 
                    2);
INSERT INTO SUPPORTPROJECT VALUES 
					(4, 
                    1, 
                    "우만동", 
                    1, 
                    4);
                    
UPDATE project
SET startDate = "2017-11-01 10:00:00",
	endDate = "2017-12-15 10:00:00"
WHERE id = 1;

INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-1 00:00:00",
               20, -- avgTmp
               30,   -- avgHumid               
               5.5,   -- avgPH
               50,   -- avgWater
               1 ); 
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-2 00:00:00",
               21.3, -- avgTmp
               28,   -- avgHumid               
               6.2,   -- avgPH
               60,   -- avgWater
               1 ); 
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-3 00:00:00",
               23, -- avgTmp
               30,   -- avgHumid               
               5.5,   -- avgPH
               52,   -- avgWater
               1 ); 
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-4 00:00:00",
               20.7, -- avgTmp
               35.8,   -- avgHumid               
               8,   -- avgPH
               50,   -- avgWater
               1 ); 
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-5 00:00:00",
               26, -- avgTmp
               27,   -- avgHumid               
               5.1,   -- avgPH
               45,   -- avgWater
               1 ); 
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-6 00:00:00",
               23, -- avgTmp
               45,   -- avgHumid               
               6,   -- avgPH
               52,   -- avgWater
               1 );
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-7 00:00:00",
               25, -- avgTmp
               35,   -- avgHumid               
               6.4,   -- avgPH
               50,   -- avgWater
               1 );
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-8 00:00:00",
               18, -- avgTmp
               55,   -- avgHumid               
               3.7,   -- avgPH
               30,   -- avgWater
               1 ); 
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-9 00:00:00",
               19.6, -- avgTmp
               30.7,   -- avgHumid               
               4.3,   -- avgPH
               52,   -- avgWater
               1 );
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-10 00:00:00",
               35, -- avgTmp
               40,   -- avgHumid               
               6.2,   -- avgPH
               60,   -- avgWater
               1 ); 
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-11 00:00:00",
               17, -- avgTmp
               38,   -- avgHumid               
               6.2,   -- avgPH
               56,   -- avgWater
               1 ); 
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-12 00:00:00",
               25, -- avgTmp
               37,   -- avgHumid               
               6.5,   -- avgPH
               65,   -- avgWater
               1 ); 
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-13 00:00:00",
               25, -- avgTmp
               32,   -- avgHumid               
               5.6,   -- avgPH
               45,   -- avgWater
               1 ); 
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-14 00:00:00",
               23, -- avgTmp
               32,   -- avgHumid               
               5.6,   -- avgPH
               50,   -- avgWater
               1 ); 
                    INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-15 00:00:00",
               20, -- avgTmp
               30,   -- avgHumid               
               5.5,   -- avgPH
               55,   -- avgWater
               1 ); 
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-16 00:00:00",
               22.7,
               31.3,               
               5.7,   
               50,
               1 ); 
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-17 00:00:00",
               23.2,
               31.3,               
               5.6,   
               51,
               1 );
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-17 00:00:00",
               22.9,
               31.5,               
               5.4,   
               51,
               1 );			   
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-18 00:00:00",
               22.7,
               31.3,               
               5.5,   
               52,
               1 ); 
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-19 00:00:00",
               23.2,
               31.3,               
               5.6,   
               52,
               1 );
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-20 00:00:00",
               22.9,
               31.5,               
               5.4,   
               51,
               1 );		
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-21 00:00:00",
               22.7,
               31.3,               
               5.7,   
               50,
               1 ); 
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-22 00:00:00",
               23.2,
               31.3,               
               5.6,   
               51,
               1 );
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-23 00:00:00",
               22.9,
               31.5,               
               5.4,   
               51,
               1 );			   
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-24 00:00:00",
               22.7,
               31.3,               
               5.5,   
               52,
               1 ); 
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-25 00:00:00",
               23.2,
               31.3,               
               5.6,   
               52,
               1 );
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-26 00:00:00",
               22.9,
               31.5,               
               5.4,   
               51,
               1 );			   			   
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-27 00:00:00",
               23.1,
               31.5,               
               5.4,   
               51,
               1 );	
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-28 00:00:00",
               25.1,
               31.5,               
               5.4,   
               51,
               1 );
INSERT INTO DAYVALUE values
               (0,
               null,
               "2017-11-29 00:00:00",
               40.1,
               50.5,               
               8,   
               10,
               1 );
UPDATE dayValue 
SET avgTemp = 30,
	avgHumid = 30,
	avgPh = 7.3,
	avgWater = 20.2
where id = 30;
               
use beliefarm;
show tables;
select * from dayValue;

-- Diary
DROP TABLE Diary;






























-- Review
DROP TABLE Review;

-- Comment
DROP TABLE Comment;

-- SupportProject
DROP TABLE SupportProject;


-- Reward
DROP TABLE Reward;


-- DayValue
DROP TABLE DAYVALUE;


-- Project
DROP TABLE Project;

-- Farmer
DROP TABLE Farmer;

-- User
DROP TABLE User;



