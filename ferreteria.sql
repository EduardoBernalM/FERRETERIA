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
          existencia VARCHAR(10)
          );
                CREATE TABLE registro(
                  idfactura INT,
                  idarticulo INT,
           FOREIGN KEY (idfactura) REFERENCES factura(idfactura),
           FOREIGN KEY (idarticulo) REFERENCES articulo(idarticulo)
          );
           
          INSERT INTO vendedor (idvendedor,nombre,ventas,telefono,objeventa,fecha_ingreso)
          VALUES (1,"claudia",5,5566774845,2,"2022-05-06"),(2,"luis",5,5556887711,3,"2022-05-14"),(3,"eduardo",5,5688771144,3,"2022-05-15"),(4,"ingrid",5,5677884411,3,"2022-05-16"),
          (5,"karim",4,5699332225,6,"2022-05-17"),(6,"joshua",4,5699857589,6,"2022-05-18"),(7,"rosalba",5,5624111544,6,"2022-05-18"),(8,"michelle",9,5689876564,10,"2022-05-18"),(9,"michelle",9,5689876564,10,"2022-05-19");


          INSERT INTO cliente (idcliente,nombre,apellido,cedula,limcredito) VALUES
          (011,"luis","sanches",044,),(022,"ana","sanchez",044),(033,"luisa","ferdandes",044),(044,"alejandro","martinez",055),(055,"alejandra","gonzales",055),
          (066,"dulce","cuapio",055),(077,"abigail","cuapio",044),(088,"gaby","fernandes",044),(099,"karen","perez",055),(100,"daniela","sanchez",044);


          INSERT INTO familiar(idfamiliar,parentesco,nombe) VALUES
          (012,088,"zara"),(013,077,"luisa"),(014,066,"fernanda"),(015,011,"eduardo"),(016,022,"luis"),(017,033,"daniel"),(018,044,"ricardo");


          INSERT INTO factura(idfactura,pago,fecha_ingreso) VALUES
          (1,)


          INSERT INTO articulo(idarticulo,codigo,fabricante,descripcion,precio,existencia) VALUES
          ("1A",11,3,"cortadora",500,2),("2B",22,3,"serrucho",400,1),("3C",33,4,"cincel",200,3),("4D",44,3,"cuadrado y azul",100,3),
          ("5E",55,3,"escalera",700,3),("6F",66,3,"martillo",54.99,3),("7G",77,3,"clavo",2,10);

          INSERT INTO  factura_registro_articulio(idfactura,idarticulo) VALUES





          
        
DESCRIBE ferreteria.vendedor;
DESCRIBE ferreteria.cliente;
DESCRIBE ferreteria.familiar;
DESCRIBE ferreteria.factura;
DESCRIBE ferreteria.articulo;