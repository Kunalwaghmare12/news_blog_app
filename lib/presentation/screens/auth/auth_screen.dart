part of 'auth_imports.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyAssets.authBackground), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent.withOpacity(0.6),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Image.asset(
                    MyAssets.appLogo,
                    height: 75.h,
                    width: 150.w,
                  )),
                  const Spacer(),
                  const Text(
                    "Explore the world,\nBillion of Thoughts.",
                    style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20.h),
                  PrimaryButton(title: 'Login',ButtonIcon: const Icon(Icons.arrow_right,color: Colors.white,),onPressed: (){
                    AutoRouter.of(context).push(const LoginScreenRoute());
                  },),
                  SizedBox(height: 10.h),
                  TransparentButton(title:'Register',ButtonIcon: const Icon(Icons.app_registration_sharp,color: Colors.white,),onPressed: (){
                    AutoRouter.of(context).push(const RegisterScreenRoute());
                  }),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
