CREATE TABLE IF NOT EXISTS hospitals (
    id BIGINT PRIMARY KEY,
    name TEXT NOT NULL,
    province VARCHAR(100),
    district VARCHAR(100),
    subdistrict VARCHAR(100),
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    type VARCHAR(50),
    is_checked BOOLEAN DEFAULT FALSE,
    checked_at TIMESTAMPTZ,
    actual_lat DOUBLE PRECISION,
    actual_lng DOUBLE PRECISION,
    image_url TEXT,
    note TEXT
);

INSERT INTO hospitals (id, name, province, district, subdistrict, latitude, longitude, type)
VALUES
(11162, 'โรงพยาบาลบ้านโคก', 'อุตรดิตถ์', 'บ้านโคก', 'บ้านโคก', 18.02738833, 101.0725999, 'สป.สธ.'),
(11161, 'โรงพยาบาลฟากท่า', 'อุตรดิตถ์', 'ฟากท่า', 'ฟากท่า', 18.00325027, 100.8833568, 'สป.สธ.'),
(14006, 'รพ.สต.บ้านห้วยต้า ตำบลนางพญา', 'อุตรดิตถ์', 'ท่าปลา', 'นางพญา', 18.002908, 100.4673761, 'รพ.สต.'),
(6299, 'รพ.สต.สองคอน', 'อุตรดิตถ์', 'ฟากท่า', 'สองคอน', 17.98092414, 100.872834, 'รพ.สต.'),
(6298, 'รพ.สต.บ้านโป่งพาน  ตำบลห้วยมุ่น', 'อุตรดิตถ์', 'น้ำปาด', 'ห้วยมุ่น', 17.888052, 100.977041, 'รพ.สต.'),
(6287, 'รพ.สต.ห้วยผึ้ง', 'อุตรดิตถ์', 'ท่าปลา', 'ท่าแฝก', 17.85676, 100.609042, 'รพ.สต.'),
(6293, 'รพ.สต.เด่นเหล็ก', 'อุตรดิตถ์', 'น้ำปาด', 'เด่นเหล็ก', 17.833308, 100.782061, 'รพ.สต.'),
(6283, 'รพ.สต.บ้านปางหมิ่น', 'อุตรดิตถ์', 'ท่าปลา', 'น้ำหมัน', 17.824533, 100.292841, 'รพ.สต.'),
(6297, 'รพ.สต.บ้านห้วยมุ่น', 'อุตรดิตถ์', 'น้ำปาด', 'ห้วยมุ่น', 17.809135, 100.935197, 'รพ.สต.'),
(6263, 'รพ.สต.บ้านห้วยฮ้า ตำบลบ้านด่านนาขาม', 'อุตรดิตถ์', 'เมืองอุตรดิตถ์', 'บ้านด่านนาขาม', 17.806547, 100.114052, 'รพ.สต.')
-- ... [รวมทั้งหมด 480 รายการ]
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  province = EXCLUDED.province,
  district = EXCLUDED.district,
  subdistrict = EXCLUDED.subdistrict,
  latitude = EXCLUDED.latitude,
  longitude = EXCLUDED.longitude,
  type = EXCLUDED.type;
