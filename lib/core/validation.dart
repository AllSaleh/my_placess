validation(String type, String? value, int min, int max) {
  if (value!.isEmpty) {
    return 'This is Required';
  } else if (value.length < min) {
    return 'Cant be min $min';
  } else if (value.length > max) {
    return 'cant be max $max';
  }

  if (type == 'email') {
    if (!RegExp('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]')
        .hasMatch(value)) {
      return 'IncorrectEmail';
    }
  }
  if (type == 'password') {
    if (!RegExp('^(?=.*[A-Za-z])(?=.*d)[A-Za-zd]{8,}').hasMatch(value)) {
      return 'Incorrect Password';
    }
  }
  if (type == 'phone') {
    if (!RegExp('^[0-9]').hasMatch(value)) {
      return 'should be phone number';
    }
  }
  if (type == 'rate') {
    // ignore: valid_regexps
    if (!RegExp('^[0-9]').hasMatch(value) ||
        !RegExp('^[0-9]*[.]?[0-9]').hasMatch(value)) {
      return 'should be Rating number';
    }
  }
}
