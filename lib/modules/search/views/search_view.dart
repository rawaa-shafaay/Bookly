import 'package:bookly/core/di/service_locator.dart';
import 'package:bookly/modules/search/bloc/cubit/search_cubit.dart';
import 'package:bookly/modules/search/views/search_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt<SearchCubit>())],

      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(body: SafeArea(child: SearchBody())),
      ),
    );
  }
}
