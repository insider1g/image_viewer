import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_viewer/presentation/core/styles.dart';

class SearchBottomSheet extends StatefulWidget {
  final String text;

  SearchBottomSheet({Key key, this.text}) : super(key: key);

  @override
  _SearchBottomSheetState createState() => _SearchBottomSheetState();

  static Future<String> show(BuildContext context, {String text}) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) => SearchBottomSheet(text: text));
  }
}

class _SearchBottomSheetState extends State<SearchBottomSheet> {
  TextEditingController _textController;

  @override
  void initState() {
    _textController = TextEditingController(text: widget.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(Insets.sm),
        decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Insets.med),
                topRight: Radius.circular(Insets.med))),
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(Insets.sm),
              child: TextField(
                  textInputAction: TextInputAction.search,
                  onSubmitted: (text) => Navigator.of(context).pop(text),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: Insets.sm)),
                  controller: _textController),
            )),
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.of(context).pop(_textController.text);
                })
          ],
        ));
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
