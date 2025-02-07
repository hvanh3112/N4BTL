# Project Cửa hàng bán Sách (BookStore)

Dự án Web sử dụng công nghệ ASP.NET Core MVC, Entity Framework Core (EF Core), Database: MySQL

## Tổng quan

Web bán sách cơ bản, không cầu kỳ, có thể sử dụng template

## List chức năng

![alt text](https://github.com/buibaouet/BookStore/blob/master/List%20ch%E1%BB%A9c%20n%C4%83ng.jpg)

## Hướng dẫn cách clone (tải database: mysql, sql server)
1. Clone dự án về phía máy local (checkout ra 1 nhánh khác(lưu ý không chỉnh sửa trên nhánh main))
2. Thay đổi chuỗi kết nối ConnectionStrings trong appsetting của bạn ![image](https://github.com/user-attachments/assets/cb6dcaf4-5909-478e-98f7-d0207d7ade2f)
3. Vào folder Migration xoá hết những file trong đó => Open in terminal => chạy lệnh: dotnet ef migrations add InitialCreate, check file vừa được tạo, => cuối cùng chạy lệnh: dotnet ef database update
4. Chạy chương trình lần đầu tiên (sẽ tự động thêm 3 tài khoản)
      + admin : admin@example.com - Password123! => đường dẫn đến trang admin: /Admin/Dashboard
      + nhân viên : staff@example.com - Password123!
      + người dùng : user@example.com - Password123!

## Hướng dẫn cách đổi từ mysql => sql server  (tải database: mysql, sql server)
+ clone như bước 1 và checkout ra 1 nhánh khác(lưu ý không chỉnh sửa trên nhánh main)
+ tải nuget Microsoft.EntityFrameworkCore.SqlServer Version="7.0.10" về dự án
+ vào phần Programs.cs thay thổi đoạn mã code
+ ![image](https://github.com/user-attachments/assets/6e515c1d-5042-4ad9-acb1-2a67f4bd4ec1)
+ => này thành 
+ ![image](https://github.com/user-attachments/assets/3b9392ab-3a87-46d4-a88b-9506f0d46f0d)
+ Lưu ý : Chuỗi kết nối SQL Server thường có dạng: "Server=localhost;Database=MyDb;User Id=sa;Password=yourpassword;TrustServerCertificate=True;"
+ Rồi bắt đầu lại từ bước 2 của phần Hướng dẫn cách clone bên trên
