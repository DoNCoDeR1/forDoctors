import 'package:flutter/material.dart';
import 'package:meals/main.dart';
import 'package:meals/screens/tabs.dart';
import 'package:meals/widgets/main_drawer.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filters"),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: activeFilters[Filter.glutenFree]!,
            onChanged: (newValue) {
              ref.read(filtersProvider.notifier).setFilter(Filter.glutenFree, newValue);
            },
            title: Text(
              "Gluten-free",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 24),
            ),
            subtitle: Text(
              "Only include gluten-free meals.",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.lactoseFree]!,
            onChanged: (newValue) {
              ref.read(filtersProvider.notifier).setFilter(Filter.lactoseFree, newValue);
            },
            title: Text(
              "Lactose-free",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 24),
            ),
            subtitle: Text(
              "Only include lactose-free meals.",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegetarian]!,
            onChanged: (newValue) {
              ref.read(filtersProvider.notifier).setFilter(Filter.vegetarian, newValue);
            },
            title: Text(
              "Vegetarian",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 24),
            ),
            subtitle: Text(
              "Only include vegetarian meals.",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegan]!,
            onChanged: (newValue) {
              ref.read(filtersProvider.notifier).setFilter(Filter.vegan, newValue);
            },
            title: Text(
              "Vegan",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 24),
            ),
            subtitle: Text(
              "Only include vegan meals.",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
  }
}
