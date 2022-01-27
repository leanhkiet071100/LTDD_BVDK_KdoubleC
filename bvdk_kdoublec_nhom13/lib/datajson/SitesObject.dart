class SitesObject {
  final String Id_Ddanh;
  final String Ten_Ddanh;
  final String Ten_Goikhac;
  final String Diachi_Ddanh;
  final String Canhvat;
  final String Khihau;
  final String Tainguyen;
  final String Kinhdo;
  final String Vido;
  final String Ten_Hinhanh_Ddanh;

  SitesObject(
    this.Id_Ddanh,
    this.Ten_Ddanh,
    this.Ten_Goikhac,
    this.Diachi_Ddanh,
    this.Canhvat,
    this.Khihau,
    this.Tainguyen,
    this.Kinhdo,
    this.Vido,
    this.Ten_Hinhanh_Ddanh,
  );

  SitesObject.fromJson(Map<String, dynamic> res)
      : Id_Ddanh = res["Id_Ddanh"],
        Ten_Ddanh = res["Ten_Ddanh"],
        Ten_Goikhac = res["Ten_Goikhac"],
        Diachi_Ddanh = res["Diachi_Ddanh"],
        Canhvat = res["Canhvat"],
        Khihau = res["Khihau"],
        Tainguyen = res["Tainguyen"],
        Kinhdo = res["Kinhdo"],
        Vido = res["Vido"],
        Ten_Hinhanh_Ddanh = res["Ten_Hinhanh_Ddanh"];
}
