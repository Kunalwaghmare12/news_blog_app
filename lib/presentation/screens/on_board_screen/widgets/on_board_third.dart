
part of 'widgets_imports.dart';

class OnBoardThird extends StatelessWidget {
  const OnBoardThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(MyAssets.onBoardThird
            ,height: 333.h,width: 333.w),
        SizedBox(height: 30.h,),
        const Text("Not a drop to waste: Water woes are a recurring Indian urban phenomenon. Reusing treated water is the solution ..."
        ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18))
    

      ],
    );
  }
}
