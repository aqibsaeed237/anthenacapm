import 'package:athenacapm/views/home_page/widget/footer_widget.dart';
import 'package:flutter/material.dart';

class BenefitsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildListItem("Extremely attractive compensation"),
              _buildListItem("Incentive compensation plan"),
              _buildListItem("Medical, dental, and vision insurance for employees and their dependents"),
              _buildListItem("Life and disability insurance"),
              _buildListItem("Dependent care and health care flexible spending accounts"),
              _buildListItem("Investment opportunity in Athena funds, subject to investor qualifications"),
              _buildListItem("Retirement program"),
              _buildListItem("Charitable gift matching program"),
              _buildListItem("Adoption assistance program"),
              _buildListItem("Educational assistance program"),
              _buildListItem("Complimentary (on-site) meals, snacks, and beverages"),
              _buildListItem("(Boston) Two on-campus fitness gyms; indoor tennis, squash, and basketball courts; outdoor tennis courts and a jogging trail"),
              _buildListItem("(Dubai) Transit benefits and gym memberships"),
              _buildListItem("Company-wide resort weekend for our employees and their families"),

            ],
          ),

        ),
        FooterWidget(context),
      ],
    );
  }

  Widget _buildListItem(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 14), // Customize the font size as needed
          ),
        ),
        Text(" l", style: TextStyle(fontSize: 14)), // 'l' at the end
      ],
    );
  }
}
