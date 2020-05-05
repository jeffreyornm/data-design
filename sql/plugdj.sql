 -- Drop Table --

DROP TABLE IF EXISTS profile;
DROP TABLE IF EXISTS room;
DROP TABLE IF EXISTS subscribe;

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
  PRIMARY KEY (roomId),
  FOREIGN KEY (roomProfileId)
);


CREATE TABLE subscribe  (
  subscribeProfileId BINARY(16) NOT NULL,
  subscribeRoomId BINARY(16) NOT NULL,
  subscribeAvatar VARCHAR(255) NOT NULL,
  FOREIGN KEY (subscribeProfileId),
  FOREIGN KEY (subscribeRoomId),
  FOREIGN KEY (subscribeAvatar)
);
