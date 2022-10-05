CREATE DATABASE ferreteria;
USE ferreteria;
  CREATE TABLE vendedor(
    idvendedor INT PRIMARY KEY, 
    ventas VARCHAR(20) NOT NULL,
    telefono CHAR(10) NOT NULL,
    objeventa CHAR(10),
    fecha_ingreso DATE
	);
    CREATE TABLE cliente(
      idcliente INT AUTO_INCREMENT PRIMARY KEY,
      nombe CHAR(30) NOT NULL,
      apellido CHAR(1),
      cedula VARCHAR(10),
      limcredito FLOAT NOT NULL,
      idvendedor INT,
      FOREIGN KEY (idvendedor) REFERENCES vendedor(idvendedor)
      );
      CREATE TABLE familiar(
      	idfamiliar INT PRIMARY KEY,
        parentesco CHAR(1) NOT NULL,
      nombre VARCHAR (10) NOT NULL
      );

        
      CREATE TABLE factura(
       idfactura INT AUTO_INCREMENT PRIMARY KEY,
        pago DECIMAL(2,2),
        fecha_ingreso DATE
        );
        CREATE TABLE articulo(
          idarticulo INT PRIMARY KEY,
          codigo VARCHAR(10),
          fabricante VARCHAR(5),
          descripcion VARCHAR(5),
          precio DECIMAL(2,2),
          existencia VARCHAR(3)
          );
                CREATE TABLE registro(
                  idfactura INT,
                  idarticulo INT,
           FOREIGN KEY (idfactura) REFERENCES factura(idfactura),
           FOREIGN KEY (idarticulo) REFERENCES articulo(idarticulo)
          );
           
          INSERT INTO vendedor (idvendedor,nombre,ventas,telefono,objeventa,fecha_ingreso)
          VALUES (1,"claudia",5,5566774845,2,"2022-05-06"),(2,"luis",5,5556887711,3,"2022-05-14")


          
        
DESCRIBE ferreteria.vendedor;
DESCRIBE ferreteria.cliente;
DESCRIBE ferreteria.familiar;
DESCRIBE ferreteria.factura;
DESCRIBE ferreteria.articulo;