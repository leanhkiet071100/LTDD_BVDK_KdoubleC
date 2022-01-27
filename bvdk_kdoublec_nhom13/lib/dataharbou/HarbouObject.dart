class HarbouObject {
  final String Id_Noiluutru;
  final String Id_Ddanh;
  final String Ten_Noiluutru;
  final String Hinh_Noiluutru;
  final String Diachi_Noiluutru;
  final String SDT_Noiluutru;

  HarbouObject(this.Id_Noiluutru, this.Id_Ddanh, this.Ten_Noiluutru,
      this.Hinh_Noiluutru, this.Diachi_Noiluutru, this.SDT_Noiluutru);
  HarbouObject.fromJson(Map<String, dynamic> res)
      : Id_Noiluutru = res["Id_Noiluutru"],
        Id_Ddanh = res["Id_Ddanh"],
        Ten_Noiluutru = res["Ten_Noiluutru"],
        Hinh_Noiluutru = res["Hinh_Noiluutru"],
        Diachi_Noiluutru = res["Diachi_Noiluutru"],
        SDT_Noiluutru = res["SDT_Noiluutru"];
}
