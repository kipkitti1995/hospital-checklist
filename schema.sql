-- 2. สร้างตาราง hospitals พร้อมคอลัมน์ครบถ้วน
CREATE TABLE hospitals (
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
    text_detail TEXT,      -- ข้อความรายละเอียดเพิ่มเติม
    note TEXT              -- หมายเหตุ
);

-- 3. เพิ่มข้อมูลเริ่มต้น (INSERT / UPDATE)
INSERT INTO hospitals (id, name, province, district, subdistrict, latitude, longitude, type)
VALUES
(11162, 'โรงพยาบาลบ้านโคก', 'อุตรดิตถ์', 'บ้านโคก', 'บ้านโคก', 18.02738833, 101.0725999, 'สป.สธ.'),
(11161, 'โรงพยาบาลฟากท่า', 'อุตรดิตถ์', 'ฟากท่า', 'ฟากท่า', 18.00325027, 100.8833568, 'สป.สธ.')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  province = EXCLUDED.province,
  district = EXCLUDED.district,
  subdistrict = EXCLUDED.subdistrict,
  latitude = EXCLUDED.latitude,
  longitude = EXCLUDED.longitude,
  type = EXCLUDED.type;
