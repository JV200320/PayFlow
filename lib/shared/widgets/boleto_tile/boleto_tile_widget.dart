import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';

import 'package:payflow/shared/themes/appTextStyles.dart';

import '../../../shared/models/boleto_model.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.top,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(data.name!, style: TextStyles.titleListTile),
          subtitle: Text(
            'Vencimento: ${data.dueDate}',
            style: TextStyles.captionBody,
          ),
          trailing: Text.rich(TextSpan(
            text: '\$ ',
            style: TextStyles.trailingRegular,
            children: [
              TextSpan(
                text: '${data.value!.toStringAsFixed(2)}',
                style: TextStyles.trailingBold,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
