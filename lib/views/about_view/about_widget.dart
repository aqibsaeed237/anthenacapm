import 'package:athenacapm/responsive.dart';
import 'package:athenacapm/utils/const.dart';
import 'package:athenacapm/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget AboutWidget(BuildContext context) {
  return Center(
    child: Padding(
      padding: !Responsive.isMobile(context)?EdgeInsets.symmetric(
        horizontal: 150,
      ): EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Athena Capital Management is a leading quantitative hedge fund specializing in predictive analytics to navigate the complexities of the equities and cryptocurrencies markets. Our firm employs a sophisticated long/short strategy, leveraging mathematical and statistical models to identify opportunities for high returns while managing risk effectively.\n",
              style: myTextStyle(fontSize: 12, color: lightBlack),
            ),
            Gap(4),
            Text(
              "At the core of our success is a dedicated team of quantitative developers and investment managers. This team is tasked with the continuous development, rigorous testing, and seamless execution of our proprietary algorithms. Their work ensures not only the smooth operation and profitability of our current strategies but also the constant innovation that keeps us at the forefront of the financial industry.\n",
              style: myTextStyle(fontSize: 12, color: lightBlack),
            ),
            Gap(4),
            Text(
              "We are committed to excellence in risk management, ensuring that our approaches are both aggressive in opportunity and conservative in risk exposure. Athena Capital Management: Precision in prediction, excellence in execution.\n",
              style: myTextStyle(fontSize: 12, color: lightBlack),
            ),
          ],
        ),
      ),
    ),
  );
}
