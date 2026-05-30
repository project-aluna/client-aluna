import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_typography.dart';

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
      backgroundColor: AppColors.butterCream,
      body: Stack(
        children: [
          navigationShell,

          // Floating Bottom Nav
          Positioned(
            bottom: MediaQuery.of(context).padding.bottom + 16,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.cocoaInk.withValues(alpha: 0.08),
                    blurRadius: 24,
                    offset: const Offset(0, 8),
                  ),
                  BoxShadow(
                    color: AppColors.peachGlow.withValues(alpha: 0.06),
                    blurRadius: 40,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _NavItem(
                    icon: LucideIcons.sun,
                    label: 'Today',
                    isActive: navigationShell.currentIndex == 0,
                    onTap: () => _onTap(context, 0),
                  ),
                  _NavItem(
                    icon: LucideIcons.listTodo,
                    label: 'Routines',
                    isActive: navigationShell.currentIndex == 1,
                    onTap: () => _onTap(context, 1),
                  ),
                  _NavItem(
                    icon: LucideIcons.sparkles,
                    label: 'Reflection',
                    isActive: navigationShell.currentIndex == 2,
                    onTap: () => _onTap(context, 2),
                  ),
                  _NavItem(
                    icon: LucideIcons.user,
                    label: 'Profile',
                    isActive: navigationShell.currentIndex == 3,
                    onTap: () => _onTap(context, 3),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOutCubic,
        padding: EdgeInsets.symmetric(
          horizontal: isActive ? 16 : 12,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: isActive
              ? AppColors.roseClay.withValues(alpha: 0.12)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: isActive ? AppColors.roseClay : AppColors.cocoaInk.withValues(alpha: 0.4),
            ),
            // Only show label when active
            if (isActive) ...[
              const SizedBox(width: 6),
              Text(
                label,
                style: AppTypography.caption.copyWith(
                  color: AppColors.roseClay,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
