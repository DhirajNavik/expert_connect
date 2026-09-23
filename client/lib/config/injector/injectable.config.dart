// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../core/dio/network_requester.dart' as _i1066;
import '../../features/auth/data/datasource/auth_datasource.dart' as _i43;
import '../../features/auth/data/datasource/auth_remote.dart' as _i25;
import '../../features/auth/data/repository/auth_repository_impl.dart' as _i409;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/customer_usecase.dart' as _i338;
import '../../features/auth/domain/usecases/expert_usecase.dart' as _i511;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i188;
import '../../features/auth/presentation/bloc/login/login_bloc.dart' as _i208;
import '../../features/auth/presentation/bloc/signup/signup_bloc.dart' as _i173;
import '../../features/auth/presentation/cubit/login_form/login_form_cubit.dart'
    as _i218;
import '../../features/auth/presentation/cubit/remember_me/remember_me_cubit.dart'
    as _i624;
import '../../features/auth/presentation/cubit/signup_form/signup_form_cubit.dart'
    as _i256;
import '../../features/location/data/datasource/maps_datasource.dart' as _i1062;
import '../../features/location/data/datasource/maps_remote.dart' as _i688;
import '../../features/location/data/repositories/map_repository_impl.dart'
    as _i581;
import '../../features/location/domain/repositories/map_repository.dart'
    as _i455;
import '../../features/location/domain/usecases/address_usecase.dart' as _i1039;
import '../../features/location/presentation/bloc/location_bloc.dart' as _i845;
import '../../features/navigation/cubit/navigation_cubit.dart' as _i177;
import '../../features/schedule/data/datasources/schedule_datasource.dart'
    as _i191;
import '../../features/schedule/data/datasources/schedule_remote.dart' as _i267;
import '../../features/schedule/data/repositories/schedule_repository_impl.dart'
    as _i688;
import '../../features/schedule/domain/repositories/schedule_repository.dart'
    as _i736;
import '../../features/schedule/domain/usecases/my_schedule_usecase.dart'
    as _i55;
import '../../features/schedule/presentation/bloc/scheduler_bloc.dart' as _i216;
import '../../features/schedule/presentation/cubit/calendar_cubit.dart'
    as _i961;
import '../../features/stepper_profile/data/datasource/stepper_datasource.dart'
    as _i546;
import '../../features/stepper_profile/data/datasource/stepper_remote.dart'
    as _i642;
import '../../features/stepper_profile/data/repositories/stepper_repository_impl.dart'
    as _i433;
import '../../features/stepper_profile/domain/repositories/stepper_repository.dart'
    as _i289;
import '../../features/stepper_profile/domain/usecases/category_usecase.dart'
    as _i444;
import '../../features/stepper_profile/domain/usecases/experience_usecase.dart'
    as _i743;
import '../../features/stepper_profile/domain/usecases/sub_category_usecase.dart'
    as _i177;
import '../../features/stepper_profile/presentation/bloc/profile_bloc/profile_bloc.dart'
    as _i273;
import '../../features/stepper_profile/presentation/bloc/stepper_bloc/profile_stepper_bloc.dart'
    as _i809;
import '../../features/theme/cubit/theme_cubit.dart' as _i713;
import '../../l10n/general_stream.dart' as _i467;
import '../routes/app_route_conf.dart' as _i793;
import '../routes/route_exports.dart' as _i750;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appRouteModule = _$AppRouteModule();
    gh.factory<_i218.LoginFormCubit>(() => _i218.LoginFormCubit());
    gh.factory<_i624.RememberMeCubit>(() => _i624.RememberMeCubit());
    gh.factory<_i256.SignupFormCubit>(() => _i256.SignupFormCubit());
    gh.factory<_i177.NavigationCubit>(() => _i177.NavigationCubit());
    gh.factory<_i961.CalendarCubit>(() => _i961.CalendarCubit());
    gh.factory<_i809.ProfileStepperBloc>(() => _i809.ProfileStepperBloc());
    gh.singleton<_i750.GoRouter>(() => appRouteModule.router);
    gh.singleton<_i1066.NetworkRequester>(() => _i1066.NetworkRequester());
    gh.singleton<_i713.ThemeCubit>(() => _i713.ThemeCubit());
    gh.singleton<_i467.LocaleCubit>(() => _i467.LocaleCubit());
    gh.lazySingleton<_i546.StepperDatasource>(
      () => _i642.StepperRemote(gh<_i1066.NetworkRequester>()),
    );
    gh.lazySingleton<_i1062.MapsDatasource>(
      () => _i688.MapsRemote(gh<_i1066.NetworkRequester>()),
    );
    gh.lazySingleton<_i43.AuthDataSource>(
      () => _i25.AuthRemote(gh<_i1066.NetworkRequester>()),
    );
    gh.lazySingleton<_i191.ScheduleDatasource>(
      () => _i267.ScheduleRemote(gh<_i1066.NetworkRequester>()),
    );
    gh.lazySingleton<_i289.StepperRepository>(
      () => _i433.StepperRepositoryImpl(gh<_i546.StepperDatasource>()),
    );
    gh.lazySingleton<_i444.CategoryUsecase>(
      () => _i444.CategoryUsecase(gh<_i289.StepperRepository>()),
    );
    gh.lazySingleton<_i743.ExperienceUsecase>(
      () => _i743.ExperienceUsecase(gh<_i289.StepperRepository>()),
    );
    gh.lazySingleton<_i177.SubCategoryUsecase>(
      () => _i177.SubCategoryUsecase(gh<_i289.StepperRepository>()),
    );
    gh.lazySingleton<_i455.MapRepository>(
      () => _i581.MapRepositoryImpl(gh<_i1062.MapsDatasource>()),
    );
    gh.lazySingleton<_i787.AuthRepository>(
      () => _i409.AuthRepositoryImpl(gh<_i43.AuthDataSource>()),
    );
    gh.lazySingleton<_i736.ScheduleRepository>(
      () => _i688.ScheduleRepositoryImpl(gh<_i191.ScheduleDatasource>()),
    );
    gh.lazySingleton<_i55.MyScheduleUsecase>(
      () => _i55.MyScheduleUsecase(gh<_i736.ScheduleRepository>()),
    );
    gh.factory<_i273.ProfileBloc>(
      () => _i273.ProfileBloc(
        gh<_i444.CategoryUsecase>(),
        gh<_i177.SubCategoryUsecase>(),
        gh<_i743.ExperienceUsecase>(),
      ),
    );
    gh.lazySingleton<_i188.LoginUseCase>(
      () => _i188.LoginUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i338.CustomerUsecase>(
      () => _i338.CustomerUsecase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i511.ExpertUsecase>(
      () => _i511.ExpertUsecase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i1039.AddressUsecase>(
      () => _i1039.AddressUsecase(gh<_i455.MapRepository>()),
    );
    gh.factory<_i173.SignupBloc>(
      () => _i173.SignupBloc(
        customerUsecase: gh<_i338.CustomerUsecase>(),
        expertUsecase: gh<_i511.ExpertUsecase>(),
      ),
    );
    gh.factory<_i208.LoginBloc>(
      () => _i208.LoginBloc(loginUsecase: gh<_i188.LoginUseCase>()),
    );
    gh.factory<_i216.SchedulerBloc>(
      () => _i216.SchedulerBloc(gh<_i55.MyScheduleUsecase>()),
    );
    gh.factory<_i845.LocationBloc>(
      () => _i845.LocationBloc(gh<_i1039.AddressUsecase>()),
    );
    return this;
  }
}

class _$AppRouteModule extends _i793.AppRouteModule {}
