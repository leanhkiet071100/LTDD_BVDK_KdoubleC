class AccountObject {
  final String Id_Nguoidung;
  final String Id_Ddanh;
  final String Hoten_Nguoidung;
  final String Email;
  final String Sodienthoai;
  final String Taikhoan;
  final String Matkhau;

  AccountObject(this.Id_Nguoidung, this.Id_Ddanh, this.Hoten_Nguoidung,
      this.Email, this.Sodienthoai, this.Taikhoan, this.Matkhau);

  AccountObject.fromJson(Map<String, dynamic> res)
      : Id_Nguoidung = res['Id_Nguoidung'],
        Id_Ddanh = res['Id_Ddanh'],
        Hoten_Nguoidung = res['Hoten_Nguoidung'],
        Email = res['Email'],
        Sodienthoai = res['Sodienthoai'],
        Taikhoan = res['Taikhoan'],
        Matkhau = res['Matkhau'];
}
