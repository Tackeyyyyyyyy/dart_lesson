Future<String> pickAllDocuments() {
  String docs;
  // 時間が掛かる処理と仮定
  for (int i = 0; i < 100000; ++i) {
    if (i == 99999) docs = 'Finish pickAllDocuments!';
  }
  return Future<String>.value(docs);
}

void main() {
  final docs = pickAllDocuments();
  docs.then((value) => print(value));
  print('Next...');
}