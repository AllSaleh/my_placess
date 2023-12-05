validation(
  String type,
  String? value,
) {
  if (value!.isEmpty) {
    return 'This is Required';
  }

  if (type == 'email') {
    if (!RegExp('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]')
        .hasMatch(value)) {
      return 'IncorrectEmail';
    }
    if (type == 'password') {
      if (!RegExp('^(?=.*[A-Za-z])(?=.*d)[A-Za-zd]{8,}').hasMatch(value)) {
        return 'Incorrect Password';
      }
    }
  }
}
