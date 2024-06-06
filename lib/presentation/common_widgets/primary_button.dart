part of 'common_widgets_imports.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required this.title, required this.onPressed,required this.ButtonIcon}) : super(key: key);

  final String title;
  final Icon ButtonIcon;
  final VoidCallback onPressed;



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11.r)),
          backgroundColor: MyColors.primaryColor,
          minimumSize:
          Size(MediaQuery.of(context).size.width.w, 44),
        ),
        onPressed:onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 10.w),
            ButtonIcon
          ],
        ));
  }
}
