import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task02/core/theme/manger/color_manger.dart';
import 'package:task02/core/theme/manger/text_styles.dart';
import 'package:task02/main.dart';
import 'package:task02/presentation/pages/user/widgets/user_list_tile.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  TextEditingController addressEditingController = TextEditingController();

  @override
  void dispose() {
    addressEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Dummy data for UI
    const userName = "UserName";
    const userEmail = "email@example.com";
    const userAddress = "123 Example Street";

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ListTile(
                title: Text.rich(
                  TextSpan(children: <InlineSpan>[
                    TextSpan(
                      text: 'Hey, ',
                      style: TextStyle(fontSize: 30,color: ColorManger.kPrimaryColor,fontWeight: FontWeight.bold),),
                    TextSpan(
                      text: 'Amr',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                ),
                subtitle: Text(
                  'Amr@gmail.com',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: const Divider(color: Colors.grey),
              ),
              UserListTile(
                title: 'Address',
                subtitle: userAddress,
                icon: const Icon(FontAwesomeIcons.user,color: ColorManger.kPrimaryColor,),
                onPress: () async {
                  await _showAddressDialog(context);
                },
              ),
              UserListTile(
                title: 'Order',
                icon: const Icon(FontAwesomeIcons.bagShopping,color: ColorManger.kPrimaryColor,),
                onPress: () {},
              ),
              UserListTile(
                title: 'Wishlist',
                icon: const Icon(FontAwesomeIcons.heart,color: ColorManger.kPrimaryColor,),
                onPress: () {},
              ),
              UserListTile(
                title: 'Viewed',
                icon: const Icon(FontAwesomeIcons.eye,color: ColorManger.kPrimaryColor,),
                onPress: () {},
              ),
              UserListTile(
                title: 'Forgot Password',
                icon: const Icon(FontAwesomeIcons.unlock,color: ColorManger.kPrimaryColor,),
                onPress: () {},
              ),

              UserListTile(
                title: 'Sign in',
                icon: const Icon(FontAwesomeIcons.arrowRightToBracket,color: ColorManger.kPrimaryColor,),
                onPress: () {},
              ),
              SizedBox(height: 50.h,),
              const Text('Versoion 1.0.0'),
              const Text('@ 2024 Copyright'),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showAddressDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Update Address'),
          content: TextField(
            controller: addressEditingController,
            maxLines: 2,
            decoration:
                const InputDecoration(helperText: 'Add The New Address'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
