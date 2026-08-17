import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../lessons/application/lesson_provider.dart';
import '../../../lessons/data/lesson_dto.dart';
import 'lesson_list_item.dart';

class ModuleCard extends ConsumerWidget {
  final ModuleDto module;

  const ModuleCard({super.key, required this.module});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Gọi API để fetch lessons cho module này
    final lessonsAsync = ref.watch(moduleLessonsProvider(module.id));

    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(
          color: module.isLocked
              ? AppColors.sumi.withValues(alpha: 0.1)
              : AppColors.teal.withValues(alpha: 0.3),
          width: 2,
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: !module.isLocked && module.progressPercent < 100,
          enabled: !module.isLocked,
          tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: module.isLocked
                      ? AppColors.sumi.withValues(alpha: 0.1)
                      : AppColors.teal.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  module.isLocked
                      ? Icons.lock_rounded
                      : Icons.menu_book_rounded,
                  color: module.isLocked ? AppColors.sumi : AppColors.teal,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      module.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: module.isLocked
                            ? AppColors.sumi
                            : AppColors.sumi,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Progress bar
                    Stack(
                      children: [
                        Container(
                          height: 6,
                          decoration: BoxDecoration(
                            color: AppColors.sumi.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: module.progressPercent / 100.0,
                          child: Container(
                            height: 6,
                            decoration: BoxDecoration(
                              color: AppColors.teal,
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: lessonsAsync.when(
                data: (lessons) {
                  if (lessons.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Chưa có bài học nào trong module này',
                        style: TextStyle(color: AppColors.sumi),
                      ),
                    );
                  }

                  return Column(
                    children: lessons
                        .map((lesson) => LessonListItem(lesson: lesson))
                        .toList(),
                  );
                },
                loading: () => const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
                error: (err, stack) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Lỗi: $err'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
