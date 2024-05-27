using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _13_LeThiThuyHang_5701_WebsitebanhangcafeRuNam
{
    public partial class Sanpham : System.Web.UI.Page
    {
        private readonly CSDL kn = new CSDL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["maloai"] != null)
                {
                    string maLoai = Request.QueryString["maloai"];
                    LoadProductsByCategory(maLoai);
                }
            }
        }

        private void LoadProductsByCategory(string maLoai)
        {
            // Thực hiện truy vấn cơ sở dữ liệu để lấy sản phẩm dựa trên mã loại sản phẩm
            DataTable productsTable = GetProductsByCategoryFromDatabase(maLoai);

            // Kiểm tra nếu DataTable không null và có dữ liệu trước khi gán dữ liệu
            if (productsTable != null && productsTable.Rows.Count > 0)
            {
                // Gán dữ liệu vào DataList1
                DataList1.DataSource = productsTable;
                DataList1.DataBind();
            }
        }


        private DataTable GetProductsByCategoryFromDatabase(string maLoai)
        {
            try
            {
                string query = "SELECT MaSanPham, TenSanPham, GiaBan, Hinhanh FROM SanPham WHERE MaLoaiSanPham = @maLoai";
                SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@maLoai", maLoai)
                };

                DataTable dataTable = kn.GetData(query, parameters);

                return dataTable;
            }
            catch (Exception ex)
            {
                // Xử lý ngoại lệ, ghi log, hoặc hiển thị thông báo lỗi
                throw;
            }
        }

        protected void DatMuaNgay_Click(object sender, EventArgs e)
        {
            // Thực hiện chuyển hướng tới trang "Datmuangay.aspx"
            Response.Redirect("Datmuangay.aspx");
        }

        protected void ThemVaoGioHang_Click(object sender, EventArgs e)
        {
            // Lấy mã sản phẩm từ nút được click
            Button btn = (Button)sender;
            DataListItem item = (DataListItem)btn.NamingContainer;

            // Kiểm tra null để tránh lỗi
            if (DataList1.DataKeys != null && DataList1.DataKeys.Count > item.ItemIndex)
            {
                string maSanPham = DataList1.DataKeys[item.ItemIndex].ToString();

                // Thực hiện thêm vào giỏ hàng ở đây, có thể là sử dụng Session, Database, hoặc các phương thức khác
                // Ví dụ sử dụng Session để lưu giỏ hàng (cần xử lý logic thêm sản phẩm vào giỏ hàng)
                if (Session["GioHang"] == null)
                {
                    Session["GioHang"] = new List<string>();
                }

                List<string> gioHang = (List<string>)Session["GioHang"];
                gioHang.Add(maSanPham);

                // Cập nhật Session
                Session["GioHang"] = gioHang;

                // Hiển thị thông báo
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Thêm vào giỏ hàng thành công');", true);
            }
        }
    }
}
