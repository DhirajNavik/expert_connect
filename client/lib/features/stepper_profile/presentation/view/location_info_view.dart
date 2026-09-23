import 'package:client/core/components/custom_button.dart';
import 'package:client/core/components/custom_text_field.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:client/features/location/domain/entities/address_entity.dart';
import 'package:client/features/location/presentation/bloc/location_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../utils/location_fields.dart';

class LocationInfoView extends StatelessWidget {
  final PageController controller;
  final LocationBloc bloc;
  final GlobalKey<FormBuilderState> formKey;

  const LocationInfoView({
    super.key,
    required this.controller,
    required this.bloc,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: _LocationInfoContent(
        controller: controller,
        formKey: formKey,
        bloc: bloc,
      ),
    );
  }
}

class _LocationInfoContent extends StatefulWidget {
  final PageController controller;
  final GlobalKey<FormBuilderState> formKey;
  final LocationBloc bloc;

  const _LocationInfoContent({
    required this.controller,
    required this.formKey,
    required this.bloc,
  });

  @override
  State<_LocationInfoContent> createState() => _LocationInfoContentState();
}

class _LocationInfoContentState extends State<_LocationInfoContent>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocListener<LocationBloc, LocationState>(
      bloc: widget.bloc,
      listener: (context, state) {
        state.whenOrNull(
          fetchedAddress: (address) {
            _populateFormFields(address);
          },
        );
      },
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.horizontalspacing,
          vertical: Dimens.verticalspacing,
        ),
        child: FormBuilder(
          key: widget.formKey,
          child: Column(
            spacing: Dimens.widgetSpacing,
            children: [
              BlocSelector<LocationBloc, LocationState, bool>(
                bloc: widget.bloc,
                selector: (state) {
                  return state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  );
                },
                builder: (context, isLoading) {
                  return CustomButton(
                    text: "Use my location",
                    isLoading: isLoading,
                    onPressed: () {
                      widget.bloc.add(LocationEvent.getAddress());
                    },
                  );
                },
              ),

              CustomTextForm(
                name: LocationFields.country,
                hintText: "Enter your country",
                // validator: FormValidators.validateData( "Please provide your country", ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
                ],
              ),

              CustomTextForm(
                name: LocationFields.state,
                hintText: "Enter your state",
                //  validator: FormValidators.validateData( "Please provide your state",  ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
                ],
              ),

              CustomTextForm(
                name: LocationFields.city,
                hintText: "Enter your city",
                //  validator: FormValidators.validateData(  "Please provide your city", ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
                ],
              ),

              CustomTextForm(
                name: LocationFields.postalCode,
                keyboardType: TextInputType.number,
                hintText: "Enter pincode",
                //  validator: FormValidators.validateData(  "Please provide your pincode", ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              CustomTextForm(
                name: LocationFields.address,
                hintText: "Enter complete Address",
                maxLines: 4,
                // validator: FormValidators.validateData( "Please provide your country", ),
              ),

              Row(
                spacing: Dimens.gapX2,
                children: [
                  Expanded(
                    child: CustomButton(
                      text: "Previous",
                      onPressed: () {
                        widget.controller.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                  ),

                  Expanded(
                    child: CustomButton(text: "Next", onPressed: _onNext),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _populateFormFields(AddressEntity? address) {
    final formState = widget.formKey.currentState;

    if (formState == null) return;

    formState.patchValue({
      LocationFields.address: address?.address ?? '',
      LocationFields.country: address?.country ?? '',
      LocationFields.state: address?.state ?? '',
      LocationFields.city: address?.city ?? '',
      LocationFields.postalCode: address?.postalCode ?? '',
    });
  }

  void _onNext() {
    if (!(widget.formKey.currentState?.saveAndValidate() ?? false)) {
      return;
    }

    final formData = widget.formKey.currentState!.value;

    debugPrint('Location form: $formData');

    widget.controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
