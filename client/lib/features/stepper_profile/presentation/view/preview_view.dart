import 'package:client/core/components/custom_button.dart';
import 'package:client/core/components/read_more_text.dart';
import 'package:client/core/extension/context_extension.dart';
import 'package:client/core/utils/app_palettes.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:client/core/utils/sizedBox.dart';
import 'package:client/features/location/presentation/bloc/location_bloc.dart';
import 'package:client/features/stepper_profile/presentation/bloc/stepper_bloc/profile_stepper_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class PreviewView extends StatelessWidget {
  final GlobalKey<FormBuilderState> personalFormKey;
  final GlobalKey<FormBuilderState> locationFormKey;
  final PageController controller;
  final ProfileStepperBloc stepperBloc;
  final LocationBloc locationBloc;
  const PreviewView({
    super.key,
    required this.personalFormKey,
    required this.locationFormKey,
    required this.controller,
    required this.stepperBloc,
    required this.locationBloc,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Column(
      children: [
        MultiBlocProvider(
          providers: [
            BlocProvider.value(value: stepperBloc),
            BlocProvider.value(value: locationBloc),
          ],
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.horizontalspacing,
              vertical: Dimens.verticalspacing,
            ),
            child: Column(
              crossAxisAlignment: .start,
              spacing: Dimens.gapX3,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  spacing: Dimens.gapX2,
                  children: [
                    Text(
                      "About",
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomReadMore(
                      "",
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: textTheme.bodyMedium?.fontSize,
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                      suffixStyle: textTheme.bodyMedium?.copyWith(
                        color: context.colorScheme.onSurface,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
                // FormCommonChild(
                //   title: 'Category',
                //   body: state.categoryId.toString(),
                // ),
                // FormCommonChild(
                //   title: 'Sub Category',
                //   body: state.subCategory?.subCategoryName ?? "",
                // ),
                // FormCommonChild(
                //   title: 'Experience',
                //   body: state.experience?.yearsofexp ?? "",
                // ),
                BlocBuilder<LocationBloc, LocationState>(
                  bloc: locationBloc,
                  builder: (context, state) {
                    final address = state.maybeWhen(
                      fetchedAddress: (address) => address,
                      orElse: () => null,
                    );
                    return Column(
                      children: [
                        FormCommonChild(
                          title: 'Address',
                          body: address?.address ?? "",
                        ),
                        FormCommonChild(
                          title: 'Country',
                          body: address?.country ?? "",
                        ),
                        FormCommonChild(
                          title: 'State',
                          body: address?.state ?? "",
                        ),
                        FormCommonChild(
                          title: 'City',
                          body: address?.city ?? "",
                        ),
                        FormCommonChild(
                          title: 'Pincode',
                          body: address?.postalCode ?? "",
                        ),

                        // FormCommonChild(
                        //   title: 'Languages',
                        //   body: state.languages.join(", "),
                        // ),
                      ],
                    );
                  },
                ),
                SizeBox.size,
                Row(
                  spacing: Dimens.gapX2,
                  children: [
                    Expanded(
                      child: CustomButton(
                        onPressed: () => controller.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        ),
                        text: "Previous",
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        onPressed: () {
                          // bloc.add(SubmitProfile());
                        },
                        text: "Update",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FormCommonChild<T> extends StatelessWidget {
  final String title;
  final String body;
  final bool? isRequired;

  const FormCommonChild({
    super.key,
    required this.title,
    this.isRequired,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      crossAxisAlignment: .start,
      mainAxisSize: .max,
      children: [
        Text(
          title,
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizeBox.sizeWX4,
        Flexible(
          child: Text(
            body,
            style: context.textTheme.bodyMedium?.copyWith(
              color: AppPalettes.textSecondary,
            ),
          ),
        ),
      ],
    );
  }
}
