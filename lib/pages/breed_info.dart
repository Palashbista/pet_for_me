import 'package:flutter/material.dart';
import 'breed_info_dependency_pages/breed_list.dart';



class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Breed Information'),
        ),
        body: BreedList(),
      );

  }
}

