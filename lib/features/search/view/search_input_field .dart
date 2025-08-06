import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/search/view_model/search_cubit.dart';

class SearchInputField extends StatefulWidget {
  const SearchInputField({super.key});

  @override
  State<SearchInputField> createState() => _SearchInputFieldState();
}

class _SearchInputFieldState extends State<SearchInputField> {
  final controller = TextEditingController();

  void _handleSubmit(String value) {
    if (value.trim().isNotEmpty) {
      context.read<SearchCubit>().searchBooks(value.trim());
    } else {
      context.read<SearchCubit>().clear();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: TextInputAction.search,
      onChanged:
          (val) =>
              val.isEmpty
                  ? context.read<SearchCubit>().clear()
                  : context.read<SearchCubit>().searchBooks(val.trim()),
      onSubmitted: _handleSubmit,
      decoration: InputDecoration(
        hintText: 'Search books...',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        suffixIcon:
            controller.text.isNotEmpty
                ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    controller.clear();
                    context.read<SearchCubit>().clear();
                  },
                )
                : null,
      ),
    );
  }
}
