import 'package:flutter/material.dart';
import 'package:hackathena_25/models/font_helper.dart';

class TeamList extends StatelessWidget {
  const TeamList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            // Background Pattern
            _buildShapeGrid(),
            // Foreground Content
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset('lib/assets/images/app_bar_logo.png', scale: 2),
                      Image.asset('lib/assets/images/squid_game_icons.png', scale: 2),
                    ],
                  ),
                  const SizedBox(height: 30),
                  FontHelper.customFont(
                    'WELCOME JUDGE 👋',
                    32,
                    FontWeight.w600,
                    Colors.black,
                  ),
                  FontHelper.customFont(
                    'This is all your area to bring up the new innovators !',
                    15,
                    FontWeight.w300,
                    Colors.black,
                  ),
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.center,

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShapeGrid() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 40, // Adjust based on screen density
            shrinkWrap: true, // Ensures the grid takes only required space
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              // Cycle through shapes
              final shapeIndex = index % 3;
              String asset;
              switch (shapeIndex) {
                case 0:
                  asset = 'lib/assets/images/circle.png';
                  break;
                case 1:
                  asset = 'lib/assets/images/square.png';
                  break;
                case 2:
                  asset = 'lib/assets/images/triangle.png';
                  break;
                default:
                  asset = 'lib/assets/images/circle.png';
              }

              // Alternate rotation angles
              final angle = (index % 4 == 0 || index % 5 == 0)
                  ? -0.2
                  : (index % 3 == 0 ? 0.2 : 0.0);

              return Transform.rotate(
                angle: angle,
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset(
                    asset,
                    scale: 1,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}