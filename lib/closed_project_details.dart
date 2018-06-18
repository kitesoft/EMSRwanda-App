import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'constants.dart';
import 'view_devices.dart';
import 'staff_stats.dart';
import 'notifications.dart';

class ClosedProjectDetailsPage extends StatefulWidget {
  @override
  ClosedProjectDetailsPageState createState() =>
      ClosedProjectDetailsPageState();
}

class ClosedProjectDetailsPageState extends State<ClosedProjectDetailsPage> {
  String project_description = "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
      "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld"
  ;
  int _colorIndex = 7;
  int people_surveyed = 100;
  final List<List<double>> charts =
  [
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4
    ],
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
    ],
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4
    ]
  ];

  static final List<String> chartDropdownItems = [
    'Last 7 days', 'Last month', 'Last year'];
  String actualDropdown = chartDropdownItems[0];
  int actualChart = 0;

//  int last_index = actualChart;

  @override
  Widget build(BuildContext context) {
    final _bkey = GlobalKey(debugLabel: 'Back Key');
    return Scaffold
      (
        appBar: AppBar
          (
          leading: new BackButton(key: _bkey, color: Colors.black,),
          title: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.person, color: Colors.black54, size: 20.0,),
              SizedBox(width: 2.0,),
              new Expanded(child:
              new Text('Anirudh\nRajashekar', style: TodoColors.textStyle),
                flex: 1,
              )
            ],
          ),
          elevation: 2.0,
          backgroundColor: Colors.white,
          actions: <Widget>
          [
            Container
              (
              child: Row
                (
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.ltr,
                children: <Widget>
                [
                  RaisedButton(
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {},
                    child: new Text(
                      'Send Payment Request', style: TodoColors.textStyle4,),
                  )
                ],
              ),
            )
          ],
        ),
        body: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: <Widget>[
            _buildTile2(
              Padding
                (
                padding: const EdgeInsets.all(24.0),
                child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Column
                        (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Text('Kigali, Gisenyi',
                              style: TextStyle(color: TodoColors.baseColors[_colorIndex])),
                          Text('FSI', style: TodoColors.textStyle6)
                        ],
                      ),
                      Material
                        (
                          color: TodoColors.baseColors[_colorIndex],
                          borderRadius: BorderRadius.circular(24.0),

                          child: Center
                            (
                              child: Padding
                                (
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(Icons.timeline, color: Colors.white,
                                    size: 30.0),
                              )
                          )
                      )
                    ]
                ),
              ),
                'Kigali, Gisenyi',
                'FSI',
                project_description
            ),
            _buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Material
                        (
                          color: Colors.teal,
                          shape: CircleBorder(),
                          child: Padding
                            (
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.settings_applications,
                                color: Colors.white, size: 30.0),
                          )
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('General', style: TodoColors.textStyle6),
                      Expanded(child: Text('Staff & Stats\nScan QR Code',
                          style: TextStyle(color: Colors.black45)), flex: 1,),
                    ]
                ),
              ),
              onTap: () =>
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => StaffNStatsPage(colorIndex: _colorIndex,))),
            ),
            _buildTile(
              Padding
                (
                padding: const EdgeInsets.all(24.0),
                child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Material
                        (
                          color: TodoColors.baseColors[_colorIndex],
                          shape: CircleBorder(),
                          child: Padding
                            (
                            padding: EdgeInsets.all(16.0),
                            child: Icon(
                                Icons.notifications, color: Colors.white,
                                size: 30.0),
                          )
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('Alerts', style: TodoColors.textStyle6),
                      Text('All ', style: TextStyle(color: Colors.black45)),
                    ]
                ),
              ),
              onTap: () =>
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NotificationsPage(colorIndex: _colorIndex,))),
            ),
            _buildTile(
              Padding
                (
                  padding: const EdgeInsets.all(24.0),
                  child: Column
                    (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Row
                        (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Column
                            (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              Text('People Surveyed',
                                  style: TextStyle(color: TodoColors.baseColors[_colorIndex],)),
                              Text('${people_surveyed}', style: TodoColors.textStyle6),
                            ],
                          ),
                          DropdownButton
                            (
                              isDense: true,
                              value: actualDropdown,
                              onChanged: (String value) =>
                                  setState(() {
                                    actualDropdown = value;
                                    int last_index = actualChart;
                                    actualChart = chartDropdownItems.indexOf(
                                        value); // Refresh the chart
                                    if (actualChart > last_index) {
                                      people_surveyed = people_surveyed + 100;
                                    } else {
                                      people_surveyed = people_surveyed - 100;
                                    }
                                  }),
                              items: chartDropdownItems.map((String title) {
                                return DropdownMenuItem
                                  (
                                  value: title,
                                  child: Text(title, style: TodoColors.textStyle6),
                                );
                              }).toList()
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 4.0)),
                      Sparkline
                        (
                        data: charts[actualChart],
                        lineWidth: 5.0,
                        lineColor: TodoColors.baseColors[_colorIndex],
                      )
                    ],
                  )
              ),
            ),
            _buildTile(
              Padding
                (
                padding: const EdgeInsets.all(24.0),
                child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Column
                        (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Text('Devices',
                              style: TextStyle(color: TodoColors.baseColors[_colorIndex],)),
                          Text('173', style: TodoColors.textStyle6)
                        ],
                      ),
                      Material
                        (
                          color: TodoColors.baseColors[_colorIndex],
                          borderRadius: BorderRadius.circular(24.0),
                          child: Center
                            (
                              child: Padding
                                (
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.devices, color: Colors.white,
                                    size: 30.0),
                              )
                          )
                      )
                    ]
                ),
              ),
              onTap: () =>
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => ViewDevicesPage(colorIndex: _colorIndex,))),
            )
          ],
          staggeredTiles: [
            StaggeredTile.extent(2, 110.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(2, 220.0),
            StaggeredTile.extent(2, 110.0),
          ],
        )
    );
  }

  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        child: InkWell
          (
          // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null ? () => onTap() : () {
              print('Not set yet');

            },
            child: child
        )
    );
  }

  Widget _buildTile2(Widget child, String locations, String title, String description) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        child: InkWell
          (
          // Do onTap() if it isn't null, otherwise do print()
            onTap: () {
              showTile(locations, title, description);
            },
            child: child
        )
    );
  }

  void showTile(String locations, String title, String description){
    String Status;
    title = title.toUpperCase();
    setState(() {

    });

    showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Card(
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: Text("Project Title: $title\nProject Location: $locations",
                          style: TextStyle(color: TodoColors.baseColors[_colorIndex]),),
                        subtitle: Text(description),
                      ),
                      BackButton(color: TodoColors.baseColors[_colorIndex],),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}