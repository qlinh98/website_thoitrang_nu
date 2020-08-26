# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Danhmuc.create(tendanhmuc: "Áo") #1
Danhmuc.create(tendanhmuc: "Quần") #2
Danhmuc.create(tendanhmuc: "Giày") #3
Danhmuc.create(tendanhmuc: "Túi xách") #4

Loaisanpham.create(tenloai: "Áo sơ mi", danhmuc_id: 1) #1
Loaisanpham.create(tenloai: "Quần màu trơn", danhmuc_id: 2) #2
Loaisanpham.create(tenloai: "Giày thể thao", danhmuc_id: 3) #3
Loaisanpham.create(tenloai: "Túi xách cá xấu", danhmuc_id: 4) #4
Loaisanpham.create(tenloai: "Áo thun", danhmuc_id: 1) #5
Loaisanpham.create(tenloai: "Quần short", danhmuc_id: 2) #6
Loaisanpham.create(tenloai: "Giày gót", danhmuc_id: 3) #7
Loaisanpham.create(tenloai: "Túi xách xù", danhmuc_id: 4) #8
Loaisanpham.create(tenloai: "Quần thể thao", danhmuc_id: 2) #9

Thuonghieu.create(tenthuonghieu: "Polo") #1
Thuonghieu.create(tenthuonghieu: "Delight") #2
Thuonghieu.create(tenthuonghieu: "Elise") #3
Thuonghieu.create(tenthuonghieu: "Boran") #4
Thuonghieu.create(tenthuonghieu: "Charles&keith") #5
Thuonghieu.create(tenthuonghieu: "Shein") #6
Thuonghieu.create(tenthuonghieu: "Boho") #7

