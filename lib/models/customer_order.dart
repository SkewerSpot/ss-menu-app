import 'package:flutter/foundation.dart';
import 'package:ss_menu/constants.dart';
import 'order_item.dart';

/// All data related to a customer's order.
///
/// Includes order items and customer details.
class CustomerOrder {
  /// A unique string id representative of the order.
  final String orderId;

  /// Name of the customer.
  final String customerName;

  /// Customer's mobile or contact number.
  final String customerMobile;

  /// Customer's car number.
  ///
  /// It's not unusual in Jalandhar for customers to order and enjoy food
  /// from the comfort of their cars parked just outside the outlet.
  final String customerCarNum;

  /// Model or make of the car.
  ///
  /// For example, "Honda City".
  final String customerCarMake;

  /// Additional notes or comments.
  ///
  /// Could be used to add customer specific notes.
  /// For example, "make the pizza spicy."
  final String customerComments;

  /// List of order items received from cart.
  final List<OrderItem> orderItems;

  /// Token number given to customer on successful placement of order.
  ///
  /// Used for queue control.
  final int token;

  /// The exact date and time of order.

  /// Must be a valid ISO8601 string.
  final String timestamp;

  /// *DEPRECATED* No longer used.
  final String timeOfDay;

  /// Whether payment (in any form) has been received for the order.
  final bool isPaidFor;

  /// Whether the order has been payed for and delivered.
  final bool isCompleted;

  /// Whether a receipt was issued to the customer.
  final bool isReceiptIssued;

  /// The exact date and time when order was marked completed.
  ///
  /// The difference between [timestamp] and [completedTimestamp]
  /// is used to calculate total order preparation time by Orders and Stats apps.
  final String completedTimestamp;

  /// Whether the order stands cancelled (for whatever reason).
  final bool isCancelled;

  /// Whether a discount was applied to the order.
  final bool isDiscounted;

  /// The discount amount applied to the order.
  final double discountAmount;

  /// The channel from where the order was received.
  ///
  /// For example, "zomato", "swiggy", "instore", etc.
  final String channel;

  /// Central GST tax rate.
  final double taxRateCGST;

  /// State GST tax rate.
  final double taxRateSGST;

  /// Total GST tax rate (CGST+SGST).
  final double taxRateGST;

  /// Whether the order is inclusive or exclusive of taxes.
  ///
  /// It's a common practice to levy extra taxes for online orders,
  /// and include taxes in the price for in-store orders.
  final bool isInclusiveOfTaxes;

  /// Id of the app creating this order object.
  ///
  /// For example, "menuapp" (this app), "gmail2order", etc.
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

  Map<String, dynamic> toMap() {
    return {
      'orderId': this.orderId,
      'customerName': this.customerName,
      'customerMobile': this.customerMobile,
      'customerCarNum': this.customerCarNum,
      'customerCarMake': this.customerCarMake,
      'customerComments': this.customerComments,
      'orderItems': this.orderItems.map<Map>((item) => item.toMap()).toList(),
      'token': this.token,
      'timestamp': this.timestamp,
      'timeOfDay': this.timeOfDay,
      'isPaidFor': this.isPaidFor,
      'isCompleted': this.isCompleted,
      'isReceiptIssued': this.isReceiptIssued,
      'completedTimestamp': this.completedTimestamp,
      'isCancelled': this.isCancelled,
      'isDiscounted': this.isDiscounted,
      'discountAmount': this.discountAmount,
      'channel': this.channel,
      'taxRateCGST': this.taxRateCGST,
      'taxRateSGST': this.taxRateSGST,
      'taxRateGST': this.taxRateGST,
      'isInclusiveOfTaxes': this.isInclusiveOfTaxes,
      'source': this.source,
    };
  }
}
