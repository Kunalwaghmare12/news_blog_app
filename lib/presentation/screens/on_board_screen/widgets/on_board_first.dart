
part of 'widgets_imports.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(MyAssets.onBoardFirst
            ,height: 333.h,width: 333.w),
        SizedBox(height: 30.h,),
        const Text("Sugar & vice: Better food labelling will be a better deterrent. Public health trumps industry interests ..."
        ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),

                
      ],
    );
  }
}
