import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:easy_localization/easy_localization.dart';

class AddImages extends StatefulWidget {
  final List<File>? selectedImages;

  const AddImages({Key? key, this.selectedImages}) : super(key: key);
  @override
  _AddImagesState createState() => _AddImagesState();
}

class _AddImagesState extends State<AddImages> {
  final picker = ImagePicker();

  getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile == null) {
      setState(() {
        widget.selectedImages!.add(File(pickedFile!.path));
      });
    } else {
      print('No image selected.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SizedBox(width: 10,),
            // widget.selectedImages!.length > 2
            // ? Icon(
            //                                 Icons.image_outlined,
            //                                 color: Theme.of(context)
            //                                     .colorScheme
            //                                     .onSecondary,
            //                                 size: 50,
            //                               ) :
            // Icon(
            //                                 Icons.image_outlined,
            //                                 color: Theme.of(context)
            //                                     .colorScheme
            //                                     .onSecondary,
            //                                 size: 50,
            //                               ),
            // SizedBox(width: 10,),
            widget.selectedImages!.length > 1
                ? const SizedBox(
                    width: 30,
                    height: 43,
                  )
                : FlatButton(
                    height: 32.h,
                    minWidth: 161.w,
                    color: Theme.of(context).colorScheme.surface,
                    onPressed: () {
                      getImage();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.drive_folder_upload,
                          color: Theme.of(context).colorScheme.onBackground,
                          size: 20,
                        ),
                        Text(
                          "Upload",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 0,
          width: double.infinity,
          child: ListView.builder(
              itemCount: widget.selectedImages!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(children: [
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 10),
                    width: 90.w,
                    height: 78.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.file(
                        widget.selectedImages![index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: GestureDetector(
                      child: Icon(
                        Icons.clear,
                        size: 24,
                        color: Theme.of(context).primaryColor,
                      ),
                      onTap: () {
                        setState(() {
                          widget.selectedImages!.removeAt(index);
                        });
                      },
                    ),
                  )
                ]);
              }),
        ),
      ]),
    );
  }
}
