import 'package:equatable/equatable.dart';

class ListPrice extends Equatable {
  final double? amount;
  final String? currencyCode;

  const ListPrice({this.amount, this.currencyCode});

  factory ListPrice.fromJson(Map<String, dynamic> json) => ListPrice(
        amount: (json['amount'] as num?)?.toDouble(),
        currencyCode: json['currencyCode'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'currencyCode': currencyCode,
      };

  @override
  List<Object?> get props => [amount, currencyCode];
}

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPrice? listPrice; // إضافة listPrice

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice, // إضافة إلى الـ constructor
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: json['country'] as String?,
        saleability: json['saleability'] as String?,
        isEbook: json['isEbook'] as bool?,
        listPrice: json['listPrice'] != null
            ? ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>)
            : null, // معالجة وجود listPrice
      );

  Map<String, dynamic> toJson() => {
        'country': country,
        'saleability': saleability,
        'isEbook': isEbook,
        'listPrice': listPrice?.toJson(), // إضافة listPrice إلى التصدير
      };

  @override
  List<Object?> get props => [country, saleability, isEbook, listPrice];
}
