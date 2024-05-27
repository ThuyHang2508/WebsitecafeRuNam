using System;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;

namespace _13_LeThiThuyHang_5701_WebsitebanhangcafeRuNam
{
    public partial class Taikhoan : Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Mã xử lý khi trang được tải lên
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // Thực hiện xác thực tài khoản từ cơ sở dữ liệu
            int roleId = AuthenticateUser(username, password);
            if (roleId > 0)
            {
                // Chuyển hướng dựa trên mã chức vụ
                RedirectBasedOnRoleId(roleId);
            }
            else
            {
                // Đăng nhập không thành công, hiển thị thông báo lỗi
                lblMessage.Text = "Tài khoản hoặc mật khẩu không đúng.";
            }
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            // Chuyển hướng đến trang Dangky.aspx
            Response.Redirect("Dangky.aspx");
        }


        private int AuthenticateUser(string username, string password)
        {
            try
            {
                // Kết nối đến cơ sở dữ liệu
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // Truy vấn kiểm tra tên đăng nhập, mật khẩu và lấy mã chức vụ
                    string query = "SELECT RoleId FROM Users WHERE Username = @Username AND PasswordHash = @PasswordHash";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Sử dụng Parameterized Queries để tránh SQL Injection
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@PasswordHash", GetPasswordHash(password));

                        // Sử dụng ExecuteScalar để lấy một giá trị từ cột đầu tiên của dòng kết quả
                        object result = command.ExecuteScalar();

                        // Nếu có kết quả, trả về mã chức vụ, ngược lại trả về 0
                        return result != null ? Convert.ToInt32(result) : 0;
                    }
                }
            }
            catch (Exception ex)
            {
                // Xử lý ngoại lệ (bạn có thể lưu lại hoặc hiển thị một thông báo lỗi)
                lblMessage.Text = "Error: " + ex.Message;
                return 0;
            }
        }

        private string GetPasswordHash(string password)
        {
            // Đây là nơi bạn nên triển khai mã hóa mật khẩu, ví dụ: sử dụng HMACSHA256
            // Để đơn giản, ở đây chỉ là sử dụng mã hóa cơ bản, bạn cần cải thiện nó cho môi trường thực tế
            using (var sha256 = System.Security.Cryptography.SHA256.Create())
            {
                var hashedBytes = sha256.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                return BitConverter.ToString(hashedBytes).Replace("-", "").ToLower();
            }
        }

        private void RedirectBasedOnRoleId(int roleId)
        {
            // Chuyển hướng dựa trên mã chức vụ
            switch (roleId)
            {
                case 1:
                    Response.Redirect("Quanly.aspx");
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                    Response.Redirect("TrangChu.aspx");
                    break;
                // Các trường hợp khác nếu có
                default:
                    // Mặc định chuyển hướng đến trang chính (hoặc trang thông báo lỗi)
                    Response.Redirect("TrangChinh.aspx");
                    break;
            }
        }
    }
}
