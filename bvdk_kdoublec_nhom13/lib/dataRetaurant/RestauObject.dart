class RestauObject {
  final String Id_Quan;
  final String Id_Ddanh;
  final String Ten_Quan;
  final String Hinh_Quan;
  final String Diachi_Quan;
  final String SDT_Quan;

  RestauObject(this.Id_Quan, this.Id_Ddanh, this.Ten_Quan, this.Hinh_Quan,
      this.Diachi_Quan, this.SDT_Quan);
  RestauObject.fromJson(Map<String, dynamic> res)
      : Id_Quan = res["Id_Quan"],
        Id_Ddanh = res["Id_Ddanh"],
        Ten_Quan = res["Ten_Quan"],
        Hinh_Quan = res["Hinh_Quan"],
        Diachi_Quan = res["Diachi_Quan"],
        SDT_Quan = res["SDT_Quan"];
}
