class ListQuestion {
  const ListQuestion(this.question, this.answer);

  final String question;
  final List<String> answer;

  List<String> getSufferAnswer() {
    final result = List.of(answer); //tạo 1 bản sao cho list câu trả lời --> ta cần lấy index của obj
    result.shuffle();  //! hàm random
    return result;
  }
}
