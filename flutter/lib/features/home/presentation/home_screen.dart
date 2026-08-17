import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../../auth/application/auth_provider.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.washi,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Top Header with Teal background
            _buildTopHeader(context, ref),
            
            const SizedBox(height: 16),

            // 2. Khóa học của tôi
            _buildSectionTitle('Khóa học của tôi'),
            _buildMyCoursesCard(context),

            // 3. Khóa học JLPT
            _buildSectionTitle('Khóa học JLPT'),
            _buildJlptGrid(),

            const SizedBox(height: 100), // Khoảng trống cho BottomAppBar
          ],
        ),
      ),
    );
  }

  Widget _buildTopHeader(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(authProvider);

    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
      child: userAsync.when(
        data: (user) {
          if (user == null) return const SizedBox(height: 60);

          return Row(
            children: [
              // Avatar
              GestureDetector(
                onTap: () async {
                  final picker = ImagePicker();
                  final image = await picker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    ref.read(authProvider.notifier).updateAvatar('https://picsum.photos/200/200?random=${DateTime.now().millisecondsSinceEpoch}');
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Cập nhật ảnh đại diện thành công!'),
                          backgroundColor: AppColors.teal,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  }
                },
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundImage: user.avatar != null ? NetworkImage(user.avatar!) : null,
                    backgroundColor: AppColors.washiDeep,
                    child: user.avatar == null ? const Icon(Icons.person, color: AppColors.sumiSoft) : null,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              
              // Name and Stats
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            user.displayName ?? 'Học viên',
                            style: const TextStyle(color: AppColors.sumi, fontSize: 18, fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 6),
                        GestureDetector(
                          onTap: () => _showEditNameDialog(context, ref, user.displayName ?? ''),
                          child: const Icon(Icons.edit_rounded, color: AppColors.teal, size: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.generating_tokens, color: AppColors.gold, size: 16),
                        const SizedBox(width: 4),
                        Text('${user.xpTotal}', style: const TextStyle(color: AppColors.sumi, fontSize: 13, fontWeight: FontWeight.bold)),
                        const SizedBox(width: 8),
                        const Text('|', style: TextStyle(color: AppColors.sumiSoft, fontSize: 13)),
                        const SizedBox(width: 8),
                        const Icon(Icons.local_fire_department, color: AppColors.hanko, size: 16),
                        const SizedBox(width: 4),
                        Text('${user.streakDays}', style: const TextStyle(color: AppColors.sumi, fontSize: 13, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Action Icons
              _buildHeaderIcon(Icons.headset_mic_rounded),
              const SizedBox(width: 12),
              _buildHeaderIcon(Icons.notifications_rounded),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Text('Lỗi tải dữ liệu', style: TextStyle(color: AppColors.hanko)),
      ),
    );
  }

  Widget _buildHeaderIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.sumi.withValues(alpha: 0.1)),
      ),
      child: Icon(icon, color: AppColors.sumi, size: 20),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.sumi),
      ),
    );
  }

  Widget _buildMyCoursesCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.sumi.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: AppColors.sumi.withValues(alpha: 0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hiện tại bạn chưa có khóa học nào',
            style: TextStyle(color: AppColors.sumi, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Hãy liên hệ với chúng tôi để nhận tư vấn 24/7 nhé',
            style: TextStyle(color: AppColors.sumiSoft, fontSize: 13),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => _showConsultationDialog(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.teal,
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
            child: const Text('Nhận tư vấn', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  void _showEditNameDialog(BuildContext context, WidgetRef ref, String currentName) {
    final nameController = TextEditingController(text: currentName);
    bool isSubmitting = false;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              title: const Text('Đổi tên hiển thị', style: TextStyle(color: AppColors.sumi, fontWeight: FontWeight.bold)),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: 'Nhập tên mới',
                      prefixIcon: Icon(Icons.person_rounded, color: AppColors.sumiSoft),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: isSubmitting ? null : () => Navigator.pop(context),
                  child: const Text('Hủy', style: TextStyle(color: AppColors.sumiSoft, fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  onPressed: isSubmitting
                      ? null
                      : () async {
                          if (nameController.text.trim().isEmpty) return;
                          
                          setState(() => isSubmitting = true);
                          // Fake API
                          await Future.delayed(const Duration(seconds: 1));
                          
                          ref.read(authProvider.notifier).updateDisplayName(nameController.text.trim());
                          
                          if (context.mounted) {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Cập nhật tên thành công!'),
                                backgroundColor: AppColors.teal,
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.teal,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: isSubmitting
                      ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                      : const Text('Lưu', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showConsultationDialog(BuildContext context) {
    final emailController = TextEditingController();
    bool isSubmitting = false;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              title: const Text('Nhận tư vấn', style: TextStyle(color: AppColors.sumi, fontWeight: FontWeight.bold)),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Vui lòng nhập địa chỉ email của bạn, chúng tôi sẽ liên hệ trong thời gian sớm nhất.', style: TextStyle(color: AppColors.sumiSoft, fontSize: 14)),
                  const SizedBox(height: 16),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Nhập email của bạn',
                      prefixIcon: const Icon(Icons.email_rounded, color: AppColors.sumiSoft),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: isSubmitting ? null : () => Navigator.pop(context),
                  child: const Text('Hủy', style: TextStyle(color: AppColors.sumiSoft, fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  onPressed: isSubmitting
                      ? null
                      : () async {
                          if (emailController.text.trim().isEmpty) return;
                          
                          setState(() {
                            isSubmitting = true;
                          });
                          
                          // Fake API call
                          await Future.delayed(const Duration(seconds: 1));
                          
                          if (context.mounted) {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Yêu cầu tư vấn đã được gửi thành công!'),
                                backgroundColor: AppColors.teal,
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.teal,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: isSubmitting
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                        )
                      : const Text('Gửi', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildJlptGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildLevelCircle('N5'),
                _buildLevelCircle('N4'),
                _buildLevelCircle('N3'),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildLevelCircle('N2'),
                _buildLevelCircle('N1'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLevelCircle(String level) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.teal.withValues(alpha: 0.15),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
            border: Border.all(color: AppColors.teal.withValues(alpha: 0.15), width: 4),
          ),
          child: Center(
            child: Text(
              level,
              style: const TextStyle(color: AppColors.teal, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text('Khóa học $level', style: const TextStyle(fontSize: 13, color: AppColors.sumi, fontWeight: FontWeight.w600)),
      ],
    );
  }
}
