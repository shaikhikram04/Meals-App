import 'package:flutter/material.dart';
// import 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _veganFilterSet = false;
  var _vegeterianFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(
      //   onSelectScreen: (identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'meals') {
      //       Navigator.of(context).pushReplacement(PageRouteBuilder(
      //         pageBuilder: (context, animation, secondaryAnimation) =>
      //             const TabsScreen(),
      //       ));
      //     }
      //   },
      // ),
      body: Column(children: [
        SwitchListTile(
          value: _glutenFreeFilterSet,
          onChanged: (isChecked) {
            setState(() {
              _glutenFreeFilterSet = isChecked;
            });
          },
          title: Text(
            'Gluten-free',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          subtitle: Text(
            'Only include gluten-free meals.',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: _lactoseFreeFilterSet,
          onChanged: (isChecked) {
            setState(() {
              _lactoseFreeFilterSet = isChecked;
            });
          },
          title: Text(
            'Lactose-free',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          subtitle: Text(
            'Only include lactose-free meals.',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: _veganFilterSet,
          onChanged: (isChecked) {
            setState(() {
              _veganFilterSet = isChecked;
            });
          },
          title: Text(
            'Vegan',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          subtitle: Text(
            'Only include vegan meals.',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: _vegeterianFilterSet,
          onChanged: (isChecked) {
            setState(() {
              _vegeterianFilterSet = isChecked;
            });
          },
          title: Text(
            'Vegeterian',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          subtitle: Text(
            'Only include vegeterian meals.',
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          activeColor: Theme.of(context).colorScheme.tertiary,
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
      ]),
    );
  }
}
