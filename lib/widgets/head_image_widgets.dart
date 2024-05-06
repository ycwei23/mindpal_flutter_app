import "package:flutter/material.dart";
import "package:mindpal_flutter_app/constants/ui_colors.dart";

class HeadImageContainer extends StatelessWidget {
  const HeadImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      height: 55,
      width: 55,
      decoration: BoxDecoration(                  
        color: UIColors.grey2,
        shape: BoxShape.circle                  
      ),
      child: const Center(
        child: Column(
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 14, top: 10),
                child: Text(":", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
              )
            ),
            RotatedBox(
              quarterTurns: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 14),
                child: Text("D", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
              )
            ),                          
          ],
        )
      ),                    
    );
  }
}