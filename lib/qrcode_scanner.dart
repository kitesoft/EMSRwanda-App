import 'dart:async';

import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'constants.dart';

class QRCodeScanPage extends StatefulWidget {
  final int colorIndex;

  const QRCodeScanPage({
    @required this.colorIndex,
  }) : assert(colorIndex != null);

  @override
  QRCodeScanPageState createState() {
    return new QRCodeScanPageState();
  }
}

class QRCodeScanPageState extends State<QRCodeScanPage> {
  final String display_welcome = "Hey there !";
  final String display_permission_denied = "Camera permission was denied";
  final String display_unknown = "Unknown Error";
  final String display_no_scan = "You pressed the back button before scanning anything";
  String result = "Hey there !";
  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        if(result == display_welcome || result == display_permission_denied ||
          result == display_no_scan || result.startsWith(display_unknown)){
          result = qrResult;
        }else{
          result += "\n" + qrResult;
        }

      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = display_permission_denied;
        });
      } else {
        setState(() {
          result = display_unknown + " $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = display_no_scan;
      });
    } catch (ex) {
      setState(() {
        result = display_unknown + " $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _bkey = GlobalKey(debugLabel: 'Back Key');
    return Scaffold
      (
        appBar: AppBar
          (
          leading: new BackButton(key: _bkey, color: Colors.black,),
          elevation: 2.0,
          backgroundColor: Colors.white,
          title: Text('QR CODE SCAN', style: TodoColors.textStyle6,
          ),
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
            child: new Icon(Icons.save),
            backgroundColor: TodoColors.baseColors[widget.colorIndex],
            onPressed: () {
              if(result != "" && result != display_welcome && result != display_permission_denied &&
                  result != display_no_scan && !result.startsWith(display_unknown)) {
                onTap();
                showInSnackBar("Records Saved !!!", TodoColors.baseColors[widget.colorIndex]);
              }
            },
          ),
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
            _buildTile(
              Padding
                (
                padding: const EdgeInsets.all(24.0),
                child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Center
                        (
                      child:
                         Text('SCAN CODE', style: TodoColors.textStyle6)
                      ),
                    ]
                ),
              ),
              onTap: _scanQR,
            ),
            _buildTile2(
              Padding
                (
                padding: const EdgeInsets.all(8.0),
                child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Expanded( child:
                      Text(result, style: TodoColors.textStyle6), flex: 1,)
                    ]
                ),
              ),
            ),
            _buildTile(
              Padding
                (
                padding: const EdgeInsets.all(24.0),
                child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Center
                        (
                          child:
                          Text('RESET SCANNER', style: TodoColors.textStyle6)
                      ),
                    ]
                ),
              ),
              onTap: onTap
            ),
          ],
          staggeredTiles: [
            StaggeredTile.extent(2, 110.0),
            StaggeredTile.extent(2, 310.0),
            StaggeredTile.extent(2, 110.0),
          ],
        )
    );
  }

  void onTap (){
    setState(() {
      result = "";
    });
    showInSnackBar("Scanner has been reset", TodoColors.baseColors[widget.colorIndex]);
  }

  void showInSnackBar(String value, Color c) {
    Scaffold.of(context).showSnackBar(new SnackBar(
      content: new Text(value),
      backgroundColor: c,
    ));
  }


  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        color: TodoColors.baseColors[widget.colorIndex],
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

  Widget _buildTile2(Widget child, {Function() onTap}) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        color: Colors.white,
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
}
