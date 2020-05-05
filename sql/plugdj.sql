<!-- Drop Table -->

DROP TABLE IF EXISTS profile;
DROP TABLE IF EXISTS room;
DROP TABLE IF EXISTS subscribe;

<!-- Create Table -->

CREATE TABLE profile
  profileId BINARY(16) NOT NULL,
  profileActivationToken CHAR(32),
  profileAvatar
  profileEmail VARCHAR(128) NOT NULL,
  profileHash CHAR(97) NOT NULL,
  profileMusic
  profileUserName
  PRIMARY KEY (profileId)

CREATE TABLE room
  roomId BINARY(16) NOT NULL,
  roomProfileId(16) NOT NULL,


CREATE TABLE subscribe
