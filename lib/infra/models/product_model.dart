class ProductModel {
  int codigo;
  String descricao;
  double preco;
  String codigoBarras;

  ProductModel({this.codigo, this.descricao, this.preco, this.codigoBarras});

  ProductModel.fromJson(Map<String, dynamic> json) {
    codigo = json['Codigo'];
    descricao = json['Descricao'];
    preco = json['Preco'];
    codigoBarras = json['CodigoBarras'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Codigo'] = this.codigo;
    data['Descricao'] = this.descricao;
    data['Preco'] = this.preco;
    data['CodigoBarras'] = this.codigoBarras;
    return data;
  }
}
