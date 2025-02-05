import 'package:ecom_provider/constants.dart';
import 'package:ecom_provider/features/profile/presentation/widgets/profile_info_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            ClipOval(
              child: Image.asset(
                'images/person.jpg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Change Profile Picture',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              color: kPrimaryColor,
              thickness: .5,
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Profile Inforamtion',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const ProfileInfoWidget(
              title: 'Name',
              subTitle: 'Ibrahim Khan',
            ),
            const SizedBox(height: 10),
            const ProfileInfoWidget(
              title: 'Username',
              subTitle: 'Ibrahim',
            ),
            const SizedBox(height: 30),
            const Divider(
              color: kPrimaryColor,
              thickness: .5,
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Personal Inforamtion',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const ProfileInfoWidget(
              title: 'User ID',
              subTitle: '123456',
            ),
            const SizedBox(height: 10),
            const ProfileInfoWidget(
              title: 'E-mail',
              subTitle: 'abc@gmail.com',
            ),
            const SizedBox(height: 10),
            const ProfileInfoWidget(
              title: 'Phone Number',
              subTitle: '0123456789',
            ),
            const SizedBox(height: 10),
            const ProfileInfoWidget(
              title: 'Gender',
              subTitle: 'Male',
            ),
            const SizedBox(height: 10),
            const ProfileInfoWidget(
              title: 'Date of Birth',
              subTitle: '6 Mar, 1998',
            ),
            const SizedBox(height: 10),
            const Divider(
              color: kPrimaryColor,
              thickness: .5,
            ),
          ],
        ),
      ),
    );
  }
}