Sanpham.create(tensanpham: "Áo sơ mi Viên lá sen Họa tiết", loaisanpham_id: 1, thuonghieu_id: 7, mota: "
  Phong cách:	Boho
  Kiểu mẫu:	Họa tiết hoa
  Viền :	Cổ v 
  Chiều dài:	Thường xuyên
  Kiểu:	Xoay eo
  Chi tiết:	Viên lá sen, Nút phía trước
  Chiều dài tay:	Ngắn tay
  Loại tay áo:	Tay thường
  Thành phần:	92% Polyester, 8% Spandex
  Vật liệu:	Polyester
  Sợi vải:	Không căng
  Mỏng:	Không
  Hình hem:	Bùng nổ
  Loại Phù hợp:	Phù hợp thường
  Loại túi váy:	Áo chui") #1
Sanpham.create(tensanpham: "Quần màu trơn thể thao", loaisanpham_id: 2, thuonghieu_id: 4, mota: "
  Phong cách:	Thể thao
  Kiểu mẫu:	màu trơn
  Chiều dài quần:	Dài
  Kiểu:	Quần thể thao
  Mùa:	TẤT CẢ
  Thành phần:	35% Bông, 65% Polyester
  Vật liệu:	Polyester
  Sợi vải:	Không căng
  Mỏng:	Không
  Loại Phù hợp:	Thường xuyên
  Loại eo:	Vòng eo cao
  Loại đóng kín:	Thắt lưng co dãn") #2
Sanpham.create(tensanpham: "Giày thể thao Lá thư", loaisanpham_id: 3, thuonghieu_id: 3, mota: "
  Phong cách:	Thể thao
  Kiểu mẫu:	Lá thư
  Kiểu:	Giày thể thao Chunky
  Loại dây đeo:	Ren lên
  Gót:	Bằng phẳng
  Kích thước phù hợp:	Đúng với kích thước
  Vật liệu Lining:	Lưới thép
  Vật liệu đế giày:	Lưới thép
  Vật liệu đế ngoài:	Cao su
  Vật liệu phía trên:	Lưới thép, chất liệu da PU") #3

Sanpham.create(tensanpham: "Túi xách cá xấu cà phê", loaisanpham_id: 4, thuonghieu_id: 5, mota: "
  Phong cách:	Đi ra ngoài
  Vật liệu:	chất liệu da PU
  Thành phần:	100% chất liệu da PU
  Loại dây đeo:	Tay cầm Top
  Kích thước túi:	Nhỏ bé
  Kiểu mẫu:	Cá sấu") #4

Sanpham.create(tensanpham: "Áo thun Gân đan màu trơn", loaisanpham_id: 5, thuonghieu_id: 6, mota: "
  Phong cách: Giải trí
  Kiểu mẫu:	màu trơn
  Viền :	Cổ v, Vòng cổ
  Chiều dài:	Mùa vụ
  Chi tiết:	Gân đan
  Chiều dài tay:	Ngắn tay
  Loại tay áo:	Tay thường
  Mùa:	Mùa Hè
  Thành phần:	32% Bông, 60% Polyester, 8% Spandex
  Vật liệu:	Polyester
  Sợi vải:	Căng nhẹ
  Mỏng:	Không
  Loại Phù hợp:	Phù hợp thường
  Loại túi váy:	Áo chui") #5

Sanpham.create(tensanpham: "Quần short Chia màu trơn", loaisanpham_id: 6, thuonghieu_id: 7, mota: "
  Phong cách:	Boho
  Kiểu mẫu:	màu trơn
  Chi tiết:	Chia, Bất đối xứng
  Kiểu:	Váy quần
  Mùa:	Mùa Hè
  Thành phần:	95% Polyester, 5% Spandex
  Vật liệu:	Polyester
  Sợi vải:	Căng nhẹ
  Mỏng:	Không
  Loại Phù hợp:	Phù hợp thường
  Loại eo:	giữa eo
  Loại đóng kín:	Thắt lưng co dãn") #6

Sanpham.create(tensanpham: "Giày gót màu trơn", loaisanpham_id: 7, thuonghieu_id: 5, mota: "
  Phong cách:	Văn phòng
  Kiểu mẫu:	màu trơn
  Kiểu:	dép quai hậu
  Loại dây đeo:	dép quai hậu
  Ngón chân:	Ngón chân vuông
  Gót:	Dày
  Chiều cao giày gót :	Trung gót
  Kích thước phù hợp:	Đúng với kích thước
  Vật liệu đế giày:	chất liệu da PU
  Vật liệu đế ngoài:	Cao su
  Vật liệu phía trên:	chất liệu da PU") #7

Sanpham.create(tensanpham: "Túi xách Xù màu trơn", loaisanpham_id: 8, thuonghieu_id: 3, mota: "
  Chi tiết:	Xù
  Trường hợp:	Đi ra ngoài
  Vật liệu:	chất liệu da PU
  Kiểu:	Túi Ruched
  Thành phần:	100% chất liệu da PU
  Nút từ:	Không
  Loại dây đeo:	Tay cầm Top
  Kích thước túi:	Trung bình
  Kiểu mẫu:	màu trơn") #8

Sanpham.create(tensanpham: "Áo sơ mi Trọn gói Hình học Casual", loaisanpham_id: 1, thuonghieu_id: 4, mota: "
  Phong cách:	Giải trí
  Kiểu mẫu:	Hình học
  Viền :	Vòng cổ
  Chiều dài:	Mùa vụ
  Chi tiết:	Bất đối xứng, xoắn lại
  Chiều dài tay:	Ngắn tay
  Loại tay áo:	Tay thường
  Mùa:	Mùa Hè
  Thành phần:	95% Polyester, 5% Spandex
  Vật liệu:	Polyester
  Sợi vải:	Căng nhẹ
  Hình hem:	Bất đối xứng
  Loại Phù hợp:	Thon gọn
  Loại túi váy:	Áo chui") #9

Sanpham.create(tensanpham: "Quần short Thắt nút màu trơn Giải trí", loaisanpham_id: 6, thuonghieu_id: 5, mota: "
  Phong cách:	Giải trí
  Kiểu mẫu:	màu trơn
  Chi tiết:	Thắt nút
  Kiểu:	Quần short
  Mùa:	Mùa Hè
  Thành phần:	100% Polyester
  Vật liệu:	Polyester
  Sợi vải:	Căng nhẹ
  Mỏng:	Không
  Loại Phù hợp:	Phù hợp thường
  Loại eo:	giữa eo
  Loại đóng kín:	Thắt lưng co dãn") #10

Sanpham.create(tensanpham: "Giày thể thao màu trơn", loaisanpham_id: 3, thuonghieu_id: 5, mota: "
  Phong cách:	Trường học
  Kiểu mẫu:	màu trơn
  Kiểu:	tranh sơn dầu
  Loại dây đeo:	Ren lên
  Kích thước phù hợp:	Kích thước quá nhỏ
  Vật liệu đế giày:	Bông
  Vật liệu đế ngoài:	Cao su
  Vật liệu phía trên:	tranh sơn dầu") #11

Sanpham.create(tensanpham: "Áo thun Nút phía trước màu trơn", loaisanpham_id: 5, thuonghieu_id: 6, mota: "
  Phong cách:	Giải trí
  Kiểu mẫu:	màu trơn
  Viền :	Cổ v
  Chiều dài:	Mùa vụ
  Chi tiết:	Nút phía trước
  Chiều dài tay:	Tay áo dài
  Loại tay áo:	Tay thường
  Mùa:	Mùa Xuân/ Mùa Thu
  Thành phần:	97% Polyester, 3% Spandex
  Vật liệu:	Hỗn hợp bông
  Sợi vải:	Căng nhẹ
  Mỏng:	Không
  Loại Phù hợp:	Phù hợp thường") #12

Sanpham.create(tensanpham: "Túi xách Cá sấu", loaisanpham_id: 4, thuonghieu_id: 5, mota: "
  Phong cách:	Văn phòng
  Vật liệu:	chất liệu da PU
  Thành phần:	100% chất liệu da PU
  Loại dây đeo:	Đôi tay cầm
  Kích thước túi:	Trung bình
  Kiểu mẫu:	Cá sấu") #13

Sanpham.create(tensanpham: "Quần Thắt nút Slogan Thể thao", loaisanpham_id: 9, thuonghieu_id: 6, mota: "
  Phong cách:	Giải trí
  Kiểu mẫu:	Lá thư
  Chi tiết:	Thắt nút
  Chiều dài:	Dài
  Kiểu:	Quần thể thao
  Mùa:	TẤT CẢ
  Thành phần:	35% Bông, 65% Polyester
  Vật liệu:	Polyester
  Sợi vải:	Căng nhẹ
  Mỏng:	Không
  Loại Phù hợp:	Phù hợp thường
  Loại eo:	Vòng eo cao
  Loại đóng kín:	Thắt lưng co dãn
  Trang phục Aribian :	Vâng") #14

Sanpham.create(tensanpham: "Giày gót màu trơn", loaisanpham_id: 7, thuonghieu_id: 3, mota: "
  Phong cách:	Văn phòng
  Kiểu mẫu:	màu trơn
  Kiểu:	dép quai hậu
  Loại dây đeo:	dép quai hậu
  Ngón chân:	Ngón chân vuông
  Gót:	Dày
  Chiều cao giày gót :	Trung gót
  Kích thước phù hợp:	Đúng với kích thước
  Vật liệu đế giày:	chất liệu da PU
  Vật liệu đế ngoài:	Cao su
  Vật liệu phía trên:	chất liệu da PU") #15

Mausanpham.create(tenmau: "Đen", mamau: "#343a40") #1
Mausanpham.create(tenmau: "Trắng", mamau: "#fff") #2
Mausanpham.create(tenmau: "Xám", mamau: "#6c757d") #3
Mausanpham.create(tenmau: "Đỏ", mamau: "#dc3545") #4
Mausanpham.create(tenmau: "Vàng", mamau: "#ffc107") #5
Mausanpham.create(tenmau: "Xanh lá cây", mamau: "#28a745") #6
Mausanpham.create(tenmau: "Xanh dương", mamau: "#007bff") #7
Mausanpham.create(tenmau: "Hồng", mamau: "#e83e8c") #8
Mausanpham.create(tenmau: "Tím", mamau: "#6f42c1") #9
Mausanpham.create(tenmau: "Cam", mamau: "#FF8C00") #10
Mausanpham.create(tenmau: "Nâu", mamau: "#2B1B17") #11
Mausanpham.create(tenmau: "Đỏ sâu", mamau: "#660000") #12
Mausanpham.create(tenmau: "Hồng nhạt", mamau: "#FFEBCD") #13
Mausanpham.create(tenmau: "Khaki", mamau: "#FAF0E6") #14
Mausanpham.create(tenmau: "Xanh quân đội", mamau: "#006600") #15

Chitietsanpham.create(mausanpham_id: 5, sanpham_id: 1, giaban: 231000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/1/1.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/1/2.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/1/3.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/1/4.webp")))
Chitietsanpham.create(mausanpham_id: 6, sanpham_id: 1, giaban: 231000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/2/5.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/2/6.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/2/7.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/2/8.webp")))
Chitietsanpham.create(mausanpham_id: 8, sanpham_id: 1, giaban: 231000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/3/9.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/3/10.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/3/11.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/3/12.webp")))

Chitietsanpham.create(mausanpham_id: 3, sanpham_id: 2, giaban: 373000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/4/13.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/4/14.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/4/15.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/4/16.webp")))
Chitietsanpham.create(mausanpham_id: 1, sanpham_id: 2, giaban: 375000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/5/17.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/5/18.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/5/19.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/5/20.webp")))

Chitietsanpham.create(mausanpham_id: 10, sanpham_id: 3, giaban: 535000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/6/21.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/6/22.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/6/23.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/6/24.webp")))
Chitietsanpham.create(mausanpham_id: 8, sanpham_id: 3, giaban: 535000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/7/25.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/7/26.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/7/27.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/7/28.webp")))
Chitietsanpham.create(mausanpham_id: 6, sanpham_id: 3, giaban: 535000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/8/29.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/8/30.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/8/31.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/8/32.webp")))

Chitietsanpham.create(mausanpham_id: 11, sanpham_id: 4, giaban: 250000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/9/33.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/9/34.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/9/35.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/9/36.webp")))
Chitietsanpham.create(mausanpham_id: 4, sanpham_id: 4, giaban: 250000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/10/37.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/10/38.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/10/39.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/10/40.webp")))

Chitietsanpham.create(mausanpham_id: 4, sanpham_id: 5, giaban: 185000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/11/41.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/11/42.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/11/43.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/11/44.webp")))
Chitietsanpham.create(mausanpham_id: 9, sanpham_id: 5, giaban: 185000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/12/45.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/12/46.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/12/47.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/12/48.webp")))

Chitietsanpham.create(mausanpham_id: 2, sanpham_id: 6, giaban: 164000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/13/49.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/13/50.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/13/51.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/13/52.webp")))
Chitietsanpham.create(mausanpham_id: 12, sanpham_id: 6, giaban: 130000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/14/53.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/14/54.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/14/55.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/14/56.webp")))
Chitietsanpham.create(mausanpham_id: 5, sanpham_id: 6, giaban: 130000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/15/57.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/15/58.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/15/59.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/15/60.webp")))

Chitietsanpham.create(mausanpham_id: 2, sanpham_id: 7, giaban: 530000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/16/61.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/16/62.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/16/63.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/16/64.webp")))
Chitietsanpham.create(mausanpham_id: 13, sanpham_id: 7, giaban: 510000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/17/65.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/17/66.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/17/67.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/17/68.webp")))

Chitietsanpham.create(mausanpham_id: 2, sanpham_id: 8, giaban: 391000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/18/69.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/18/70.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/18/71.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/18/72.webp")))
Chitietsanpham.create(mausanpham_id: 14, sanpham_id: 8, giaban: 390000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/19/73.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/19/74.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/19/75.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/19/76.webp")))

Chitietsanpham.create(mausanpham_id: 1, sanpham_id: 9, giaban: 160000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/20/77.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/20/78.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/20/79.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/20/80.webp")))
Chitietsanpham.create(mausanpham_id: 2, sanpham_id: 9, giaban: 140000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/21/81.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/21/82.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/21/83.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/21/84.webp")))

Chitietsanpham.create(mausanpham_id: 3, sanpham_id: 10, giaban: 140000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/22/85.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/22/86.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/22/87.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/22/88.webp")))
Chitietsanpham.create(mausanpham_id: 14, sanpham_id: 10, giaban: 140000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/23/89.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/23/90.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/23/91.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/23/92.webp")))

Chitietsanpham.create(mausanpham_id: 1, sanpham_id: 11, giaban: 490000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/24/93.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/24/94.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/24/95.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/24/96.webp")))
Chitietsanpham.create(mausanpham_id: 9, sanpham_id: 11, giaban: 490000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/25/97.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/25/98.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/25/99.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/25/100.webp")))

Chitietsanpham.create(mausanpham_id: 2, sanpham_id: 12, giaban: 231000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/26/101.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/26/102.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/26/103.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/26/104.webp")))
Chitietsanpham.create(mausanpham_id: 14, sanpham_id: 12, giaban: 232000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/27/105.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/27/106.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/27/107.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/27/108.webp")))

Chitietsanpham.create(mausanpham_id: 1, sanpham_id: 13, giaban: 582000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/28/109.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/28/110.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/28/111.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/28/112.webp")))
Chitietsanpham.create(mausanpham_id: 5, sanpham_id: 13, giaban: 582000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/29/113.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/29/114.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/29/115.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/29/116.webp")))

Chitietsanpham.create(mausanpham_id: 15, sanpham_id: 14, giaban: 350000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/30/117.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/30/118.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/30/119.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/30/120.webp")))
Chitietsanpham.create(mausanpham_id: 1, sanpham_id: 14, giaban: 370000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/31/121.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/31/122.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/31/123.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/31/124.webp")))

Chitietsanpham.create(mausanpham_id: 1, sanpham_id: 15, giaban: 533000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/32/125.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/32/126.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/32/127.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/32/128.webp")))
Chitietsanpham.create(mausanpham_id: 2, sanpham_id: 15, giaban: 533000, hinh1: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh1/33/129.webp")), hinh2: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh2/33/130.webp")), hinh3: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh3/33/131.webp")), hinh4: File.open(File.join(Rails.root, "/public/uploads/chitietsanpham/hinh4/33/132.webp")))

Sizesanpham.create!(tensize: "XS") #1
Sizesanpham.create!(tensize: "S") #2
Sizesanpham.create!(tensize: "M") #3
Sizesanpham.create!(tensize: "L") #4
Sizesanpham.create!(tensize: "XL") #5
Sizesanpham.create!(tensize: "EUR35") #6
Sizesanpham.create!(tensize: "EUR36") #7
Sizesanpham.create!(tensize: "EUR37") #8
Sizesanpham.create!(tensize: "EUR38") #9
Sizesanpham.create!(tensize: "EUR39") #10
Sizesanpham.create!(tensize: "EUR40") #11
Sizesanpham.create!(tensize: "EUR41") #12
Sizesanpham.create!(tensize: "EUR42") #13
Sizesanpham.create!(tensize: "EUR43") #14

Chitietsize.create!(chitietsanpham_id: 1, sizesanpham_id: 1, soluongton: 100)
Chitietsize.create!(chitietsanpham_id: 1, sizesanpham_id: 2, soluongton: 105)
Chitietsize.create!(chitietsanpham_id: 1, sizesanpham_id: 3, soluongton: 150)
Chitietsize.create!(chitietsanpham_id: 1, sizesanpham_id: 4, soluongton: 110)

Chitietsize.create!(chitietsanpham_id: 2, sizesanpham_id: 1, soluongton: 250)
Chitietsize.create!(chitietsanpham_id: 2, sizesanpham_id: 2, soluongton: 210)
Chitietsize.create!(chitietsanpham_id: 2, sizesanpham_id: 3, soluongton: 150)
Chitietsize.create!(chitietsanpham_id: 2, sizesanpham_id: 4, soluongton: 300)
Chitietsize.create!(chitietsanpham_id: 2, sizesanpham_id: 5, soluongton: 110)

Chitietsize.create!(chitietsanpham_id: 3, sizesanpham_id: 1, soluongton: 150)
Chitietsize.create!(chitietsanpham_id: 3, sizesanpham_id: 2, soluongton: 110)
Chitietsize.create!(chitietsanpham_id: 3, sizesanpham_id: 3, soluongton: 250)
Chitietsize.create!(chitietsanpham_id: 3, sizesanpham_id: 4, soluongton: 200)
Chitietsize.create!(chitietsanpham_id: 3, sizesanpham_id: 5, soluongton: 50)

Chitietsize.create!(chitietsanpham_id: 4, sizesanpham_id: 1, soluongton: 234)
Chitietsize.create!(chitietsanpham_id: 4, sizesanpham_id: 2, soluongton: 116)
Chitietsize.create!(chitietsanpham_id: 4, sizesanpham_id: 3, soluongton: 215)
Chitietsize.create!(chitietsanpham_id: 4, sizesanpham_id: 4, soluongton: 90)
Chitietsize.create!(chitietsanpham_id: 4, sizesanpham_id: 5, soluongton: 22)

Chitietsize.create!(chitietsanpham_id: 5, sizesanpham_id: 1, soluongton: 88)
Chitietsize.create!(chitietsanpham_id: 5, sizesanpham_id: 2, soluongton: 156)
Chitietsize.create!(chitietsanpham_id: 5, sizesanpham_id: 3, soluongton: 150)
Chitietsize.create!(chitietsanpham_id: 5, sizesanpham_id: 5, soluongton: 200)

Chitietsize.create!(chitietsanpham_id: 6, sizesanpham_id: 6, soluongton: 88)
Chitietsize.create!(chitietsanpham_id: 6, sizesanpham_id: 7, soluongton: 156)
Chitietsize.create!(chitietsanpham_id: 6, sizesanpham_id: 8, soluongton: 150)
Chitietsize.create!(chitietsanpham_id: 6, sizesanpham_id: 9, soluongton: 22)
Chitietsize.create!(chitietsanpham_id: 6, sizesanpham_id: 10, soluongton: 200)
Chitietsize.create!(chitietsanpham_id: 6, sizesanpham_id: 11, soluongton: 188)
Chitietsize.create!(chitietsanpham_id: 6, sizesanpham_id: 12, soluongton: 320)
Chitietsize.create!(chitietsanpham_id: 6, sizesanpham_id: 13, soluongton: 500)
Chitietsize.create!(chitietsanpham_id: 6, sizesanpham_id: 14, soluongton: 451)

Chitietsize.create!(chitietsanpham_id: 7, sizesanpham_id: 6, soluongton: 123)
Chitietsize.create!(chitietsanpham_id: 7, sizesanpham_id: 7, soluongton: 158)
Chitietsize.create!(chitietsanpham_id: 7, sizesanpham_id: 8, soluongton: 120)
Chitietsize.create!(chitietsanpham_id: 7, sizesanpham_id: 9, soluongton: 56)
Chitietsize.create!(chitietsanpham_id: 7, sizesanpham_id: 11, soluongton: 210)
Chitietsize.create!(chitietsanpham_id: 7, sizesanpham_id: 12, soluongton: 224)
Chitietsize.create!(chitietsanpham_id: 7, sizesanpham_id: 13, soluongton: 256)
Chitietsize.create!(chitietsanpham_id: 7, sizesanpham_id: 14, soluongton: 125)

Chitietsize.create!(chitietsanpham_id: 8, sizesanpham_id: 6, soluongton: 500)
Chitietsize.create!(chitietsanpham_id: 8, sizesanpham_id: 7, soluongton: 250)
Chitietsize.create!(chitietsanpham_id: 8, sizesanpham_id: 8, soluongton: 150)
Chitietsize.create!(chitietsanpham_id: 8, sizesanpham_id: 9, soluongton: 100)
Chitietsize.create!(chitietsanpham_id: 8, sizesanpham_id: 10, soluongton: 200)
Chitietsize.create!(chitietsanpham_id: 8, sizesanpham_id: 11, soluongton: 300)
Chitietsize.create!(chitietsanpham_id: 8, sizesanpham_id: 14, soluongton: 200)

Chitietsize.create!(chitietsanpham_id: 9, sizesanpham_id: 2, soluongton: 200)
Chitietsize.create!(chitietsanpham_id: 10, sizesanpham_id: 2, soluongton: 200)

Chitietsize.create!(chitietsanpham_id: 11, sizesanpham_id: 1, soluongton: 05)
Chitietsize.create!(chitietsanpham_id: 11, sizesanpham_id: 2, soluongton: 50)
Chitietsize.create!(chitietsanpham_id: 11, sizesanpham_id: 3, soluongton: 150)
Chitietsize.create!(chitietsanpham_id: 11, sizesanpham_id: 4, soluongton: 250)

Chitietsize.create!(chitietsanpham_id: 12, sizesanpham_id: 1, soluongton: 05)
Chitietsize.create!(chitietsanpham_id: 12, sizesanpham_id: 2, soluongton: 86)
Chitietsize.create!(chitietsanpham_id: 12, sizesanpham_id: 3, soluongton: 245)
# Chitietsize.create!(chitietsanpham_id: 12, sizesanpham_id: 4, soluongton: 0)

Chitietsize.create!(chitietsanpham_id: 13, sizesanpham_id: 1, soluongton: 240)
Chitietsize.create!(chitietsanpham_id: 13, sizesanpham_id: 2, soluongton: 247)
Chitietsize.create!(chitietsanpham_id: 13, sizesanpham_id: 3, soluongton: 156)
Chitietsize.create!(chitietsanpham_id: 13, sizesanpham_id: 4, soluongton: 245)

Chitietsize.create!(chitietsanpham_id: 14, sizesanpham_id: 1, soluongton: 245)
Chitietsize.create!(chitietsanpham_id: 14, sizesanpham_id: 2, soluongton: 2)
Chitietsize.create!(chitietsanpham_id: 14, sizesanpham_id: 3, soluongton: 6)
Chitietsize.create!(chitietsanpham_id: 14, sizesanpham_id: 4, soluongton: 245)

Chitietsize.create!(chitietsanpham_id: 15, sizesanpham_id: 1, soluongton: 200)
Chitietsize.create!(chitietsanpham_id: 15, sizesanpham_id: 2, soluongton: 100)
Chitietsize.create!(chitietsanpham_id: 15, sizesanpham_id: 3, soluongton: 240)

Chitietsize.create!(chitietsanpham_id: 16, sizesanpham_id: 6, soluongton: 645)
Chitietsize.create!(chitietsanpham_id: 16, sizesanpham_id: 7, soluongton: 545)
Chitietsize.create!(chitietsanpham_id: 16, sizesanpham_id: 8, soluongton: 45)
Chitietsize.create!(chitietsanpham_id: 16, sizesanpham_id: 9, soluongton: 25)
Chitietsize.create!(chitietsanpham_id: 16, sizesanpham_id: 10, soluongton: 145)

Chitietsize.create!(chitietsanpham_id: 17, sizesanpham_id: 6, soluongton: 245)
Chitietsize.create!(chitietsanpham_id: 17, sizesanpham_id: 7, soluongton: 50)
Chitietsize.create!(chitietsanpham_id: 17, sizesanpham_id: 8, soluongton: 45)
Chitietsize.create!(chitietsanpham_id: 17, sizesanpham_id: 11, soluongton: 145)

Chitietsize.create!(chitietsanpham_id: 18, sizesanpham_id: 2, soluongton: 50)

Chitietsize.create!(chitietsanpham_id: 19, sizesanpham_id: 2, soluongton: 40)

Chitietsize.create!(chitietsanpham_id: 20, sizesanpham_id: 1, soluongton: 50)
Chitietsize.create!(chitietsanpham_id: 20, sizesanpham_id: 2, soluongton: 60)
# Chitietsize.create!(chitietsanpham_id: 19, sizesanpham_id: 3, soluongton: 40)
Chitietsize.create!(chitietsanpham_id: 20, sizesanpham_id: 4, soluongton: 80)

Chitietsize.create!(chitietsanpham_id: 21, sizesanpham_id: 1, soluongton: 20)
Chitietsize.create!(chitietsanpham_id: 21, sizesanpham_id: 2, soluongton: 10)
Chitietsize.create!(chitietsanpham_id: 21, sizesanpham_id: 3, soluongton: 5)
# Chitietsize.create!(chitietsanpham_id: 19, sizesanpham_id: 2, soluongton: 40)

Chitietsize.create!(chitietsanpham_id: 22, sizesanpham_id: 2, soluongton: 50)
Chitietsize.create!(chitietsanpham_id: 22, sizesanpham_id: 3, soluongton: 60)
Chitietsize.create!(chitietsanpham_id: 22, sizesanpham_id: 4, soluongton: 55)
Chitietsize.create!(chitietsanpham_id: 22, sizesanpham_id: 5, soluongton: 100)

Chitietsize.create!(chitietsanpham_id: 23, sizesanpham_id: 2, soluongton: 45)
Chitietsize.create!(chitietsanpham_id: 23, sizesanpham_id: 3, soluongton: 85)
Chitietsize.create!(chitietsanpham_id: 23, sizesanpham_id: 4, soluongton: 60)
Chitietsize.create!(chitietsanpham_id: 23, sizesanpham_id: 5, soluongton: 90)

Chitietsize.create!(chitietsanpham_id: 24, sizesanpham_id: 6, soluongton: 190)
Chitietsize.create!(chitietsanpham_id: 24, sizesanpham_id: 7, soluongton: 95)
Chitietsize.create!(chitietsanpham_id: 24, sizesanpham_id: 8, soluongton: 40)
Chitietsize.create!(chitietsanpham_id: 24, sizesanpham_id: 9, soluongton: 50)
# Chitietsize.create!(chitietsanpham_id: 23, sizesanpham_id: 5, soluongton: 90)
Chitietsize.create!(chitietsanpham_id: 24, sizesanpham_id: 11, soluongton: 20)

Chitietsize.create!(chitietsanpham_id: 25, sizesanpham_id: 6, soluongton: 9)
Chitietsize.create!(chitietsanpham_id: 25, sizesanpham_id: 7, soluongton: 60)
Chitietsize.create!(chitietsanpham_id: 25, sizesanpham_id: 8, soluongton: 70)
Chitietsize.create!(chitietsanpham_id: 25, sizesanpham_id: 9, soluongton: 80)
Chitietsize.create!(chitietsanpham_id: 25, sizesanpham_id: 10, soluongton: 50)
Chitietsize.create!(chitietsanpham_id: 25, sizesanpham_id: 11, soluongton: 10)

Chitietsize.create!(chitietsanpham_id: 26, sizesanpham_id: 2, soluongton: 70)
Chitietsize.create!(chitietsanpham_id: 26, sizesanpham_id: 3, soluongton: 40)
Chitietsize.create!(chitietsanpham_id: 26, sizesanpham_id: 4, soluongton: 50)
Chitietsize.create!(chitietsanpham_id: 26, sizesanpham_id: 5, soluongton: 90)

Chitietsize.create!(chitietsanpham_id: 27, sizesanpham_id: 2, soluongton: 50)
Chitietsize.create!(chitietsanpham_id: 27, sizesanpham_id: 3, soluongton: 30)
Chitietsize.create!(chitietsanpham_id: 27, sizesanpham_id: 4, soluongton: 120)
Chitietsize.create!(chitietsanpham_id: 27, sizesanpham_id: 5, soluongton: 20)

Chitietsize.create!(chitietsanpham_id: 28, sizesanpham_id: 2, soluongton: 20)

Chitietsize.create!(chitietsanpham_id: 29, sizesanpham_id: 2, soluongton: 40)

Chitietsize.create!(chitietsanpham_id: 30, sizesanpham_id: 1, soluongton: 60)
Chitietsize.create!(chitietsanpham_id: 30, sizesanpham_id: 2, soluongton: 80)
Chitietsize.create!(chitietsanpham_id: 30, sizesanpham_id: 3, soluongton: 10)
Chitietsize.create!(chitietsanpham_id: 30, sizesanpham_id: 4, soluongton: 0)
Chitietsize.create!(chitietsanpham_id: 30, sizesanpham_id: 5, soluongton: 65)

Chitietsize.create!(chitietsanpham_id: 31, sizesanpham_id: 1, soluongton: 10)
Chitietsize.create!(chitietsanpham_id: 31, sizesanpham_id: 2, soluongton: 50)
Chitietsize.create!(chitietsanpham_id: 31, sizesanpham_id: 3, soluongton: 70)
Chitietsize.create!(chitietsanpham_id: 31, sizesanpham_id: 4, soluongton: 30)
# Chitietsize.create!(chitietsanpham_id: 31, sizesanpham_id: 5, soluongton: 20)

Chitietsize.create!(chitietsanpham_id: 32, sizesanpham_id: 6, soluongton: 50)
Chitietsize.create!(chitietsanpham_id: 32, sizesanpham_id: 7, soluongton: 60)
Chitietsize.create!(chitietsanpham_id: 32, sizesanpham_id: 8, soluongton: 10)
Chitietsize.create!(chitietsanpham_id: 32, sizesanpham_id: 9, soluongton: 20)
Chitietsize.create!(chitietsanpham_id: 32, sizesanpham_id: 10, soluongton: 60)
Chitietsize.create!(chitietsanpham_id: 32, sizesanpham_id: 11, soluongton: 90)

Chitietsize.create!(chitietsanpham_id: 33, sizesanpham_id: 6, soluongton: 80)
Chitietsize.create!(chitietsanpham_id: 33, sizesanpham_id: 7, soluongton: 50)
Chitietsize.create!(chitietsanpham_id: 33, sizesanpham_id: 8, soluongton: 20)
Chitietsize.create!(chitietsanpham_id: 33, sizesanpham_id: 9, soluongton: 10)
Chitietsize.create!(chitietsanpham_id: 33, sizesanpham_id: 10, soluongton: 60)
Chitietsize.create!(chitietsanpham_id: 33, sizesanpham_id: 11, soluongton: 70)

User.create!(hoten: "Nguyen Van Nam", email: "namnv@gmail.com", password: "123qweasd")
User.create!(hoten: "Nguyễn Quang Linh", email: "qlinh1080@gmail.com", password: "123456")
User.create!(email: "lam@gmail.com", password: "123456")

AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password", permission: 1) if Rails.env.development?
AdminUser.create!(email: "linh@gmail.com", password: "123456", password_confirmation: "123456", permission: 0) if Rails.env.development?
