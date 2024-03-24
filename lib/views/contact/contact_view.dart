import 'package:flutter/material.dart';
import 'package:athenacapm/utils/const.dart';
import 'package:athenacapm/utils/style.dart';
import 'package:gap/gap.dart';

class ContactField extends StatelessWidget {
  final String label;
  final bool isOptional;
  final TextEditingController controller;

  const ContactField({super.key, 
    required this.label,
    this.isOptional = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label ${isOptional ? '(Optional)' : '*'}",
          style: myTextStyle(color: lightGrayColor, fontSize: 12),
        ),
        Container(
          width: 300,
          height: 34,
          margin: const EdgeInsets.symmetric(vertical: 6),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(color: lightGrayColor),
          ),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter $label',
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}

class ContactView extends StatelessWidget {
  final nameController = TextEditingController();
  final companyController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final reasonController = TextEditingController();
  final messageController = TextEditingController();

  ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 150),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "For career-related inquiries, please visit our Jobs page.",
                style: myTextStyle(color: darkBlueColor),
              ),
              Text(
                "For all other inquiries, please submit the form below.",
                style: myTextStyle(color: darkBlueColor),
              ),
              const Gap(2),
              ContactField(label: "Name", controller: nameController),
              ContactField(label: "Company", isOptional: true, controller: companyController),
              ContactField(label: "Email", controller: emailController),
              ContactField(label: "Phone", isOptional: true, controller: phoneController),
              ContactField(label: "Reason for Contact", controller: reasonController),
              ContactField(label: "Message", controller: messageController),
              const Gap(8),
              ElevatedButton(
                onPressed: () {
                  // Handle submit button tap
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkBlueColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
                child: Text("Submit", style: myTextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
