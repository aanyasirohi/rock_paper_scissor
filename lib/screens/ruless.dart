import 'package:flutter/material.dart';

class RulesPage extends StatefulWidget {
  @override
  State<RulesPage> createState() => _RulesPageState();
}

class _RulesPageState extends State<RulesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF060A47),
      appBar: AppBar(
        backgroundColor: Color(0xFF060A47),
        title: Text(
          "Rules",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                "GAME RULES",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            ruleItem('1. Both players choose Rock, Paper, or Scissors.'),
            ruleItem(
                '2. Compare choices and award points based on the rules: Rock beats Scissors, Scissors beat Paper, Paper beats Rock.'),
            ruleItem(
                '3. If both players choose the same option, it\'s a tie – no points awarded.'),
            ruleItem('4. The game continues until a player wins.'),
            ruleItem(
                '5. Have fun and challenge your friends to see who\'s the best!'),
          ],
        ),
      ),
    );
  }

  Widget ruleItem(String rule) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        rule,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
