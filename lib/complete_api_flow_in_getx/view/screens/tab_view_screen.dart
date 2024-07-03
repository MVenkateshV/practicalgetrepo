import 'package:flutter/material.dart';

import '../../../particular_value_update/models/particulars_values_update_model.dart';

///Floatingactionbutton/gridview.builder/list.generate/tabbar/showModalBottomSheet

class TabViewScreen extends StatefulWidget {
  const TabViewScreen({super.key});

  @override
  State<TabViewScreen> createState() => _TabViewScreenState();
}

class _TabViewScreenState extends State<TabViewScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
    _controller!.addListener(() {
      setState(() {
        _selectedIndex = _controller?.index ?? 0;
      });
      print("Selected Index:  ${_controller?.index}");
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _controller,
            isScrollable: true,
            onTap: (index) {
              ///get controller update method calling
            },
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.greenAccent),
            tabs: const [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_car)),
            ],
          ),
          title: const Text('Tabs Demo'),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            GestureDetector(
              child: Icon(Icons.flight, size: 350),
              onTap: () {
                ///showModelBottomSheet example
                showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return const SizedBox(
                        height: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('GeeksforGeeks'),
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
            // Icon(Icons.directions_transit, size: 350),
            GridView.builder(
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // number of items in each row
                mainAxisSpacing: 8.0, // spacing between rows
                crossAxisSpacing: 8.0, // spacing between columns
              ),
              padding:const EdgeInsets.all(8.0), // padding around the grid
              itemCount: listsData.length, // total number of items
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.blue, // color of grid items
                  child: Center(
                    child: Text(
                      items[index],
                      style: const TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
           const Icon(Icons.directions_car, size: 350),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            List<int>.generate(1000,(counter) {
              print("$counter");
              return counter;
            });

          },
          child: Icon(Icons.area_chart),
        ),
      ),
    );
  }
}
