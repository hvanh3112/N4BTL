using BookManagement.Constant;
using BookManagement.Data;
using BookManagement.Models.Entity;
using BookManagement.Models.Model;
using BookManagement.Service;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace BookManagement.SeedData
{
    public class DbSeeder
    {
        private readonly IAuthService _authService; private readonly AppDbContext _context;

        public DbSeeder(IAuthService authService, AppDbContext context)
        {
            _authService = authService;
            _context = context;
        }
        public async Task SeedAsync()
        {
            var userCount = await _context.Users.CountAsync();

            if (userCount > 0)
            {
                // Nếu có người dùng, không cần seeding
                return;
            }
            var admin = new RegisterModel
            {
                UserName = "admin@example.com",
                FirstName = "Admin",
                LastName = "User",
                Email = "admin@example.com",
                Password = "Password123!", // Mật khẩu mặc định
            };

            await _authService.InsertUser(admin);

            var staff = new RegisterModel
            {
                UserName = "staff@example.com",
                FirstName = "Staff",
                LastName = "User",
                Email = "staff@example.com",
                Password = "Password123!", // Mật khẩu mặc định
            };

            await _authService.InsertUser(staff);

            var user = new RegisterModel
            {
                UserName = "user@example.com",
                FirstName = "Normal",
                LastName = "User",
                Email = "user@example.com",
                Password = "Password123!", // Mật khẩu mặc định
            };

            await _authService.InsertUser(user);
        }
    }

}
