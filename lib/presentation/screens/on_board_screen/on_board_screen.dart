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
            const Text(
              "News App",
              style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50.h,),
            Expanded(
                child: PageView(
                  children: const [OnBoardFirst(),OnBoardSecond(),OnBoardThird()
                  ],
                ),),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.primaryColor,
                  minimumSize: Size(MediaQuery.of(context).size.width.w, 44),
                ),
                onPressed: () {
                  AutoRouter.of(context).push(const AuthScreenRoute());
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                )),
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
