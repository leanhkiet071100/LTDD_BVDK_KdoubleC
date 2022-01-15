class PostObject {
  final String Id_Baiviet;
  final String Id_Nguoidung;
  final String Noidung;
  final String Luotthich;

  PostObject(this.Id_Baiviet, this.Id_Nguoidung, this.Noidung, this.Luotthich);

  PostObject.fromJson(Map<String, dynamic> res)
      : Id_Baiviet = res["Id_Baiviet"],
        Id_Nguoidung = res["Id_Nguoidung"],
        Noidung = res["Noidung"],
        Luotthich = res["Luotthich"];
}
