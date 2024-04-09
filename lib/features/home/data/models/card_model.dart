class CardModel {
  final String title, image;
  final void Function()? onPressed;
  CardModel(this.onPressed, {required this.title, required this.image});
}
