// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
class UserListTile extends StatelessWidget {
  const UserListTile({Key? key, required this.title,  this.subtitle, required this.icon, required this.onPress, }) : super(key: key);
  final String title;
  final String? subtitle;
  final Icon icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: ColorManger.kPrimaryColor)
        ),
        child: ListTile(
          title: Text(title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
          subtitle:  subtitle !=null ? Text('$subtitle'):null,
          leading: icon,
          trailing: const Icon(FontAwesomeIcons.chevronRight,color: ColorManger.kGreyColor,),
          onTap: (){
            onPress();
          },
        ),
      ),
    );
  }
}
