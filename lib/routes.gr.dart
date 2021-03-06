// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:parks/auth/auth-page.dart';
import 'package:parks/place/place-detail.dart';
import 'package:parks/place/place-store.dart';
import 'package:parks/place/place-list.dart';
import 'package:parks/user-parking/user-detail.dart';
import 'package:parks/transactions/transaction-list.dart';
import 'package:parks/transactions/transaction-detail.dart';
import 'package:parks/transactions/transaction-model.dart';
import 'package:parks/user-parking/paymentMethod/form.dart';

abstract class Routes {
  static const auth = '/auth';
  static const placeDetail = '/place-detail';
  static const home = '/';
  static const profile = '/profile';
  static const transactions = '/transactions';
  static const transactionDetail = '/transaction-detail';
  static const createPaymentMethod = '/create-payment-method';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.auth:
        if (hasInvalidArgs<AuthPageArguments>(args)) {
          return misTypedArgsRoute<AuthPageArguments>(args);
        }
        final typedArgs = args as AuthPageArguments ?? AuthPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => AuthPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.placeDetail:
        if (hasInvalidArgs<PlacePageArguments>(args)) {
          return misTypedArgsRoute<PlacePageArguments>(args);
        }
        final typedArgs = args as PlacePageArguments ?? PlacePageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => PlacePage(key: typedArgs.key, place: typedArgs.place),
          settings: settings,
        );
      case Routes.home:
        if (hasInvalidArgs<PlacesPageArguments>(args)) {
          return misTypedArgsRoute<PlacesPageArguments>(args);
        }
        final typedArgs = args as PlacesPageArguments ?? PlacesPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => PlacesPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.profile:
        return MaterialPageRoute<dynamic>(
          builder: (_) => UserParkingDetail(),
          settings: settings,
        );
      case Routes.transactions:
        if (hasInvalidArgs<TransactionsPageArguments>(args)) {
          return misTypedArgsRoute<TransactionsPageArguments>(args);
        }
        final typedArgs =
            args as TransactionsPageArguments ?? TransactionsPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => TransactionsPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.transactionDetail:
        if (hasInvalidArgs<TransactionPageArguments>(args)) {
          return misTypedArgsRoute<TransactionPageArguments>(args);
        }
        final typedArgs =
            args as TransactionPageArguments ?? TransactionPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) =>
              TransactionPage(typedArgs.transaction, key: typedArgs.key),
          settings: settings,
        );
      case Routes.createPaymentMethod:
        if (hasInvalidArgs<CreatePaymentMethodFormArguments>(args)) {
          return misTypedArgsRoute<CreatePaymentMethodFormArguments>(args);
        }
        final typedArgs = args as CreatePaymentMethodFormArguments ??
            CreatePaymentMethodFormArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) => CreatePaymentMethodForm(key: typedArgs.key),
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//AuthPage arguments holder class
class AuthPageArguments {
  final Key key;
  AuthPageArguments({this.key});
}

//PlacePage arguments holder class
class PlacePageArguments {
  final Key key;
  final PlaceModel place;
  PlacePageArguments({this.key, this.place});
}

//PlacesPage arguments holder class
class PlacesPageArguments {
  final Key key;
  PlacesPageArguments({this.key});
}

//TransactionsPage arguments holder class
class TransactionsPageArguments {
  final Key key;
  TransactionsPageArguments({this.key});
}

//TransactionPage arguments holder class
class TransactionPageArguments {
  final TransactionModel transaction;
  final Key key;
  TransactionPageArguments({this.transaction, this.key});
}

//CreatePaymentMethodForm arguments holder class
class CreatePaymentMethodFormArguments {
  final Key key;
  CreatePaymentMethodFormArguments({this.key});
}
