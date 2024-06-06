part of 'register_imports.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child:Column(
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
                height:MediaQuery.of(context).size.height.h,
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
                      SizedBox(height: 50.h,),
                      const Center(child: Text("Sign Up",style: TextStyle(color:MyColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 30),)),
                      SizedBox(height: 80.h,),
                      TextFormField(
                        decoration: const InputDecoration(hintText: "Enter email",prefixIcon: Icon(Icons.email),border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10.h,),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(hintText: "Enter password",prefixIcon: Icon(Icons.lock),border:OutlineInputBorder()),
                      ),
                      SizedBox(height: 10.h,),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(hintText: "Confirm password",prefixIcon: Icon(Icons.lock),border:OutlineInputBorder()),
                      ),
                      SizedBox(height: 20.h,),
                      PrimaryButton(title: "Register", onPressed:(){}, ButtonIcon:const Icon(Icons.app_registration_sharp,color: Colors.white)),
                      SizedBox(height: 20.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?"),
                          TextButton(
                              onPressed: (){
                            AutoRouter.of(context).push(const LoginScreenRoute());
                          }, child:const Text("Login",style: TextStyle(color: Colors.black),))
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
