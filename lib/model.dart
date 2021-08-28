class Model {
  List<Clients>? clients;

  Model({
      this.clients});

  Model.fromJson(dynamic json) {
    if (json['clients'] != null) {
      clients = [];
      json['clients'].forEach((v) {
        clients?.add(Clients.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (clients != null) {
      map['clients'] = clients?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Clients {
  String? name;
  String? id;
  String? company;
  String? orderId;
  String? invoicepaid;
  String? invoicePending;

  Clients({
      this.name, 
      this.id, 
      this.company, 
      this.orderId, 
      this.invoicepaid, 
      this.invoicePending});

  Clients.fromJson(dynamic json) {
    name = json['name'];
    id = json['id'];
    company = json['company'];
    orderId = json['orderId'];
    invoicepaid = json['invoicepaid'];
    invoicePending = json['invoicePending'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['id'] = id;
    map['company'] = company;
    map['orderId'] = orderId;
    map['invoicepaid'] = invoicepaid;
    map['invoicePending'] = invoicePending;
    return map;
  }

}