import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_theme.dart';
import '../application/lesson_provider.dart';
import '../data/lesson_api.dart';
import '../data/lesson_dto.dart';
import '../../progress/application/progress_provider.dart';
import '../../progress/data/progress_dto.dart';

class QuizScreen extends ConsumerStatefulWidget {
  final String lessonId;

  const QuizScreen({super.key, required this.lessonId});

  @override
  ConsumerState<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  String? _selectedAnswer;
  bool _isAnswered = false;
  bool _isCorrect = false;
  String? _explanation;
  final List<ExerciseResultDto> _exerciseResults = [];

  bool _isCompleting = false;

  void _submitAnswer(String answer, String exerciseId) async {
    if (_isAnswered) return;

    setState(() {
      _selectedAnswer = answer;
      _isAnswered = true;
    });

    try {
      final api = ref.read(lessonApiProvider);
      final result = await api.submitExercise(exerciseId, answer);

      if (mounted) {
        setState(() {
          _isCorrect = result.isCorrect;
          _explanation = result.explanation;
        });
      }

      _exerciseResults.add(
        ExerciseResultDto(
          exerciseId: exerciseId,
          userAnswer: answer,
          isCorrect: result.isCorrect,
        ),
      );
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Lỗi: $e')));
      }
    }
  }

  void _nextQuestion(int total) {
    if (_currentIndex < total - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentIndex++;
        _isAnswered = false;
        _selectedAnswer = null;
        _explanation = null;
      });
    } else {
      // Hoàn thành
      if (!_isCompleting) {
        _completeLesson();
      }
    }
  }

  void _completeLesson() async {
    if (_isCompleting) return;
    
    setState(() {
      _isCompleting = true;
    });

    final nav = Navigator.of(context, rootNavigator: true);
    BuildContext? dialogContext;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        dialogContext = context;
        return const Center(child: CircularProgressIndicator());
      },
    );

    final totalScore = _exerciseResults.where((r) => r.isCorrect).length * 10;

    final request = CompleteLessonRequest(
      score: totalScore,
      exerciseResults: _exerciseResults,
    );

    final notifier = ref.read(progressProvider.notifier);
    CompleteLessonResponseData? result;

    try {
      result = await notifier.completeLesson(widget.lessonId, request).timeout(
        const Duration(seconds: 15),
        onTimeout: () {
          debugPrint('completeLesson timeout!');
          return null;
        },
      );
    } catch (e) {
      debugPrint('completeLesson error: $e');
      result = null;
    } finally {
      if (mounted) {
        setState(() {
          _isCompleting = false;
        });
      }
      // Đảm bảo đóng đúng hộp thoại loading
      if (dialogContext != null && dialogContext!.mounted) {
        Navigator.of(dialogContext!).pop();
      } else {
        nav.pop(); 
      }
    }

    if (!mounted) return;

    if (result != null) {
      _showCompletionDialog(result);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Có lỗi xảy ra khi hoàn thành bài học')),
      );
    }
  }

  void _showCompletionDialog(CompleteLessonResponseData data) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        backgroundColor: AppColors.washi,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Icon
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.teal.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.emoji_events_rounded,
                  size: 64,
                  color: AppColors.teal,
                ),
              ),
              const SizedBox(height: 24),
              // Title
              const Text(
                'Hoàn Thành Xuất Sắc!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: AppColors.sumi,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              // XP Earned
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.washiDeep, width: 2),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.flash_on_rounded, color: Colors.orange, size: 28),
                    const SizedBox(width: 8),
                    Text(
                      '+${data.xpReceived} XP',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Stats Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatItem(Icons.star_rounded, Colors.amber, 'Tổng XP', '${data.totalXp}'),
                  _buildStatItem(Icons.local_fire_department_rounded, Colors.deepOrange, 'Chuỗi', '${data.streakDays} ngày'),
                ],
              ),
              
              if (data.isNextModuleUnlocked) ...[
                 const SizedBox(height: 24),
                 // Unlocked Message
                 Container(
                   padding: const EdgeInsets.all(16),
                   decoration: BoxDecoration(
                     color: AppColors.teal.withValues(alpha: 0.1),
                     borderRadius: BorderRadius.circular(16),
                     border: Border.all(color: AppColors.teal.withValues(alpha: 0.3)),
                   ),
                   child: const Row(
                     children: [
                       Icon(Icons.lock_open_rounded, color: AppColors.teal),
                       SizedBox(width: 12),
                       Expanded(
                         child: Text(
                           'Tuyệt vời! Bạn đã mở khoá module tiếp theo.',
                           style: TextStyle(color: AppColors.teal, fontWeight: FontWeight.bold),
                         ),
                       ),
                     ],
                   ),
                 ),
              ],
      
              const SizedBox(height: 32),
              // Action Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => context.go('/home'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.teal,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'TIẾP TỤC',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(IconData icon, Color color, String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.sumi,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.sumiSoft,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final exercisesAsync = ref.watch(lessonExercisesProvider(widget.lessonId));

    return Scaffold(
      backgroundColor: AppColors.washi,
      appBar: AppBar(title: const Text('Luyện tập')),
      body: exercisesAsync.when(
        data: (exercises) {
          if (exercises.isEmpty) {
            return const Center(child: Text('Không có bài tập nào.'));
          }

          return Column(
            children: [
              // Progress Bar
              LinearProgressIndicator(
                value: (_currentIndex + 1) / exercises.length,
                backgroundColor: AppColors.washiDeep,
                color: AppColors.teal,
                minHeight: 8,
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(), // Không cho vuốt ngang
                  itemCount: exercises.length,
                  itemBuilder: (context, index) {
                    final exercise = exercises[index];
                    return _buildQuestionView(exercise, exercises.length);
                  },
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Lỗi: $error')),
      ),
    );
  }

  Widget _buildQuestionView(ExerciseDto exercise, int total) {
    String displayQuestion = exercise.question;
    List<String> options = ['Đáp án A', 'Đáp án B', 'Đáp án C', 'Đáp án D'];

    // Lọc các tuỳ chọn từ ngoặc vuông (vd: [A, B, C])
    final match = RegExp(r'\[(.*?)\]').firstMatch(exercise.question);
    if (match != null) {
      final optionsStr = match.group(1);
      if (optionsStr != null && optionsStr.isNotEmpty) {
        options = optionsStr.split(',').map((e) => e.trim()).toList();
        displayQuestion = exercise.question
            .replaceAll(match.group(0)!, '')
            .trim();
      }
    }

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 24),
          Text(
            displayQuestion,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.sumi,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          ...options.map((option) {
            final isSelected = _selectedAnswer == option;
            Color getBorderColor() {
              if (!_isAnswered) return AppColors.washiDeep;
              if (isSelected) {
                return _isCorrect ? AppColors.teal : AppColors.hanko;
              }
              return AppColors.washiDeep;
            }

            Color getBgColor() {
              if (!_isAnswered) return AppColors.paperCard;
              if (isSelected) {
                return _isCorrect
                    ? AppColors.teal.withValues(alpha: 0.1)
                    : AppColors.hanko.withValues(alpha: 0.1);
              }
              return AppColors.paperCard;
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: InkWell(
                onTap: () => _submitAnswer(option, exercise.id),
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: getBgColor(),
                    border: Border.all(color: getBorderColor(), width: 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    option,
                    style: const TextStyle(fontSize: 18, color: AppColors.sumi),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          }),
          const Spacer(),
          if (_isAnswered) ...[
            if (_explanation != null) ...[
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.tealLight.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Giải thích: $_explanation',
                  style: const TextStyle(color: AppColors.teal),
                ),
              ),
              const SizedBox(height: 16),
            ],
            ElevatedButton(
              onPressed: _isCompleting ? null : () => _nextQuestion(total),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.teal,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                _currentIndex < total - 1 ? 'Tiếp tục' : 'Hoàn thành',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
