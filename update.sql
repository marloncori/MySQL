ALTER TABLE tbl_category RENAME COLUMN id TO category_id;

ALTER TABLE tbl_category DROP COLUMN id;

SELECT image_url FROM tbl_book WHERE id = 1;

UPDATE tbl_book SET image_url = 'src/assets/img/img-100.jfif' WHERE id = 1;

UPDATE tbl_book SET image_url = 'src/assets/img/img-101.jfif' WHERE id = 2;

UPDATE tbl_book SET image_url = 'src/assets/img/img-102.jfif' WHERE id = 3;

UPDATE tbl_book SET image_url = 'src/assets/img/img-103.jfif' WHERE id = 4;

UPDATE tbl_book SET image_url = 'src/assets/img/img-104.jfif' WHERE id = 5;

UPDATE tbl_book SET image_url = 'src/assets/img/img-105.jfif' WHERE id = 6;

UPDATE tbl_book SET image_url = 'src/assets/img/img-106.jfif' WHERE id = 7;

UPDATE tbl_book SET image_url = 'src/assets/img/img-107.jfif' WHERE id = 8;

UPDATE tbl_book SET image_url = 'src/assets/img/img-108.jfif' WHERE id = 9;

UPDATE tbl_book SET image_url = 'src/assets/img/img-109.jfif' WHERE id = 10;

UPDATE tbl_book SET image_url = 'src/assets/img/img-110.jfif' WHERE id = 11;