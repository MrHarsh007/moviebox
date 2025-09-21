import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/common_componenet/common_dialog.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/presentation/bloc/note/note_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/watchilist_like_offline/watchilist_like_offline_bloc.dart';

class SettingOption {
  final IconData icon;
  final String title;
  final String subtitle;

  final Function()? onTap;

  SettingOption({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });
}

class SettingsActionTile extends StatelessWidget {
  final SettingOption option;

  const SettingsActionTile({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      leading: Icon(option.icon, size: 30, color: Colors.white),
      title: Text(option.title, style: context.textTheme.titleLarge),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Text(
          option.subtitle,
          style: context.textTheme.bodyMedium?.copyWith(
            height: 1.2,
            color: Colors.white70,
          ),
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.white60,
      ),
      onTap: option.onTap != null ? () => _showConfirmation(context) : null,
    );
  }

  void _showConfirmation(BuildContext context) {
    showCommonAdaptiveDialog(
      context: context,
      title: "Confirm Action",
      content: "Are you sure you want to clear all ${option.title}?",
      onConfirm: () async {
        // Loop through all table names and clear them
        if (option.onTap != null) {
          option.onTap!();
        }
        if (context.mounted) {
          context.read<WatchilistLikeOfflineBloc>().add(
            WatchilistLikeOfflineEvent.initial(),
          );
          context.read<NoteBloc>().add(NoteEvent.fetchAll());
          showCustomSnackBar(
            context,
            message: "${option.title} cleared successfully!",
            type: SnackBarType.success,
          );
        }
      },
      confirmText: "Clear Data",
      cancelText: "Cancel",
    );
  }
}
