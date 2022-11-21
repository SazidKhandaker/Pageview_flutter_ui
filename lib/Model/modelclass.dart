import 'package:flutter/material.dart';

class Modelclass {
  String placename;
  String addressname;
  String photo;

  Modelclass(this.placename, this.addressname, this.photo);

  static travelfctn() {
    return [
      Modelclass("BandarBan", "Tansci",
          "https://images.unsplash.com/photo-1506038634487-60a69ae4b7b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=466&q=80"),
      Modelclass("Shajek", "Pahar",
          "https://images.unsplash.com/photo-1504194104404-433180773017?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
      Modelclass("Cox Bazzar", "Kolatoli",
          "https://images.unsplash.com/photo-1471922694854-ff1b63b20054?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80"),
    ];
  }

  static listfctn() {
    return [
      Modelclass("Bichakandi", "At Remaki",
          "https://images.unsplash.com/photo-1489211914964-32c31f87e86b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80"),
      Modelclass("Nil pahar", "Shajak Venu",
          "https://images.unsplash.com/photo-1465188466731-618dfc07a57d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"),
      Modelclass("Inani Becah", "At Marin drive",
          "https://images.unsplash.com/photo-1496692052106-d37cb66ab80c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
    ];
  }
}
