import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/widgets/profile_sidebar/knowledge_text.dart';

class KnowledgeDetails extends StatelessWidget {
  const KnowledgeDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Knowledge',
            style: TextStyle(
              color: primaryColor.withOpacity(0.8),
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          KnowledgeText(text: 'Bootstrap, Material Design'),
          KnowledgeText(text: 'Git and Version Control'),
          KnowledgeText(text: 'Mobile Application Development'),
          KnowledgeText(text: 'Software Dev Architecture'),
        ],
      ),
    );
  }
}
