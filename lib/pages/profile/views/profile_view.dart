import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_locate/app/bloc/authentication_bloc.dart';
import 'package:car_rental_locate/commons/constants/images.dart';
import 'package:car_rental_locate/commons/constants/sizes.dart';
import 'package:car_rental_locate/commons/widgets/app_app_bar.dart';
import 'package:car_rental_locate/di.dart';
import 'package:car_rental_locate/repositories/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        context,
        titleText: 'Hồ sơ',
        leading: false,
      ),
      body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          final carOwner = state.carOwner;
          if (carOwner == null) return const SizedBox();

          return Column(
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (carOwner.avatarUrl == null)
                    Image.asset(
                      Images.userImage,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ).cornerRadiusWithClipRRect(60)
                  else
                    CachedNetworkImage(
                      imageUrl: carOwner.avatarUrl!,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ).cornerRadiusWithClipRRect(60),
                ],
              ),
              const SizedBox(height: s16),
              Text(carOwner.name, style: boldTextStyle(size: 16)),
              const SizedBox(height: s08),
              Text(carOwner.phone, style: secondaryTextStyle()),
              const SizedBox(height: s64),
              const Divider(height: 0),
              const SizedBox(height: s16),
              SettingItemWidget(
                leading: Icon(Icons.login, color: context.iconColor),
                title: 'Đăng xuất',
                titleTextStyle: boldTextStyle(),
                onTap: () {
                  showConfirmDialogCustom(
                    context,
                    onAccept: (c) async {
                      await getIt.get<AuthenticationRepository>().logOut();
                    },
                    dialogType: DialogType.CONFIRMATION,
                    primaryColor: context.primaryColor,
                    title: 'Bạn có muốn đăng xuất không?',
                    negativeText: 'Hủy',
                    positiveText: 'Đồng ý',
                  );
                },
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                  color: context.iconColor,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
