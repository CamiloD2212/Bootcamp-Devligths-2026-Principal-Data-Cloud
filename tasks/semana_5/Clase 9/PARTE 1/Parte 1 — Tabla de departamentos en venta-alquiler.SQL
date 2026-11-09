CREATE TABLE apartments(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	address VARCHAR(100),
	city VARCHAR(50),
	postal_code VARCHAR(10),
	bedrooms INT,
	area_m2 NUMERIC(6, 2),
	price NUMERIC(10, 2),
	available BOOLEAN,
	published_date DATE
	
);


INSERT INTO apartments (name, address, city, postal_code, bedrooms, area_m2, price, available, published_date) VALUES
('Depto A', 'Av. Siempre Viva 123', 'Buenos Aires', 'C1000', 2, 55.50, 120000.00, TRUE, '2023-08-01'),
('Torre Norte', 'Av. San Martín 456', 'Córdoba', 'X5000', 3, 85.00, 145000.00, TRUE, '2023-08-05'),
('Loft Céntrico', 'Calle Mitre 789', 'Rosario', 'S2000', 1, 40.00, 75000.00, FALSE, '2023-08-10'),
('Duplex Vista', 'Av. Belgrano 1010', 'Mendoza', 'M5500', 3, 110.50, 180000.00, TRUE, '2023-08-12'),
('Monoambiente Sol', 'Sarmiento 222', 'Resistencia', 'H3500', 1, 32.00, 45000.00, TRUE, '2023-08-15'),
('Depto B', 'Av. Siempre Viva 125', 'Buenos Aires', 'C1000', 2, 58.00, 125000.00, FALSE, '2023-08-18'),
('Penthouse Río', 'Costanera 50', 'Rosario', 'S2000', 4, 150.00, 350000.00, TRUE, '2023-09-01'),
('Casa PH', '9 de Julio 333', 'Córdoba', 'X5000', 2, 65.00, 95000.00, TRUE, '2023-09-02'),
('Depto Estudiante', 'Pueyrredón 80', 'La Plata', 'B1900', 1, 35.50, 50000.00, FALSE, '2023-09-05'),
('Torre Sur', 'Av. San Martín 490', 'Córdoba', 'X5000', 2, 70.00, 115000.00, TRUE, '2023-09-10'),
('Piso Exclusivo', 'Av. Alvear 1500', 'Buenos Aires', 'C1014', 4, 200.00, 550000.00, TRUE, '2023-09-15'),
('Estudio Arte', 'Güemes 412', 'Mar del Plata', 'B7600', 1, 38.00, 60000.00, TRUE, '2023-09-20'),
('Depto Familiar', 'Las Heras 900', 'Mendoza', 'M5500', 3, 95.00, 130000.00, FALSE, '2023-09-25'),
('Monoambiente 2', 'Sarmiento 224', 'Resistencia', 'H3500', 1, 30.00, 42000.00, TRUE, '2023-10-01'),
('Depto C', 'Av. Siempre Viva 127', 'Buenos Aires', 'C1000', 2, 55.50, 118000.00, TRUE, '2023-10-03'),
('Jardines de Paz', 'Ruta 9 Km 5', 'Córdoba', 'X5022', 3, 120.00, 190000.00, TRUE, '2023-10-05'),
('Loft Industrial', 'Paseo Colón 888', 'Buenos Aires', 'C1063', 2, 80.00, 140000.00, FALSE, '2023-10-08'),
('Piso 10 Vista', 'Oroño 1111', 'Rosario', 'S2000', 3, 105.00, 160000.00, TRUE, '2023-10-12'),
('Depto Playa', 'Av. Colón 2000', 'Mar del Plata', 'B7600', 2, 50.00, 85000.00, TRUE, '2023-10-15'),
('Residencial Parque', 'Av. Libertador 400', 'Buenos Aires', 'C1001', 3, 130.00, 280000.00, FALSE, '2023-10-20'),
('Edificio Central', 'San Juan 555', 'Mendoza', 'M5500', 1, 45.00, 70000.00, TRUE, '2023-10-22'),
('Depto D', 'Av. Siempre Viva 129', 'Buenos Aires', 'C1000', 1, 42.00, 90000.00, TRUE, '2023-10-25'),
('Casa Bosque', 'Camino del Cerro 12', 'Bariloche', 'R8400', 4, 180.00, 320000.00, FALSE, '2023-11-01'),
('Refugio Sur', 'Moreno 999', 'Ushuaia', 'V9410', 2, 60.00, 110000.00, TRUE, '2023-11-05'),
('Depto Económico', 'Lavalle 150', 'Tucumán', 'T4000', 2, 52.00, 65000.00, TRUE, '2023-11-10'),
('Torre Alta', 'Av. 25 de Mayo 100', 'Resistencia', 'H3500', 3, 90.00, 135000.00, FALSE, '2023-11-15'),
('Loft Premium', 'Palermo 1234', 'Buenos Aires', 'C1425', 2, 75.00, 195000.00, TRUE, '2023-11-18'),
('Piso Céntrico', 'San Luis 222', 'Rosario', 'S2000', 2, 85.00, 125000.00, TRUE, '2023-11-20'),
('Depto E', 'Av. Siempre Viva 131', 'Buenos Aires', 'C1000', 3, 75.00, 150000.00, FALSE, '2023-11-22'),
('Ático Estrella', 'Av. Corrientes 3000', 'Buenos Aires', 'C1193', 2, 95.00, 210000.00, TRUE, '2023-11-25');


SELECT name, address, city, price
FROM apartments
ORDER BY price asc;


SELECT city, AVG(price)
FROM apartments
GROUP BY city;

SELECT name, bedrooms, area_m2
FROM apartments
WHERE bedrooms >=2 and area_m2 < 60;