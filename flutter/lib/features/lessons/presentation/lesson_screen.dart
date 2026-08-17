import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_theme.dart';
import '../application/lesson_provider.dart';
import '../data/lesson_dto.dart';
import 'widgets/flashcard_view.dart';

class LessonScreen extends ConsumerStatefulWidget {
  final String lessonId;

  const LessonScreen({super.key, required this.lessonId});

  @override
  ConsumerState<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends ConsumerState<LessonScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lessonAsync = ref.watch(lessonDetailProvider(widget.lessonId));

    return Scaffold(
      backgroundColor: AppColors.washi,
      appBar: AppBar(
        title: lessonAsync.when(
          data: (lesson) => Text(lesson.name),
          loading: () => const Text('Đang tải...'),
          error: (_, __) => const Text('Lỗi'),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: AppColors.teal,
          unselectedLabelColor: AppColors.sumiSoft,
          indicatorColor: AppColors.teal,
          tabs: const [
            Tab(text: 'Từ vựng'),
            Tab(text: 'Kanji'),
            Tab(text: 'Ngữ pháp'),
          ],
        ),
      ),
      body: lessonAsync.when(
        data: (lesson) {
          return TabBarView(
            controller: _tabController,
            children: [
              _buildVocabTab(lesson.vocabulary),
              _buildKanjiTab(lesson.kanji),
              _buildGrammarTab(lesson.grammar),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Lỗi: $error')),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              context.push('/lessons/${widget.lessonId}/quiz');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.teal,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text(
              'Luyện tập ngay',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVocabTab(List<VocabularyDto> vocabList) {
    if (vocabList.isEmpty) return const Center(child: Text('Không có từ vựng'));

    return PageView.builder(
      itemCount: vocabList.length,
      itemBuilder: (context, index) {
        final vocab = vocabList[index];
        return Padding(
          padding: const EdgeInsets.all(32.0),
          child: FlashcardView(
            front: _buildCardContent(vocab.word, 'Nhấn để xem nghĩa'),
            back: _buildCardContent(vocab.meaning, vocab.reading, isBack: true),
          ),
        );
      },
    );
  }

  Widget _buildKanjiTab(List<KanjiDto> kanjiList) {
    if (kanjiList.isEmpty) return const Center(child: Text('Không có Kanji'));

    return PageView.builder(
      itemCount: kanjiList.length,
      itemBuilder: (context, index) {
        final kanji = kanjiList[index];
        return Padding(
          padding: const EdgeInsets.all(32.0),
          child: FlashcardView(
            front: _buildCardContent(
              kanji.character,
              'Nhấn để xem nghĩa',
              fontSize: 64,
            ),
            back: _buildCardContent(
              kanji.meaning,
              'On: ${kanji.onyomi ?? "-"}\nKun: ${kanji.kunyomi ?? "-"}',
              isBack: true,
            ),
          ),
        );
      },
    );
  }

  Widget _buildGrammarTab(List<GrammarDto> grammarList) {
    if (grammarList.isEmpty)
      return const Center(child: Text('Không có Ngữ pháp'));

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: grammarList.length,
      itemBuilder: (context, index) {
        final grammar = grammarList[index];
        return Card(
          color: AppColors.paperCard,
          elevation: 2,
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  grammar.pattern,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.teal,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  grammar.meaning,
                  style: const TextStyle(fontSize: 16, color: AppColors.sumi),
                ),
                if (grammar.usage != null) ...[
                  const Divider(height: 24),
                  const Text(
                    'Cách dùng:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.sumiSoft,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    grammar.usage!,
                    style: const TextStyle(color: AppColors.sumi),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCardContent(
    String title,
    String subtitle, {
    bool isBack = false,
    double fontSize = 32,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: isBack ? AppColors.washiDeep : AppColors.paperCard,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: isBack ? AppColors.teal : AppColors.sumi,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, color: AppColors.sumiSoft),
            ),
          ],
        ),
      ),
    );
  }
}
