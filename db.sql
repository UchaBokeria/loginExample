CREATE TABLE accounts(
	id int(255) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  username varchar(500) NOT NULL,
  passcode varchar(1500) NOT NULL,
	email varchar(500) NOT NULL,
	gender int(2) NOT NULL,
  token varchar(2000) NOT NULL,
  createdAT timestamp NOT NULL default current_timestamp on update current_timestamp,
	img varchar(1500) NOT NULL
);
INSERT INTO accounts(username,passcode,email,gender,token,img) VALUES(?,?,?,?,?,?);

CREATE TABLE messages(
	id int(255) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  	from_id int(255) NOT NULL,
	to_id int(255) NOT NULL,
	message varchar(5000) NOT NULL,
 	createdAT timestamp NOT NULL default current_timestamp on update current_timestamp
);

INSERT INTO messages(from_id,to_id,message) VALUES(1,2,' hi u ');
INSERT INTO messages(from_id,to_id,message) VALUES(2,1,' hi me? ');
INSERT INTO messages(from_id,to_id,message) VALUES(1,2,' yes hi u ');
INSERT INTO messages(from_id,to_id,message) VALUES(2,1,' hi u if its good>?!');








SELECT messages.id,accounts.username as getter,accounts.img as icon,messages.message,messages.createdAT FROM messages JOIN accounts on messages.to_id = accounts.id ORDER BY createdAT ASC
