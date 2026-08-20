import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';

class StorageService {
  static Future<String?> uploadResume() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if(result == null) return null;

    final file = result.files.first.bytes;
    final name = result.files.first.name;

    final ref = FirebaseStorage.instance.ref("resumes/$name");
    await ref.putData(file!);

    return await ref.getDownloadURL();
  }
}
