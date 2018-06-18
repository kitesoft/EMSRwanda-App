import 'supplemental/cut_corners_border.dart';
import 'package:flutter/material.dart';
import 'project_details.dart';
import 'constants.dart';

class EmploymentHistoryPage extends StatefulWidget
{
  final int colorIndex;
  final bool isMadeByYou;
  final bool noButton;

  const EmploymentHistoryPage({
    @required this.colorIndex,
    @required this.isMadeByYou,
    @required this.noButton,
  }) : assert(colorIndex != null),
        assert(isMadeByYou != null),
       assert(noButton != null);

  @override
  _EmploymentHistoryPageState createState() => _EmploymentHistoryPageState();
}

class _EmploymentHistoryPageState extends State<EmploymentHistoryPage>
{
  @override
  Widget build(BuildContext context)
  {
    final _bkey = GlobalKey(debugLabel: 'Back Key');
    final _projectTitleController = TextEditingController();
    final _projectTitle = GlobalKey(debugLabel: 'Project Title');
    final _projectLocationsController = TextEditingController();
    final _projectTagsController = TextEditingController();
    final _projectLocations = GlobalKey(debugLabel: 'Project Locations');
    final _projectTags = GlobalKey(debugLabel: 'Project Tags');
    final _minRatingController = TextEditingController();
    final _minRating = GlobalKey(debugLabel: 'Minimum Rating');

    return Scaffold
      (
        appBar: AppBar
          (
          leading: new BackButton(key: _bkey, color: Colors.black,),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text('Projects Erin Worked On', style: TodoColors.textStyle.apply(color: TodoColors.baseColors[widget.colorIndex])),
          actions: <Widget>
          [
            Container
              (
              margin: EdgeInsets.only(right: 8.0),
              child: Row
                (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>
                [
                  new FloatingActionButton(
                    elevation: 200.0,
                    child: new Icon(Icons.search),
                    backgroundColor: TodoColors.baseColors[widget.colorIndex],
                    onPressed: () {
                      new Container(
                        width: 450.0,
                      );
                      showDialog<Null>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return new AlertDialog(
                            title: new Text(
                              'Search  Projects', style: TodoColors.textStyle.apply(color: TodoColors.baseColors[widget.colorIndex]),),
                            content: new SingleChildScrollView(
                              child: new ListBody(
                                children: <Widget>[
                                  SizedBox(height: 12.0),
                                  PrimaryColorOverride(
                                    color: TodoColors.baseColors[widget.colorIndex],
                                    child: TextField(
                                      key: _minRating,
                                      controller: _minRatingController,
                                      decoration: InputDecoration(
                                        labelText: 'Minimum Rating',
                                        labelStyle: TodoColors.textStyle2,
                                        border: CutCornersBorder(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12.0),
                                  PrimaryColorOverride(
                                    color: TodoColors.baseColors[widget.colorIndex],
                                    child: TextField(
                                      key: _projectTitle,
                                      controller: _projectTitleController,
                                      decoration: InputDecoration(
                                        labelText: 'Project Title',
                                        labelStyle: TodoColors.textStyle2,
                                        border: CutCornersBorder(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12.0),
                                  PrimaryColorOverride(
                                    color: TodoColors.baseColors[widget.colorIndex],
                                    child: TextField(
                                      key: _projectLocations,
                                      controller: _projectLocationsController,
                                      decoration: InputDecoration(
                                        labelText: 'Project Location',
                                        labelStyle: TodoColors.textStyle2,
                                        border: CutCornersBorder(),
                                      ),
                                    ),
                                  ),
                                  RaisedButton(
                                    child: Text('ADD LOCATION'),
                                    textColor: TodoColors.baseColors[widget.colorIndex],
                                    elevation: 8.0,
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(7.0)),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(height: 12.0),
                                  PrimaryColorOverride(
                                    color: TodoColors.baseColors[widget.colorIndex],
                                    child: TextField(
                                      key: _projectTags,
                                      controller: _projectTagsController,
                                      decoration: InputDecoration(
                                        labelText: 'Project Tag',
                                        labelStyle: TodoColors.textStyle2,
                                        border: CutCornersBorder(),
                                      ),
                                    ),
                                  ),
                                  RaisedButton(
                                    child: Text('ADD TAG'),
                                    textColor: TodoColors.baseColors[widget.colorIndex],
                                    elevation: 8.0,
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(7.0)),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(height: 12.0),
                                ],
                              ),

                            ),

                            actions: <Widget>[
                              FlatButton(
                                child: Text('CANCEL'),
                                textColor: TodoColors.baseColors[widget.colorIndex],
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(7.0)),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),

                              RaisedButton(
                                child: Text('SEARCH'),
                                textColor: TodoColors.baseColors[widget.colorIndex],
                                elevation: 8.0,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(7.0)),
                                ),
                                onPressed: () {},
                              ),

                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        body: ListView
          (
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>
          [
            Container
              (
                margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 54.0),
                child: Material
                  (
                  elevation: 8.0,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(32.0),
                  child: widget.noButton ? new Container() :
                  InkWell
                    (
                    onTap: () {},
                    child: Padding
                      (
                      padding: EdgeInsets.all(12.0),
                      child: Column
                        (
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>
                        [
                          Padding(padding: EdgeInsets.only(right: 16.0)),
                          Text(widget.isMadeByYou ? 'CANCEL REQUEST' : 'ACCEPT REQUEST',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                )
            ),

            Container
              (
                margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 54.0),
                child: Material
                  (
                  elevation: 8.0,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(32.0),
                  child: (widget.isMadeByYou || widget.noButton) ? new Container() :
                  InkWell
                    (
                    onTap: () {},
                    child: Padding
                      (
                      padding: EdgeInsets.all(12.0),
                      child: Column
                        (
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>
                        [
                          Padding(padding: EdgeInsets.only(right: 16.0)),
                          Text('REJECT REQUEST',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                )
            ),
            ReviewItem(colorIndex: widget.colorIndex),
            BadReviewItem(colorIndex: widget.colorIndex),
            NewReviewItem(colorIndex: widget.colorIndex)
          ],
        )
    );
  }
}

class ReviewItem extends StatelessWidget
{
  final int colorIndex;

  const ReviewItem({
    @required this.colorIndex,
  }) : assert(colorIndex != null);

  @override
  Widget build(BuildContext context)
  {
    String project_description = "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld";
    return Padding
      (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack
        (
        children: <Widget>
        [
          /// Item card
          Align
            (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
              (
                size: Size.fromHeight(172.0),
                child: Stack
                  (
                  fit: StackFit.expand,
                  children: <Widget>
                  [
                    /// Item description inside a material
                    Container
                      (
                      margin: EdgeInsets.only(top: 24.0),
                      child: Material
                        (
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(12.0),
                        shadowColor: Color(0x802196F3),
                        color: Colors.white,
                        child: InkWell
                          (
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ProjectDetailsPage(colorIndex: colorIndex))),
                          child: Padding
                            (
                            padding: EdgeInsets.all(24.0),
                            child: Column
                              (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>
                              [
                                /// Title and rating
                                Column
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>
                                  [
                                    Text('FSI', style: TextStyle(color: TodoColors.baseColors[colorIndex])),
                                    Row
                                      (
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>
                                      [
                                        Text('4.6', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                        Icon(Icons.star, color: Colors.black, size: 24.0),
                                      ],
                                    ),
                                  ],
                                ),
                                /// Infos
                                Row
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>
                                  [
                                    Expanded(child:Text(project_description), flex:1),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
          /// Review
          Padding
            (
            padding: EdgeInsets.only(top: 160.0, left: 32.0),
            child: Material
              (
              elevation: 12.0,
              color: Colors.transparent,
              borderRadius: BorderRadius.only
                (
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container
                (
                decoration: BoxDecoration
                  (
                    gradient: LinearGradient
                      (
                        colors: [ Color(0xFF84fab0), Color(0xFF8fd3f4) ],
                        end: Alignment.topLeft,
                        begin: Alignment.bottomRight
                    )
                ),
                child: Container
                  (
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile
                    (
                    leading: CircleAvatar
                      (
                      backgroundColor: Colors.purple,
                      child: Text('IA'),
                    ),
                    title: Text('Ivascu Adrian ★★★★★', style: TextStyle()),
                    subtitle: Text('Erin has worked very hard on this project. She was always there on time and had a good relation with everyone', maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle()),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BadReviewItem extends StatelessWidget
{
  final int colorIndex;
  final String project_description = "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld";

  const BadReviewItem({
    @required this.colorIndex,
  }) : assert(colorIndex != null);

  @override
  Widget build(BuildContext context)
  {
    return Padding
      (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack
        (
        children: <Widget>
        [
          /// Item card
          Align
            (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
              (
                size: Size.fromHeight(172.0),
                child: Stack
                  (
                  fit: StackFit.expand,
                  children: <Widget>
                  [
                    InkWell
                    (
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ProjectDetailsPage(colorIndex: colorIndex))),
                    child:
                    /// Item description inside a material
                    Container
                      (
                      margin: EdgeInsets.only(top: 24.0),
                      child: Material
                        (
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(12.0),
                        shadowColor: Color(0x802196F3),
                        color: Colors.transparent,
                        child: Container
                          (
                          decoration: BoxDecoration
                            (
                              gradient: LinearGradient
                                (
                                  colors: [ Color(0xFFDA4453), Color(0xFF89216B) ]
                              )
                          ),
                          child: Padding
                            (
                            padding: EdgeInsets.all(24.0),
                            child: Column
                              (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>
                              [
                                /// Title and rating
                                Column
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>
                                  [
                                    Text('CookStoves', style: TextStyle(color: Colors.white)),
                                    Row
                                      (
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>
                                      [
                                        Text('1.3', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                        Icon(Icons.star, color: Colors.amber, size: 24.0),
                                      ],
                                    ),
                                  ],
                                ),
                            Row
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>
                                  [
                                    Expanded(child:Text(project_description,), flex: 1),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                )
            ),
          ),
          /// Review
          Padding
            (
            padding: EdgeInsets.only(top: 160.0, right: 32.0,),
            child: Material
              (
              elevation: 12.0,
              color: Colors.white,
              borderRadius: BorderRadius.only
                (
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container
                (
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile
                  (
                  leading: CircleAvatar
                    (
                    backgroundColor: Colors.purple,
                    child: Text('IA'),
                  ),
                  title: Text('Ivascu Adrian ★☆☆☆☆'),
                  subtitle: Text('Erin\'s work on this project has been a complete mess. She never showed up on time, was always arguing with a'
                      'collegue about something and never seemed to give much consideration to her tasks.', maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewReviewItem extends StatelessWidget
{
  final int colorIndex;
  final String project_description = "This project is hkkjdkja ljdslad ladjlja alsdjla aljdsla adljld";

  const NewReviewItem({
    @required this.colorIndex,
  }) : assert(colorIndex != null);

  @override
  Widget build(BuildContext context)
  {
    return Padding
      (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Align
        (
        alignment: Alignment.topCenter,
        child: SizedBox.fromSize
          (
            size: Size.fromHeight(172.0),
            child: Stack
              (
              fit: StackFit.expand,
              children: <Widget>
              [
                InkWell
                (
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ProjectDetailsPage(colorIndex: colorIndex))),
                child:
                /// Item description inside a material
                Container
                  (
                  margin: EdgeInsets.only(top: 24.0),
                  child: Material
                    (
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Color(0x802196F3),
                    color: Colors.white,
                    child: Padding
                      (
                      padding: EdgeInsets.all(24.0),
                      child: Column
                        (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          /// Title and rating
                          Column
                            (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              Text('[New] MISM', style: TextStyle(color: Colors.blueAccent)),
                              Row
                                (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Text('No reviews', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                ],
                              ),
                              /// Infos
                              Row
                                (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Expanded(child:Text(project_description,), flex: 1),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ),
              ],
            )
        ),
      ),
    );
  }
}

class PrimaryColorOverride extends StatelessWidget {
  const PrimaryColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(primaryColor: color),
    );
  }
}