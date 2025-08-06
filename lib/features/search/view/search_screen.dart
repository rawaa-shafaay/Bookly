import 'package:bookly/features/search/view/search_input_field%20.dart';
import 'package:bookly/features/search/view/widgets/search_results_list.dart';
import 'package:bookly/features/search/view_model/search_cubit.dart';
import 'package:bookly/features/search/view_model/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SearchInputField(),
            SizedBox(height: 10),
            Expanded(child: _SearchResultsBuilder()),
          ],
        ),
      ),
    );
  }
}

class _SearchResultsBuilder extends StatelessWidget {
  const _SearchResultsBuilder();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: Text('Type to search...')),
          loading: () => const Center(child: CircularProgressIndicator()),
          failure: (message) => Center(child: Text('Error: $message')),
          success: (books) => SearchResultsList(books: books),
        );
      },
    );
  }
}
