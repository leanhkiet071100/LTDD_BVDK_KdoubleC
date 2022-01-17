class PostObject {
  final String Id_Baiviet;
  final String Noidung;
  final String Luotthich;
  final String Ten_Hinhanh;
  final String Hoten_Nguoidung;
  final String Ten_Ddanh;

  PostObject(this.Id_Baiviet, this.Noidung, this.Luotthich, this.Ten_Hinhanh,
      this.Hoten_Nguoidung, this.Ten_Ddanh);

  PostObject.fromJson(Map<String, dynamic> res)
      : Id_Baiviet = res["Id_Baiviet"],
        Noidung = res["Noidung"],
        Luotthich = res["Luotthich"],
        Ten_Hinhanh = res["Ten_Hinhanh"],
        Hoten_Nguoidung = res["Hoten_Nguoidung"],
        Ten_Ddanh = res["Ten_Ddanh"];
}
