import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/presentation/bloc/name/name_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NameBloc, NameState>(
      builder: (context, state) {
        return Scaffold(
          appBar: MpTextAppBar(title: "Profile"),
          body: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Column(
              children: [
                MpAvatar.icon(
                  icon: Icons.person_2_rounded,
                  size: MpAvatarSize.custom(value: 120.0),
                ),
                MpTextField(
                  controller: nameController,
                  label: "My Name",
                  hint: "e.g Johnie",
                  textInputType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: MpButton.primary(
                    label: 'Change Name',
                    onPressed: () {
                      context
                          .read<NameBloc>()
                          .add(SetName(name: nameController.text));
                    },
                  ),
                ),
                const MpVerticalSpace.xl(),
                const FoodRecommendation(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class FoodRecommendation extends StatelessWidget {
  const FoodRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Food recommendation for you", style: MpTextStyles.md.semiBold),
        const MpVerticalSpace.s(),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imageSliders,
        ),
      ],
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1611293388250-580b08c4a145?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1587560556729-29774f46ad0c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1622622008494-60c9e6b41996?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1642069598717-f1ea92926d35?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1582716401301-b2407dc7563d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1542826438-bd32f43d626f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80'
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        margin: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          child: Image.network(
            item,
            fit: BoxFit.cover,
            width: 1000.0,
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              return child;
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    )
    .toList();
