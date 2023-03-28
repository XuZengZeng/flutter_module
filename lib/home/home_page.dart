import 'package:flutter/material.dart';
import 'package:my_app/common/common_channel.dart';

import '../common/base_material_widget.dart';
import 'home_channel.dart';

class HomePageWidget extends BaseMaterialWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget home(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            // 平台通用Channel
            GestureDetector(
              onTap: () {
                PlatformChannel()
                    .showToast("PlatformChannel : This is HomePageWidget");
              },
              child: const Text("This is PlatformChannel"),
            ),
            const SizedBox(
              height: 10,
            ),
            // HomeChannel
            GestureDetector(
              onTap: () {
                HomeChannel().showToast("HomeChannel : This is HomePageWidget");
              },
              child: const Text("This is HomeChannel"),
            )
          ],
        ),
      ),
    );
  }
}
