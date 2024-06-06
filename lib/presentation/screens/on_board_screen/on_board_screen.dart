part of 'on_board_imports.dart';

@RoutePage()
class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Image.asset(MyAssets.appLogo,height: 75.h,width:150.w,),
            SizedBox(height: 50.h,),
            Expanded(
                child: PageView(
                  children: const [OnBoardFirst(),OnBoardSecond(),OnBoardThird()
                  ],
                ),),
            PrimaryButton(title: 'Get Started', ButtonIcon:const Icon(Icons.run_circle_sharp,color: Colors.white,),onPressed:(){
              AutoRouter.of(context).push(const AuthScreenRoute());
            }),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {}, child: const Text("Skip")),
                TextButton(onPressed: () {}, child: const Text("Next")),
              ],
            )
          ],
        ),
      ),
    )));
  }
}

