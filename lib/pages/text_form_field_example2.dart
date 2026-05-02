import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldExample2 extends StatefulWidget {
  const TextFormFieldExample2({super.key});

  @override
  State<TextFormFieldExample2> createState() => _TextFormFieldExample2State();
}

class _TextFormFieldExample2State extends State<TextFormFieldExample2> {
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? forceErrorText;
  bool isLoading = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (value.length != value.replaceAll(' ', '').length) {
      return 'Username must not contain any spaces';
    }
    if (int.tryParse(value[0]) != null) {
      return 'Username must not start with a number';
    }
    if (value.length <= 2) {
      return 'Username should be at least 3 characters long';
    }
    return null;
  }

  void onChanged(String value) {
    // Nullify forceErrorText if the input changed.
    if (forceErrorText != null) {
      setState(() {
        forceErrorText = null;
      });
    }
  }

  Future<void> onSave() async {
    // Providing a default value in case this was called on the
    // first frame, the [fromKey.currentState] will be null.
    final bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }

    setState(() => isLoading = true);
    final String? errorText = await validateUsernameFromServer(controller.text);

    if (context.mounted) {
      setState(() => isLoading = false);

      if (errorText != null) {
        setState(() {
          forceErrorText = errorText;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  forceErrorText: forceErrorText,
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: 'Please write a username',
                  ),
                  validator: validator,
                  onChanged: onChanged,
                ),
                const SizedBox(height: 40.0),
                if (isLoading)
                  const CircularProgressIndicator()
                else
                  TextButton(onPressed: onSave, child: const Text('Save')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
const Duration kFakeHttpRequestDuration = Duration(seconds: 3);
Future<String?> validateUsernameFromServer(String username) async {
  final Set<String> takenUsernames = <String>{'jack', 'alex'};

  await Future<void>.delayed(kFakeHttpRequestDuration);

  final bool isValid = !takenUsernames.contains(username);
  if (isValid) {
    return null;
  }

  return 'Username $username is already taken';
}