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


#fbb9c6e5-4008-4055-871f-6e32016bdf71

#f1fb2c82-17b9-4818-958c-4d31c0b9be24

#67c52ad0-d38e-4bd6-a69b-ccb0de032237

#2704f40e-a760-460d-a34e-c6c58a58e092

#14b691bb-26f5-481f-9b79-4dd9dc442dad

#647f4fca-14a5-4e8c-971c-188b30798e5f

#77a5d588-51c3-4a89-a8d3-65e22e11c334

#c67b72e5-a705-414e-bf41-94e5374b543c

#05c26013-7420-4b8b-b569-c01aaafcf045

#929c1e8c-f8d7-49f8-ba32-b8353a9e14bd

#27db4629-a402-4b09-b528-a36cbe15a4fd

#99c07384-cfb0-45d8-8673-fca837448be6

#ed8267a9-61ab-4307-a2c1-abe9a269b36e

#86798249-c769-4b10-aa0f-cf317f5def60

#990122a1-40f7-4f75-852e-9f35a461140d


 INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
 VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway');