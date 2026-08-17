# Hospital Checklist Project (GitHub Pages Ready)

โปรเจกต์ระบบ Checklist ลงพื้นที่ รพ.สต. ที่จัดโครงสร้างไฟล์พร้อมสำหรับขึ้นระบบบน **GitHub Pages**

## โครงสร้างไฟล์
- `index.html` - หน้าเว็บหลัก (Dashboard + Map + Checklist + GPS + Photo)
- `schema.sql` - คำสั่ง SQL สำหรับนำไปใช้ใน Supabase
- `.nojekyll` - ไฟล์พิเศษสำหรับปิดระบบ Jekyll บน GitHub Pages เพื่อให้โหลดไฟล์ static ได้เต็มประสิทธิภาพ

## วิธีรันบน GitHub Pages
1. สมัคร/ล็อกอินที่ GitHub.com
2. สร้าง Repository ใหม่ ตั้งชื่อว่า `hospital-checklist`
3. อัปโหลดไฟล์ทั้งหมดขึ้น Repository
4. ไปที่ **Settings** -> **Pages** -> เลือก Branch `main` แล้วกด **Save**
5. รอ 1-2 นาที คุณจะได้ URL ในรูปแบบ `https://username.github.io/hospital-checklist/`
