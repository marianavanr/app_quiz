import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 42,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(
            height: 17,
          ),
          Text("Gerenciamento de Estado", style: AppTextStyles.heading15),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "3 de 10",
                  style: AppTextStyles.body11,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Expanded(
                  flex: 3,
                  child: ProgressIndicatorWidget(
                    value: 0.3,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
