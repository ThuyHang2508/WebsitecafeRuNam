using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace _13_LeThiThuyHang_5701_WebsitebanhangcafeRuNam
{
    public partial class Giohang : Page
    {
        private readonly CSDL kn = new CSDL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HienThiGioHang();
            }
        }

        private void HienThiGioHang()
        {
            List<string> gioHang = Session["GioHang"] as List<string>;

            if (gioHang != null && gioHang.Count > 0)
            {
                // Đọc thông tin sản phẩm từ Database hoặc nguồn dữ liệu khác
                List<SanPham> danhSachSanPham = LayDanhSachSanPham(gioHang);

                rptGioHang.DataSource = danhSachSanPham;
                rptGioHang.DataBind();
            }
            else
            {
                // Hiển thị thông báo khi giỏ hàng trống
                rptGioHang.Visible = false;

                if (litThongBao != null)
                {
                    litThongBao.Visible = true;
                    litThongBao.Text = "Giỏ hàng của bạn đang trống.";
                }
            }
        }

        private List<SanPham> LayDanhSachSanPham(List<string> maSanPhamList)
        {
            List<SanPham> danhSachSanPham = new List<SanPham>();

            foreach (string maSanPham in maSanPhamList)
            {
                // Thực hiện truy vấn Database để lấy thông tin sản phẩm theo mã sản phẩm
                string query = "SELECT MaSanPham, TenSanPham, GiaBan, Hinhanh FROM SanPham WHERE MaSanPham = @maSanPham";
                SqlParameter[] parameters = { new SqlParameter("@maSanPham", maSanPham) };

                DataTable dataTable = kn.GetData(query, parameters);

                // Kiểm tra xem có dữ liệu trả về không
                if (dataTable.Rows.Count > 0)
                {
                    DataRow row = dataTable.Rows[0];

                    // Đọc thông tin từ dòng dữ liệu
                    SanPham sanPham = new SanPham
                    {
                        MaSanPham = row["MaSanPham"].ToString(),
                        TenSanPham = row["TenSanPham"].ToString(),
                        GiaBan = Convert.ToDecimal(row["GiaBan"]),
                        Hinhanh = row["Hinhanh"].ToString()
                    };

                    danhSachSanPham.Add(sanPham);
                }
            }

            return danhSachSanPham;
        }

        protected string GetImageUrl(object maSanPham)
        {
            // Thực hiện xử lý để lấy đường dẫn ảnh của sản phẩm từ Database hoặc nguồn dữ liệu khác
            // ...

            // Ở đây, trả về một đường dẫn ảnh giả định để minh họa
            return "ImageUrl";
        }

        public class SanPham
        {
            public string MaSanPham { get; set; }
            public string TenSanPham { get; set; }
            public decimal GiaBan { get; set; }
            public string Hinhanh { get; set; }
        }
    }
}
