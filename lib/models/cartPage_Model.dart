// ignore_for_file: non_constant_identifier_names, prefer_if_null_operators

class CartPageModel {
  final String Name, url;
  final num price;

  CartPageModel(this.Name, this.url, this.price);

  CartPageModel copywith({String? Name, String? url, num? price}) {
    return CartPageModel(
        Name ?? this.Name, url ?? this.url, price ?? this.price);
  }

  Map<String,dynamic> toMap(){
    return <String,dynamic>{
      'Name': Name,
      'url':url,
      'price':price
    };
  }

  factory CartPageModel.fromMap (Map<String, dynamic> map){
    return CartPageModel(
     map['Name'] as String   ,
      map['url'] as String   ,  
      map['price'] !=null ? map['price']:null,
    );
  }

}
