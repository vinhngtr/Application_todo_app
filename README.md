# Quiz Exercise_App
- Language: **Dart**
- Framework: **Flutter**
- Feature:
    - Tạo bộ dữ liệu về câu hỏi và câu trả lời cho trước theo yêu cầu của người dùng
    - Khi kết thúc quiz App sẽ `tổng hợp các câu trả lời đã chọn cũng như đã chọn đúng ` và `hiển thị giao diện tổng kết bài quiz` để người dùng nắm được kết quả làm bài.
### Run application
 - Lựa chọn Virtual Machine cần hiện thực: `Command pallete (Ctrl+shift+P)` --> `Flutter launch emulator` --> lựa chọn thiết bị phù hợp
 - Từ thư mục `lib` --> tìm file **main.dart** --> chọn `Run` --> `Run without Debugging`
 - Tạo **emulator Android** từ Android studio: 
    

### Demo App Exercise Quiz challenge:
#### Home page
  <img src = "./assets/images/homepage.PNG" width = 350 height = 650 />
  
#### Screen Question
  <img src = "./assets/images/question_screen.png" width = 350 height = 650 />
  <img src = "./assets/images/q2_screen.png" width = 350 height = 650 />
  
- **giao diện các câu hỏi còn lại tương tự**
- **khi chọn vào 1 câu trả lời bất kì, câu trả lời sẽ được lưu lại và ứng dụng sẽ chuyển sang câu hỏi kế tiếp !**

#### Summary question
<img src = "./assets/images/summary_screen.png" width = 350 height = 650 />

- **giao diện tổng hợp toàn bộ các câu trả lời trong bài quiz của chúng ta - đồng thời thông báo số lương câu trả lời chính xác / tổng số câu hỏi**
- **Chọn vào `button Restart quiz` để bắt đầu lại bài quiz**
