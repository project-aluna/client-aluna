import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../../app/theme/app_colors.dart';


class MainShellScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainShellScreen({super.key, required this.navigationShell});

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (index) => _onTap(context, index),
        backgroundColor: AppColors.butterCream,
        indicatorColor: AppColors.roseClay.withValues(alpha: 0.2),
        elevation: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(LucideIcons.sun),
            selectedIcon: Icon(LucideIcons.sun, color: AppColors.roseClay),
            label: 'Today',
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.listTodo),
            selectedIcon: Icon(LucideIcons.listTodo, color: AppColors.roseClay),
            label: 'Routines',
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.sparkles),
            selectedIcon: Icon(LucideIcons.sparkles, color: AppColors.roseClay),
            label: 'Reflection',
          ),
          NavigationDestination(
            icon: Icon(LucideIcons.user),
            selectedIcon: Icon(LucideIcons.user, color: AppColors.roseClay),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
