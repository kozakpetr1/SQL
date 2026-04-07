-- =====================================================
-- Schema
-- =====================================================

DROP DATABASE IF EXISTS store;

CREATE DATABASE store
CHARACTER SET utf8mb4
COLLATE utf8mb4_czech_ci;

USE store;

-- =====================================================
-- Table: warehouse
-- =====================================================

CREATE TABLE warehouse (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,

    street      VARCHAR(150) NOT NULL,
    city        VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    country     VARCHAR(100) NOT NULL

) ENGINE=InnoDB;

-- =====================================================
-- Table: product
-- =====================================================

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name         VARCHAR(150) NOT NULL,
    quantity     INT NOT NULL DEFAULT 0,
    warehouse_id INT NOT NULL,
    stored_from  DATE NOT NULL,
    description  JSON,

    CONSTRAINT fk_product_warehouse
        FOREIGN KEY (warehouse_id)
        REFERENCES warehouse(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE INDEX idx_product_warehouse
ON product(warehouse_id);

-- =====================================================
-- Insert warehouses
-- =====================================================

INSERT INTO warehouse (name, street, city, postal_code, country) VALUES
('Central Warehouse', 'Průmyslová 12', 'Praha', '10000', 'Czech Republic'),
('North Warehouse', 'Nádražní 45', 'Liberec', '46001', 'Czech Republic'),
('South Warehouse', 'Vídeňská 78', 'Brno', '63900', 'Czech Republic'),
('East Warehouse', 'Ostravská 21', 'Ostrava', '70200', 'Czech Republic'),
('West Warehouse', 'Plzeňská 90', 'Plzeň', '30100', 'Czech Republic');

-- =====================================================
-- Insert products
-- =====================================================

INSERT INTO product (name, quantity, warehouse_id, stored_from, description) VALUES
('Laptop Dell Latitude', 15, 1, '2024-01-10', '{"brand":"Dell","category":"laptop","cpu":"Intel i7","ram_gb":16}'),
('Mechanical Keyboard', 50, 1, '2024-02-05', '{"type":"keyboard","switch":"Cherry MX Brown","layout":"CZ"}'),
('27 inch Monitor', 20, 1, '2024-03-01', '{"category":"monitor","size_inch":27,"resolution":"2560x1440"}'),

('Office Chair', 12, 2, '2024-01-15', '{"category":"furniture","ergonomic":true,"color":"black"}'),
('Desk Lamp', 40, 2, '2024-02-10', '{"category":"lighting","power_w":12,"type":"LED"}'),
('USB-C Docking Station', 18, 2, '2024-03-12', '{"category":"dock","ports":8,"power_delivery":true}'),

('Network Switch 24p', 10, 3, '2024-01-20', '{"category":"network","ports":24,"speed":"1Gbps"}'),
('Ethernet Cable Cat6', 200, 3, '2024-02-18', '{"category":"cable","type":"Cat6","length_m":2}'),
('Wireless Mouse', 70, 3, '2024-03-05', '{"category":"mouse","connection":"wireless","dpi":1600}'),

('Laptop Stand', 35, 4, '2024-01-25', '{"category":"accessory","material":"aluminium"}'),
('External SSD 1TB', 22, 4, '2024-02-22', '{"category":"storage","capacity_tb":1,"interface":"USB-C"}'),
('HDMI Cable', 120, 4, '2024-03-11', '{"category":"cable","type":"HDMI","length_m":1.5}'),

('Printer LaserJet', 8, 5, '2024-01-30', '{"category":"printer","type":"laser","color":false}'),
('Printer Toner', 60, 5, '2024-02-15', '{"category":"consumable","type":"toner","compatible":"LaserJet"}'),
('Paper A4 Box', 150, 5, '2024-03-02', '{"category":"office","size":"A4","sheets":500}'),

('Graphics Tablet', 14, 1, '2024-03-18', '{"category":"graphics","pressure_levels":8192}'),
('Webcam FullHD', 30, 2, '2024-03-20', '{"category":"camera","resolution":"1080p"}'),
('Portable Projector', 6, 3, '2024-03-22', '{"category":"projector","lumens":3000}'),
('Bluetooth Speaker', 25, 4, '2024-03-25', '{"category":"audio","connection":"bluetooth"}'),
('Smartphone Charger', 80, 5, '2024-03-27', '{"category":"charger","power_w":30}');