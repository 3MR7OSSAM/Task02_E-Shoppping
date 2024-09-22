import 'dart:io';

void main() {
  // Define the base project path
  final projectPath = "${Directory.current.path}/lib";

  // Define the directories to be created
  final directories = [
    '$projectPath/core/utils',
    '$projectPath/data/models',
    '$projectPath/data/repository',
    '$projectPath/data/sources',
    '$projectPath/domain/entities',
    '$projectPath/domain/repository',
    '$projectPath/domain/usecases',
    '$projectPath/presentation/bloc',
    '$projectPath/presentation/pages',
    '$projectPath/presentation/widgets',
    
    // Add assets folder with fonts and images
    '${Directory.current.path}/assets/fonts',
    '${Directory.current.path}/assets/images',
  ];

  // Loop through each directory and create it if it doesn't exist
  for (var dir in directories) {
    final directory = Directory(dir);
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
      print('Created: $dir ✔️');
    } else {
      print('Directory already exists: $dir');
    }
  }

  print('Creating directories successfully completed ✔️');
}
