import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:parks/auth/auth-page.dart';
import 'package:parks/place/place-detail.dart';
import 'package:parks/place/place-list.dart';
import 'package:parks/transactions/transaction-detail.dart';
import 'package:parks/transactions/transaction-list.dart';
import 'package:parks/user-parking/paymentMethod/form.dart';
import 'package:parks/user-parking/user-detail.dart';

@MaterialAutoRouter()
class $Router {
  // Auth
  AuthPage auth;

  // Places
  PlacePage placeDetail;
  @initial
  PlacesPage home;

  // User
  UserParkingDetail profile;

  // Transactions
  TransactionsPage transactions;
  TransactionPage transactionDetail;

  // Payment
  @MaterialRoute(fullscreenDialog: true)
  CreatePaymentMethodForm createPaymentMethod;
}

ExtendedNavigatorState getNavigator() {
  return ExtendedNavigator.rootNavigator;
}

ExtendedNavigatorState useNavigator([BuildContext context]) {
  if (context == null) {
    context = useContext();
  }
  return Navigator.of(context);
}
