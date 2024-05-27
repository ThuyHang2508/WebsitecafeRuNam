using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _13_LeThiThuyHang_5701_WebsitebanhangcafeRuNam
{
    public partial class Datmuangay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Xử lý khi nút được nhấn
            string hoTen = txtHoTen.Text;
            string diaChi = txtDiaChi.Text;
            string soDienThoai = txtSoDienThoai.Text;
            string email = txtEmail.Text;

            // Thực hiện xử lý dữ liệu hoặc lưu vào cơ sở dữ liệu
            // Ví dụ: lblMessage.Text = $"Đã nhận thông tin từ {hoTen} tại {diaChi}";
            lblMessage.Text = "Đã đặt hàng thành công!";
        }
    }
}