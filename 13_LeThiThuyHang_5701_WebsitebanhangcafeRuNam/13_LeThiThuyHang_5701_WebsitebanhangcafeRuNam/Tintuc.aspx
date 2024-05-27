<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Tintuc.aspx.cs" Inherits="_13_LeThiThuyHang_5701_WebsitebanhangcafeRuNam.Tintuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .image-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .image-container img {
            max-width: 30%;
            height: auto;
                margin-left: 20px; /* Lề trái */
            margin-right: 20px; /* Lề phải */
        }

        .tintuc {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .tintuc h2 {
            width: 30%;
            text-align: left;
            margin-left: 20px;
            margin-right: 20px;
            color: #fff0d7;
            font-family: 'Times New Roman', Times, serif; 
        }

         .image-tintuc {
             display: flex;
             justify-content: space-between;
             margin-bottom: 20px;
         }

         .image-tintuc img {
             max-width: 30%;
             height: auto;
                 margin-left: 20px; /* Lề trái */
             margin-right: 20px; /* Lề phải */
         }

           .tintuc1 {
              display: flex;
              justify-content: space-between;
              align-items: center;
          }

          .tintuc1 h2 {
              width: 30%;
              text-align: left;
              margin-left: 20px;
              margin-right: 20px;
              color: #fff0d7;
              font-family: 'Times New Roman', Times, serif; 
  }
    </style>

    <div class="image-container">
        <img src="Hinh/cafe-gourmand.jpg" />
        <img src="Hinh/PTAL.jpg" />
        <img src="Hinh/KV-tet.jpg" />
    </div>

    <div class="tintuc">
          <h2 style="font-size: 20px;">
            MENU THỨC UỐNG SÁNG TẠO RuNam Bistro – KHÚC BIẾN TẤU TỪ VỊ Càfê RuNam NGUYÊN BẢN
            <br />
      
        <p style="font-size: 18px;">
            RuNam Bistro vừa cho ra mắt thực đơn thức uống mới
        </p>
   </h2>
       
           <h2 style="font-size: 20px;">
           CÀFÊ RUNAM RA MẮT BỘ SƯU TẬP QUÀ TẶNG TẾT CANH TÝ –“ĐƠM HOA KẾT TRÁI” LƯU GIỮ TINH THUẦN NÉT VIỆT
        <br />
  
     <p style="font-size: 18px;">
         Càfê RuNam đã chính thức cho ra mắt Bộ sưu tập quà tặng “Đơm Hoa Kết Trái”
     </p>
           </h2>
      
        <h2  style="font-size: 20px;">
            SỰ KIỆN TRẢI NGHIỆM HƯƠNG VỊ CAFE TẠI ĐÀ NẴNG
            <br />
           
        <p style="font-size: 18px;">
             Nằm trong chuỗi sự kiện “Trải Nghiệm Hương Vị Cà Phê RuNam”
        </p>
             </h2>
       
    </div>

    <br />

      <div class="image-tintuc">
          <img src="Hinh/PTAL.jpg" />
          <img src="Hinh/tintuc_HaNoi.jpg" />
          <img src="Hinh/PTAL50.jpg" />

  </div>

  <div class="tintuc1">
        <h2 style="font-size: 20px;">
          MENU THỨC UỐNG SÁNG TẠO RuNam Bistro – KHÚC BIẾN TẤU TỪ VỊ Càfê RuNam NGUYÊN BẢN
          <br />
    
      <p style="font-size: 18px;">
          RuNam Bistro vừa cho ra mắt thực đơn thức uống mới
      </p>
 </h2>
     
         <h2 style="font-size: 20px;">
         SỰ KIỆN TRẢI NGHIỆM HƯƠNG VỊ CAFÉ TẠI HÀ NỘI
             <br />

   <p style="font-size: 18px;">
      Sau thành công của 2 buổi sự kiện "Trải nghiệm hương vị càfê RuNam"
   </p>
         </h2>
    
      <h2  style="font-size: 20px;">
         KHÁM PHÁ NHỮNG ĐỊA ĐIỂM THƯởNG THỨC CAFE TRỨNG
          <br />
         
      <p style="font-size: 18px;">
          Khám Phá Những Địa Điểm Thưởng Thức “Ẩm Thực” Cà Phê Trứng
      </p>
           </h2>
     
  </div>
</asp:Content>
