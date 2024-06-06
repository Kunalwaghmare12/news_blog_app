part of "login_imports.dart";

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                MyAssets.appLogo,
                height: 75.h,
                width: 150.w,
              )),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: MediaQuery.of(context).size.height.h,
                width: MediaQuery.of(context).size.width.w,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      const Center(
                          child: Text(
                        "Login",
                        style: TextStyle(
                            color: MyColors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )),
                      SizedBox(
                        height: 80.h,
                      ),
                      TextFormField(
                        controller: userController,
                        decoration: const InputDecoration(
                            hintText: "Enter email",
                            focusColor: Colors.orange,
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextFormField(
                        controller: passController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter password",
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: CheckboxListTile(
                            contentPadding: EdgeInsets.zero,
                            value: false,
                            onChanged: (value) {},
                            title: const Text(
                              "Remember me",
                              style: TextStyle(fontSize: 12),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                          )),
                          TextButton(
                              onPressed: () {},
                              child: const Text("Forget Password?")),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      PrimaryButton(
                          title: "Login",
                          onPressed: () {},
                          ButtonIcon: const Icon(Icons.arrow_right,
                              color: Colors.white)),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?"),
                          TextButton(
                              onPressed: () {
                                AutoRouter.of(context)
                                    .push(const RegisterScreenRoute());
                              },
                              child: const Text(
                                "Register",
                                style: TextStyle(color: Colors.black),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
