using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _13_LeThiThuyHang_5701_WebsitebanhangcafeRuNam
{
    public partial class MasterSanPham : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DanhMuc();
            }
        }
        protected void DLDanhMuc_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "DanhMucClick")
            {
                string maLoai = e.CommandArgument.ToString();

                // Chuyển người dùng đến trang "SanPham.aspx" và truyền tham số "maloai" trong URL
                Response.Redirect("/SanPham.aspx?maloai=" + maLoai);
            }
        }

        CSDL kn = new CSDL();
        private void DanhMuc()
        {
            DataTable dt = kn.GetData("select * from LoaiSanPham");
            if (dt.Rows.Count > 0)
            {
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
    }
}