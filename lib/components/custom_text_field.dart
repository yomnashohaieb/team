import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Text Field",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Gap(5),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            // labelText: 'Text Field',
            hintText: 'Text Field',
            prefixIcon: const Icon(Icons.person),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info),
            ),
          ),
        ),
      ],
    );
  }
}
