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
                    MyAssets.authScreenLogo,
                    height: 100.h,
                    width: 200.h,
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
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11.r)),
                        backgroundColor: MyColors.primaryColor,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width.w, 44),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          const Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                          )
                        ],
                      )),
                  SizedBox(height: 10.h),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(11.r),
                        ),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width.w, 44),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          const Icon(
                            Icons.app_registration_sharp,
                            color: Colors.white,
                          )
                        ],
                      )),
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
