# App Học Tiếng Nhật N5 - N1 (Backend)

Backend được phát triển bằng NestJS, Prisma ORM và **SQLite**. Cấu trúc chia theo kiến trúc Module-based (Domain-driven), dễ dàng mở rộng và bảo trì. (Mặc định dùng SQLite để cực kỳ dễ dàng chạy Local mà không cần cài đặt DB phức tạp).

## Yêu cầu môi trường
- Node.js (>= 18)

## 1. Cài đặt thư viện
```bash
npm install
```

## 2. Cấu hình Database
Tạo file `.env` ở thư mục gốc của Backend (`BE/`) và cấu hình chuỗi kết nối SQLite:
```env
DATABASE_URL="file:./dev.db"
JWT_SECRET="your_super_secret_key"
```

## 3. Tạo Schema & Sinh dữ liệu mẫu (Seed)
Chạy các lệnh sau để tự động tạo file CSDL SQLite và sinh dữ liệu mẫu N5:
```bash
# Push schema vào database
npx prisma db push

# Chạy script Seed tạo dữ liệu mẫu (N5, từ vựng, kanji, bài tập...)
npx prisma db seed
```

## 4. Chạy ứng dụng
```bash
# Chế độ phát triển (auto reload)
npm run start:dev

# Build và chạy production
npm run build
npm run start:prod
```

## 5. Tài liệu API (Swagger)
Sau khi chạy ứng dụng thành công, truy cập trình duyệt tại địa chỉ:
👉 **[http://localhost:3000/api](http://localhost:3000/api)**

Swagger UI sẽ liệt kê đầy đủ toàn bộ các API (Auth, Levels, Lessons, Progress, SRS, Gamification...) kèm theo format Payload và Response. Bạn có thể gọi API test trực tiếp trên giao diện này.

---

Chúc bạn code Flutter vui vẻ! 🚀
