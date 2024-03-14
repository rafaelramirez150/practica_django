DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `category_store`(
categoria varchar(100)
)
BEGIN
insert into category(category) values (categoria);
END
//
DELIMITER ;

CALL category_store('electrónica');
CALL category_store('ropa');
CALL category_store('bolsas');
CALL category_store('papa');
CALL category_store('papi');

DELIMITER //
CREATE PROCEDURE InsertProduct(IN productName VARCHAR(100), IN categoryId INT)
BEGIN
    INSERT INTO product (product, id_c_d) VALUES (productName, categoryId);
END //
DELIMITER ;

CALL InsertProduct('teléfono', 1);
CALL InsertProduct('TV HD', 1);
CALL InsertProduct('Camisa', 2);
CALL InsertProduct('falda de oficina', 2);
CALL InsertProduct('Cartera', 3);
CALL InsertProduct('bolsa de mano', 3);
CALL InsertProduct('bolsa de viaje', 3);

DELIMITER //
CREATE PROCEDURE getCatDetails()
BEGIN
    SELECT * FROM category;
END //
DELIMITER ;