import 'package:flutter_modular/flutter_modular.dart';
import 'package:steadfast/authentication/views/signin/create_password_page.dart';
import 'package:steadfast/authentication/views/signin/otp_confirm_page.dart';
import 'package:steadfast/authentication/views/signin/login_page.dart';
import 'package:steadfast/authentication/views/signin/signin_page.dart';
import 'package:steadfast/authentication/views/signin/success_page.dart';
import 'package:steadfast/authentication/views/signin/verify_phone_number.dart';
import 'package:steadfast/beneficiary/views/add_beneficiary_page.dart';
import 'package:steadfast/beneficiary/views/edit_beneficiary_page.dart';
import 'package:steadfast/home_page/views/landing_page.dart';
import 'package:steadfast/profile_page/views/profile_page.dart';
import 'package:steadfast/reports/views/ledger_report_page.dart';
import 'package:steadfast/splash_screen/splash_screen.dart';
import 'package:steadfast/transactions/views/bank_transfer_page.dart';
import 'package:steadfast/transactions/views/payment_method_page.dart';
import 'package:steadfast/transactions/views/paynow_Uen_page.dart';
import 'package:steadfast/transactions/views/paynow_qr_page.dart';
import 'package:steadfast/transactions/views/transaction_page_new1.dart';

class Navigate extends Module {
  @override
  List<Bind> get binds => [];
  static const String loginPage = '/loginPage';
   static const String signupPage = '/signupPage';
  static const String profilePage = '/profilePage';
  static const String landingPage = '/landingPage';
  static const String paymentPage = '/paymentPage';
  static const String bankTransferPage = '/bankTransferPage';
  static const String paynowQrPage = '/paynowQrPage';
    static const String paynowUenPage = '/paynowUenPage';
    static const String addBeneficiaryPage = '/addBeneficiaryPage';
    static const String editBeneficiaryPage = '/editBeneficiaryPage';
    static const String transactionPageNew = '/transactionPageNew';
    static const String ledgerReportPage = '/ledgerReportPage';
    static const String verifyPhoneNumberPage = '/verifyPhoneNumberPage';
        static const String confirmOtpPage = '/confirmOtpPage';
         static const String createPasswordPage = '/createPasswordPage';
         static const String successPage = '/successPage';


  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => SplashScreen()),
        ChildRoute(loginPage, child: (_, args) => LoginPage()),
        ChildRoute(signupPage, child: (_, args) => SignupPage()),
        ChildRoute(profilePage, child: (_, args) => ProfilePage()),
        ChildRoute(landingPage, child: (_, args) => LandingPage()),
        ChildRoute(paymentPage, child: (_, args) => PaymentPage()),
        ChildRoute(bankTransferPage, child: (_, args) => BankTransferPage()),
        ChildRoute(paynowQrPage, child: (_, args) => PaynowQrPage()),
        ChildRoute(paynowUenPage, child: (_, args) => PaynowUenPage()),
         ChildRoute(addBeneficiaryPage, child: (_, args) => AddBeneficiaryPage()),
         ChildRoute(editBeneficiaryPage, child: (_, args) => EditBeneficiaryPage()),
         ChildRoute(transactionPageNew, child: (_, args) => TransactionPageNew()),
         ChildRoute(ledgerReportPage, child: (_, args) => LedgerReportPage()),
          ChildRoute(verifyPhoneNumberPage, child: (_, args) => VerifyPhoneNumberPage()),
           ChildRoute(confirmOtpPage, child: (_, args) => ConfirmOtpPage()),
           ChildRoute(createPasswordPage, child: (_, args) => CreatePasswordPage()),
           ChildRoute(successPage, child: (_, args) => SuccessPage())
      ];
}
