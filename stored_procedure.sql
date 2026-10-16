
USE classicmodels;

-- 1. Xóa procedure nếu đã tồn tại
DROP PROCEDURE IF EXISTS findAllCustomers;

-- 2. Tạo procedure lấy toàn bộ khách hàng
DELIMITER //

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT *
    FROM customers;
END //

DELIMITER ;

-- 3. Gọi procedure
CALL findAllCustomers();

-- 4. Xóa và tạo lại procedure để tìm khách hàng có mã 175
DROP PROCEDURE IF EXISTS findAllCustomers;

DELIMITER //

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT *
    FROM customers
    WHERE customerNumber = 175;
END //

DELIMITER ;

-- 5. Gọi procedure sau khi thay đổi
CALL findAllCustomers();
