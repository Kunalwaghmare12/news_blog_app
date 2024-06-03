
part of 'widgets_imports.dart';

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(MyAssets.onBoardSecond
            ,height: 333.h,width: 333.w),
SizedBox(height: 30.h,),
        const Text("BJP parliamentary board has only one woman…33% reservation may make more progress in states than Centre ..."
,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18)),
      ],
    );
  }
}
