/* https://pub.dev/packages/flutter_pw_validator
new FlutterPwValidator(
  key: validatorKey,
  controller: controller,
  minLength: 8,
  uppercaseCharCount: 2,
  numericCharCount: 3,
  specialCharCount: 1,
  normalCharCount: 3,
  width: 400,
  height: 150,
  onSuccess: () {
    print("MATCHED");
    ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
    content: new Text("Password is matched")));
  },
  onFail: () {
    print("NOT MATCHED");
  },
),
*/
