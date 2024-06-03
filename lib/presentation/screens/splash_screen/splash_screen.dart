part of 'splash_import.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 double _scale =0;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    moveToOnBoard();
    _scale=1;
  }
  
  moveToOnBoard() async {
   await Future.delayed(const Duration(seconds: 3),(){
     AutoRouter.of(context).push(const OnBoardScreenRoute());
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyColors.primaryColor,
      body:Center(
        child: AnimatedScale(
          scale:_scale, // Animate using a variable (e.g., set to 0 initially and change to 1 in initState)
          duration: const Duration(milliseconds:500), // Animation duration
          curve: Curves.decelerate, // Animation curve (optional)
          child: Image.network(MyAssets.logoImg,
          ),
        ),
      ),

    );
      
      // Text("News Blog",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),),
  }
}


