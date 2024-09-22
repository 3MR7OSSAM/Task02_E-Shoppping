import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task02/presentation/pages/search/bloc/search_cubit.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: Colors.grey.shade400
            )
        ),
        child:  TextField(
          autofocus: true,
            onChanged: (query) {
              context.read<SearchCubit>().search(query);
            },
            decoration: const InputDecoration(
          hintText: 'Search for something...',
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15),
        )),
      ),
    );
  }
}
