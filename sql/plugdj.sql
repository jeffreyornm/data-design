 -- Drop Table --

DROP TABLE IF EXISTS subscribe;
DROP TABLE IF EXISTS room;
DROP TABLE IF EXISTS profile;



 -- Create Table --

CREATE TABLE profile  (
  profileId BINARY(16) NOT NULL,
  profileActivationToken CHAR(32),
  profileAvatar VARCHAR(255) NOT NULL,
  profileEmail VARCHAR(128) NOT NULL,
  profileHash CHAR(97) NOT NULL,
  profileMusic VARCHAR(255) NOT NULL,
  profileUserName VARCHAR(32) NOT NULL,
  PRIMARY KEY (profileId)
);


CREATE TABLE room  (
  roomId BINARY(16) NOT NULL,
  roomProfileId BINARY(16) NOT NULL,
  index(roomProfileId),
  PRIMARY KEY (roomId),
  FOREIGN KEY (roomProfileId) REFERENCES profile(profileId)
);


CREATE TABLE subscribe  (
  subscribeProfileId BINARY(16) NOT NULL,
  subscribeRoomId BINARY(16) NOT NULL,
  subscribeAvatar VARCHAR(255) NOT NULL,
  index(subscribeProfileId),
  index(subscribeRoomId),
  FOREIGN KEY (subscribeProfileId) REFERENCES profile(profileId),
  FOREIGN KEY (subscribeRoomId) REFERENCES room(roomId)
);

 INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
 VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway');