CREATE SCHEMA IF NOT EXISTS vehicles;
USE vehicles;

CREATE TABLE manufacturers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    manufacturer_name VARCHAR(100) NOT NULL
);

CREATE TABLE models (
    id INT AUTO_INCREMENT PRIMARY KEY,
    model_name VARCHAR(100) NOT NULL,
    id_manufacturer INT NOT NULL,
    FOREIGN KEY (id_manufacturer) REFERENCES manufacturers(id)
);

CREATE TABLE owners (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    birthday DATE NOT NULL,
    city VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL,
    house_number VARCHAR(20) NOT NULL,
    zip_code VARCHAR(20) NOT NULL
);

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin_code VARCHAR(50) UNIQUE NOT NULL,
    engine_model VARCHAR(50) NOT NULL,
    manufactured_in INT NOT NULL,
    id_model INT NOT NULL,
    id_owner INT NOT NULL,
    FOREIGN KEY (id_model) REFERENCES models(id),
    FOREIGN KEY (id_owner) REFERENCES owners(id)
);

INSERT INTO manufacturers (manufacturer_name) VALUES 
('Volkswagen'), 
('Toyota'), 
('Ford'), 
('BMW'), 
('Mercedes-Benz');

INSERT INTO models (model_name, id_manufacturer) VALUES 
('Passat', 1), 
('Golf', 1), 
('Corolla', 2), 
('Yaris', 2), 
('Focus', 3), 
('Fiesta', 3), 
('X5', 4), 
('3 Series', 4), 
('C-Class', 5), 
('E-Class', 5);

INSERT INTO owners (first_name, last_name, birthday, city, street, house_number, zip_code) VALUES 
('Jan', 'Novák', '1980-05-15', 'Praha', 'Dlouhá', '12', '11000'),
('Petr', 'Svoboda', '1975-11-21', 'Brno', 'Široká', '3', '60200'),
('Anna', 'Veselá', '1990-08-10', 'Ostrava', 'Nová', '45', '70030'),
('Josef', 'Král', '1968-04-17', 'Plzeň', 'Kratká', '8', '30100'),
('Eva', 'Procházková', '1985-09-02', 'Liberec', 'Střední', '14', '46001');

INSERT INTO cars (vin_code, engine_model, manufactured_in, id_model, id_owner) VALUES 
('1HGCM82633A123456', '1.8 TSI', 2021, 1, 1),
('2HGFB2F50DH123456', '2.0 TDI', 2022, 2, 2),
('3VWFE21C04M000001', '1.5 TGDI', 2020, 3, 3),
('4T1BG22K51U123456', '2.0 Hybrid', 2019, 4, 4),
('1FAFP404X1F123456', '1.6 Ecoboost', 2018, 5, 5);