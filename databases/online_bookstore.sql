USE online_bookstore;

CREATE TABLE role (
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
    role_name VARCHAR(10) NOT NULL
);

CREATE TABLE type (
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
    type_name VARCHAR(50) NOT NULL,
    genre_id BIGINT NOT NULL,
	created_by VARCHAR(100) NOT NULL,
    date_created VARCHAR(100) NOT NULL
);

CREATE TABLE book (
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
    title VARCHAR(200) NOT NULL,
    thumbnail VARCHAR(200) NOT NULL,
    author_id BIGINT NOT NULL,
    price DECIMAL(8, 2) NOT NULL,
    type_id BIGINT NOT NULL,
    publication_date TIMESTAMP NULL,
    publisher_id BIGINT NOT NULL,
    description TEXT NULL,
    stocks BIGINT NOT NULL,
    created_by VARCHAR(100) NOT NULL,
    date_created VARCHAR(100) NOT NULL
);

CREATE TABLE genre (
	id BIGINT NOT NULL PRIMARY KEY auto_increment,	
    genre_name VARCHAR(50) NOT NULL,
 	created_by VARCHAR(100) NOT NULL,
    date_created VARCHAR(100) NOT NULL   
);

CREATE TABLE author (
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50) NULL,
	created_by VARCHAR(100) NOT NULL,
    date_created VARCHAR(100) NOT NULL   
);

CREATE TABLE user (
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
    role_id BIGINT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(75) NOT NULL,
    address VARCHAR(200) NOT NULL,
    tel VARCHAR(20) NOT NULL,
	created_by VARCHAR(100) NOT NULL,
    date_created VARCHAR(100) NOT NULL    
);

CREATE TABLE publisher (
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
    name VARCHAR(50) NOT NULL,
    headquarters_location VARCHAR(200) NULL,
	created_by VARCHAR(100) NOT NULL,
    date_created VARCHAR(100) NOT NULL
);

CREATE TABLE cart (
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
    user_id BIGINT NOT NULL,
    book_id BIGINT NOT NULL,
    quantity BIGINT NOT NULL,
    order_id BIGINT NULL,
    ordered BOOLEAN NOT NULL,
    date_added TIMESTAMP NULL,
	created_by VARCHAR(100) NOT NULL,
    date_created VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
	id BIGINT NOT NULL PRIMARY KEY auto_increment,
    order_code VARCHAR(50) UNIQUE NOT NULL,
    user_id BIGINT NOT NULL,
    total_price DECIMAL(8, 2) NOT NULL
);

ALTER TABLE user ADD CONSTRAINT fk_user_role FOREIGN KEY (role_id) REFERENCES role (id);

ALTER TABLE type ADD CONSTRAINT fk_type_genre FOREIGN KEY (genre_id) REFERENCES genre (id);

ALTER TABLE book ADD CONSTRAINT fk_book_type FOREIGN KEY (type_id) REFERENCES type (id);
ALTER TABLE book ADD CONSTRAINT fk_book_author FOREIGN KEY (author_id) REFERENCES author (id);
ALTER TABLE book ADD CONSTRAINT fk_book_publisher FOREIGN KEY (publisher_id) REFERENCES publisher (id);

ALTER TABLE cart ADD CONSTRAINT fk_cart_user FOREIGN KEY (user_id) REFERENCES user(id);
ALTER TABLE cart ADD CONSTRAINT fk_cart_book FOREIGN KEY (book_id) REFERENCES book(id);
ALTER TABLE cart ADD CONSTRAINT fk_cart_orders FOREIGN KEY (order_id) REFERENCES orders(id);
