import 'package:flutter/material.dart';

import 'base_material_widget.dart';

class HomePageWidget extends BaseMaterialWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  Widget home(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: const Center(
        child: Text("This is HomePageWidget"),
      ),
    );
  }

}
