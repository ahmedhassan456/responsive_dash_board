import 'package:flutter/material.dart';
import 'package:reponsive_dash_board/widgets/main_layout/quick_invoice/custom_item_name_and_amount.dart';
import 'package:reponsive_dash_board/widgets/main_layout/quick_invoice/custom_send_and_details_money.dart';
import 'package:reponsive_dash_board/widgets/main_layout/quick_invoice/latest_transaction.dart';
import 'package:reponsive_dash_board/widgets/main_layout/quick_invoice/customer_name_and_email.dart';
import 'package:reponsive_dash_board/widgets/main_layout/quick_invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24.0,
          ),
          LatestTransaction(),
          SizedBox(
            height: 48.0,
          ),
          CustomerNameAndEmail(),
          SizedBox(
            height: 24.0,
          ),
          CustomItemNameAndAmount(),
          SizedBox(
            height: 24.0,
          ),
          CustomSendAndDetailsMoney(),
        ],
      ),
    );
  }
}
