import 'package:flutter/foundation.dart';
import 'package:ss_menu/constants.dart';
import 'order_item.dart';

class CustomerOrder {
  final String orderId;
  final String customerName;
  final String customerMobile;
  final String customerCarNum;
  final String customerCarMake;
  final String customerComments;
  final List<OrderItem> orderItems;
  final int token;
  final String timestamp;
  final String timeOfDay;
  final bool isPaidFor;
  final bool isCompleted;
  final bool isReceiptIssued;
  final String completedTimestamp;
  final bool isCancelled;
  final bool isDiscounted;
  final double discountAmount;
  final String channel;
  final double taxRateCGST;
  final double taxRateSGST;
  final double taxRateGST;
  final bool isInclusiveOfTaxes;
  final String source;

  CustomerOrder({
    @required this.orderId,
    this.customerName,
    this.customerMobile,
    this.customerCarNum,
    this.customerCarMake,
    this.customerComments,
    @required this.orderItems,
    @required this.token,
    this.timeOfDay,
    this.isPaidFor = false,
    this.isCompleted = false,
    this.isReceiptIssued = false,
    this.completedTimestamp = '',
    this.isCancelled = false,
    this.isDiscounted = false,
    this.discountAmount = 0.0,
    @required this.channel,
    this.taxRateCGST = kTaxRateCGST,
    this.taxRateSGST = kTaxRateSGST,
    this.taxRateGST = kTaxRateGST,
    this.isInclusiveOfTaxes = false,
    @required this.source,
  }) : this.timestamp = DateTime.now().toIso8601String();
}
