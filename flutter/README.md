# Nhật Ngữ N5 App

Ứng dụng hỗ trợ học tiếng Nhật trình độ N5, bao gồm hệ thống bài học, trắc nghiệm, thẻ từ vựng (flashcards) và theo dõi tiến độ người dùng. Ứng dụng được xây dựng theo kiến trúc Feature-First với sự hỗ trợ của Riverpod, Drift và Dio.

## 🛠 Yêu Cầu Môi Trường (Environment Requirements)
- **Flutter SDK**: `^3.13.0` (Khuyên dùng bản Stable mới nhất của Flutter 3.13.x trở lên).
- **Dart SDK**: `^3.1.0` trở lên.
- Trình quản lý gói: `flutter pub`.

## ⚙️ Hướng Dẫn Cài Đặt (Installation Guide)
1. **Clone dự án** và mở thư mục `flutter` bằng IDE (VS Code, Android Studio,...).
2. **Cài đặt các gói phụ thuộc (Dependencies)**:
   ```bash
   flutter pub get
   ```
3. **Cấu hình biến môi trường**:
   - Tạo một file `.env` trống ở thư mục gốc của project (cùng cấp với `pubspec.yaml`).
   - Nếu bạn chạy Backend trên máy tính cá nhân (local), **KHÔNG CẦN** điền `API_URL` vào file `.env` vì app đã tự động nhận diện `localhost` (Web) hoặc `10.0.2.2` (Android Emulator).
   - Chỉ cấu hình `API_URL` nếu bạn chạy backend từ một server thật (ví dụ):
     ```env
     API_URL=https://api.domaincuaban.com/api
     ```

## 🚀 Cách Chạy Project (Running the app)
Project hỗ trợ chạy trên Android, iOS và Web. Nếu chạy trên máy ảo Android (Emulator) để kết nối với localhost, hệ thống đã cấu hình tự động trỏ `10.0.2.2` sang `localhost`.

- **Chạy trên Emulator/Device có sẵn:**
  ```bash
  flutter run
  ```
- **Chạy cụ thể trên Chrome (dành cho Web):**
  ```bash
  flutter run -d chrome
  ```
- **Chạy cụ thể trên máy ảo Android:**
  ```bash
  flutter run -d emulator-5554
  ```

## 📂 Cấu Trúc Thư Mục Chính (Folder Structure)
Dự án được tổ chức theo kiến trúc **Feature-First**:

```
lib/
 ├── core/              # Chứa các code dùng chung toàn app (Database, Network, Router, Theme, Storage).
 ├── features/          # Chứa các chức năng (features) chính của app.
 │   ├── auth/          # Tính năng đăng nhập/đăng ký.
 │   ├── home/          # Giao diện chính sau khi đăng nhập (Dashboard).
 │   ├── lessons/       # Tính năng bài học, trắc nghiệm, flashcard.
 │   └── progress/      # Tính năng lưu và xem tiến độ học tập.
 └── main.dart          # File entry-point của ứng dụng.
```
*Ghi chú trong từng `feature`: Mỗi tính năng thường chia làm `application` (logic/Riverpod), `data` (API/DAO/DTOs) và `presentation` (UI/Screens/Widgets).*

## 💻 Các Lệnh Thường Dùng (Common Commands)

- **Tạo lại các file generated (Freezed, Riverpod, Drift):**
  ```bash
  dart run build_runner build -d
  ```
- **Phân tích code (Linter):**
  ```bash
  flutter analyze
  ```
- **Định dạng code (Formatter):**
  ```bash
  dart format .
  ```
- **Sửa lỗi linter tự động:**
  ```bash
  dart fix --apply
  ```
