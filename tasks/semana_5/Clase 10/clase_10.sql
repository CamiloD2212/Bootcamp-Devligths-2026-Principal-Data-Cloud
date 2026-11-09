CREATE TABLE conductores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    licencia VARCHAR(50) UNIQUE NOT NULL,
    fecha_ingreso DATE
);

CREATE TABLE vehiculos (
    id SERIAL PRIMARY KEY,
    patente VARCHAR(20) UNIQUE NOT NULL,
    modelo VARCHAR(50),
    conductor_id INT UNIQUE, 
    FOREIGN KEY (conductor_id) REFERENCES conductores(id)
);


CREATE TABLE profesores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    fecha_contratacion DATE
);

CREATE TABLE clases (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    horario VARCHAR(50),
    profesor_id INT NOT NULL,
    FOREIGN KEY (profesor_id) REFERENCES profesores(id)
);


CREATE TABLE pacientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    telefono VARCHAR(20)
);

CREATE TABLE enfermedades (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    nivel_gravedad VARCHAR(20) CHECK (nivel_gravedad IN ('leve', 'moderada', 'grave'))
);

CREATE TABLE pacientes_enfermedades (
    paciente_id INT REFERENCES pacientes(id),
    enfermedad_id INT REFERENCES enfermedades(id),
    fecha_diagnostico DATE,
    PRIMARY KEY (paciente_id, enfermedad_id)
);


-- Inserciones 1:1
INSERT INTO conductores (nombre, licencia, fecha_ingreso) VALUES
('Juan Perez', 'LIC12345', '2023-01-10'),
('Ana Lopez', 'LIC67890', '2023-02-15'),
('Carlos Ruiz', 'LIC11223', '2023-06-20');

INSERT INTO vehiculos (patente, modelo, conductor_id) VALUES
('AA111BB', 'Toyota Corolla', 1),
('CC222DD', 'Ford Focus', 2);

-- Inserciones 1:N
INSERT INTO profesores (nombre, especialidad, fecha_contratacion) VALUES
('Prof. Martinez', 'Matemáticas', '2020-03-01'),
('Prof. Gomez', 'Historia', '2019-08-12');

INSERT INTO clases (nombre, horario, profesor_id) VALUES
('Álgebra', 'Lunes 08:00', 1),
('Geometría', 'Miércoles 10:00', 1),
('Historia del Arte', 'Martes 14:00', 2);

-- Inserciones N:N
INSERT INTO pacientes (nombre, fecha_nacimiento, telefono) VALUES
('Lucía Silva', '1990-05-14', '555-1234'),
('Marcos Diaz', '1985-11-22', '555-5678'),
('Sofía Torres', '1995-02-28', '555-9012');

INSERT INTO enfermedades (nombre, descripcion, nivel_gravedad) VALUES
('Resfriado', 'Infección viral de las vías respiratorias altas', 'leve'),
('Asma', 'Inflamación crónica de las vías respiratorias', 'moderada'),
('Neumonía', 'Infección que inflama los sacos aéreos de los pulmones', 'grave');

INSERT INTO pacientes_enfermedades (paciente_id, enfermedad_id, fecha_diagnostico) VALUES
(1, 1, '2023-09-01'), -- Lucía tiene Resfriado
(1, 2, '2023-09-15'), -- Lucía tiene Asma
(2, 3, '2023-10-05'), -- Marcos tiene Neumonía
(3, 1, '2023-10-10'); -- Sofía tiene Resfriado


INSERT INTO vehiculos (patente, modelo, conductor_id) VALUES
('EE333FF', 'Chevrolet Cruze', 1);