-- create new user with name bookstoredev --
CREATE USER 'bookstoredev'@'localhost' IDENTIFIED BY 'bookstoredev';

-- provide all the permissions --
GRANT ALL PRIVILEGES ON *.* TO 'bookstoredev'@'localhost';

-- create a passwrod for new user --
ALTER USER 'bookstoredev'@'localhost' IDENTIFIED WITH mysql_native_password BY 'bookstoredev';