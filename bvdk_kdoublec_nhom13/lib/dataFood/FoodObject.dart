class FoodObject {
  final String Id_Mon;
  final String Id_Quan;
  final String Ten_Mon;
  final String Hinh_Mon;
  final String Gia_ban;

  FoodObject(
      this.Id_Mon, this.Id_Quan, this.Ten_Mon, this.Hinh_Mon, this.Gia_ban);
  FoodObject.fromJson(Map<String, dynamic> res)
      : Id_Mon = res["Id_Mon"],
        Id_Quan = res["Id_Quan"],
        Ten_Mon = res["Ten_Mon"],
        Hinh_Mon = res["Hinh_Mon"],
        Gia_ban = res["Gia_ban"];
}
