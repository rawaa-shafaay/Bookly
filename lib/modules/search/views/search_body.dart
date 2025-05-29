import 'package:bookly/modules/search/bloc/cubit/search_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
      child: Column(
        children: [
          Card(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              autofocus: true,
              keyboardType: TextInputType.text,
              onSubmitted: (value) {
                if (value.trim().isNotEmpty) {
                  context.read<SearchCubit>().search(value.trim());
                }
              },
              onChanged: (value) {
                if (value.trim().isNotEmpty) {
                  context.read<SearchCubit>().search(value.trim());
                }
              },
              decoration: InputDecoration(
                hintText: "search",
                prefixIcon: _buildBackButton(context),
                suffixIcon:
                    controller.text.isNotEmpty
                        ? _buildClearButton()
                        : const SizedBox.shrink(),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state is SearchLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is SearchFailure) {
                  return ErrorWidget(state.errMessage);
                } else if (state is SearchSuccess) {
                  return ListView.builder(
                    itemCount: state.books.length,
                    itemBuilder: (context, index) {
                      final book = state.books[index];
                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        ),

                        leading: SizedBox(
                          width: 50,
                          height: 75,
                          child: CachedNetworkImage(
                            imageUrl:
                                book.volumeInfo?.imageLinks?.thumbnail ?? '',
                          ),
                        ),
                        title: Text(book.volumeInfo?.title ?? ''),
                        subtitle: Text(
                          book.volumeInfo?.authors?.join(', ') ?? '',
                        ),
                      );
                    },
                  );
                }
                return const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.arrow_back),
    );
  }

  Widget _buildClearButton() {
    return IconButton(
      onPressed: () {
        setState(() {
          controller.clear();
        });
      },
      icon: const Icon(Icons.clear),
    );
  }
}
