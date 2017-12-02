use beliefarm;

-- User
CREATE TABLE USER (
	id       INTEGER     auto_increment primary key, -- id
	email    VARCHAR(20) NULL,     -- email
	password VARCHAR(20) NULL,     -- password
	phone    VARCHAR(20) NULL,     -- phone
	name     VARCHAR(10) NULL      -- name
);
CREATE UNIQUE INDEX unique_email ON USER (email);

-- Farmer
CREATE TABLE Farmer (
	id          INTEGER      auto_increment primary key, -- id
	farmName    VARCHAR(20)  NULL,     -- farmName
	introduce   VARCHAR(100) NULL,     -- introduce
	farmAddress VARCHAR(50)  NULL,     -- farmAddress
	crop        VARCHAR(30)  NULL,     -- crop
	userId      INTEGER      NULL,     -- userId
	foreign key (userId) references User (id)
);
 
-- Project
CREATE TABLE Project (
	id           INTEGER       auto_increment primary key, -- id
	title        VARCHAR(50)   NULL,     -- title
	image        VARCHAR(200)  NULL,     -- image
	simpleInfo   VARCHAR(1000)  NULL,     -- simpleInfo
	startDate    TIMESTAMP     NULL,     -- startDate
	endDate      TIMESTAMP     NULL,     -- endDate
	rest         INTEGER       NULL,     -- rest
	goal         INTEGER       NULL,     -- goal
	bank         VARCHAR(20)   NULL,     -- bank
	account      VARCHAR(10)   NULL,     -- account
	acntHolder   VARCHAR(20)   NULL,     -- acntHolder
	story        VARCHAR(1000) NULL,     -- story
	prjStatement CHARACTER     NULL,     -- prjStatement
	farmerId     INTEGER       NULL,     -- farmerId
	QR			 VARCHAR(100)  NULL, 	-- QR
	fineTemp		 DOUBLE		   NULL,		-- fineTemp
	fineHumid	 DOUBLE		   NULL, 	-- fineHumid
	finePH		 INTEGER		   NULL,		-- finePH
	foreign key (farmerId) references Farmer (id)
);

-- Reward
CREATE TABLE Reward (
	id           INTEGER      auto_increment primary key, -- id
	name         VARCHAR(50)  NULL,     -- name
	price        INTEGER      NULL,     -- price
	number       INTEGER      NULL,     -- number
	detail       VARCHAR(500) NULL,     -- detail
	deliveryDate VARCHAR(200) NULL,     -- deliveryDate
	rwdStatement CHARACTER    NULL,     -- rwdStatement
	prjId        INTEGER      NULL,     -- prjId
	foreign key (prjId) references Project (id)
);



-- SupportProject
CREATE TABLE SupportProject (
	id       INTEGER     auto_increment primary key, -- id
	quantity INTEGER     NULL,     -- quantity
	address  VARCHAR(50) NULL,     -- address
	userId   INTEGER     NULL,     -- userId
	rewardId INTEGER     NULL,     -- rewardId
	foreign key (rewardId) references Reward (id)
);

-- Comment
CREATE TABLE Comment (
	id         INTEGER      auto_increment primary key, -- id
	contents   VARCHAR(200) NULL,     -- contents
	registDate TIMESTAMP    NULL,     -- registDate
	parentId   INTEGER      NULL,     -- parentId
	userId     INTEGER      NULL,     -- userId
	prjId      INTEGER      NULL,     -- prjId
	foreign key (prjId) references Project (id)
);

-- Review
CREATE TABLE Review (
	id         INTEGER      auto_increment primary key, -- id
	contents   VARCHAR(200) NULL,     -- contents
	registDate TIMESTAMP    NULL,     -- registDate
	prjId      INTEGER      NULL,     -- prjId
	userId     INTEGER      NULL,     -- userId
	foreign key (userId) references User (id)
);

-- Diary
CREATE TABLE Diary (
	id         INTEGER      auto_increment primary key, -- id
	registDate TIMESTAMP    NULL,     -- registDate
	image      VARCHAR(200) NULL,     -- image
	contents   VARCHAR(200) NULL,     -- contents
	prjId      INTEGER      NULL,     -- prjId
	foreign key (prjId) references Project (id)
);

CREATE TABLE DayValue(
	id			INTEGER	auto_increment primary key,
    estmCount	INTEGER,
    registDate	DATE		NULL,
    avgTemp		DOUBLE	NULL,
    avgHumid		DOUBLE NULL,
    avgPH		DOUBLE		NULL,
    avgWater 	DOUBLE		NULL,
    prjId		INTEGER		NULL,
    foreign key (prjId)	references Project (id)
);


