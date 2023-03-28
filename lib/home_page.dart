import 'package:flutter/material.dart';
import 'package:my_app/common/common_channel.dart';

import 'base_material_widget.dart';

class HomePageWidget extends BaseMaterialWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget home(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () {
            PlatformChannel().showToast("PlatformChannel : This is HomePageWidget");
          },
          child: const Text("This is HomePageWidget"),
        ),
      ),
    );
  }
}
