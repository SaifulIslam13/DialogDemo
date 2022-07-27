class UserModel {
  String? name;
  String? img;
  String? details;
  int? id;
  bool? isMale;
  String? prof;

  UserModel(
      {this.prof, this.details, this.id, this.img, this.isMale, this.name});
}

List<UserModel> mylist = [
  UserModel(
      prof: 'Actrees',
      name: "Deepika",
      id: 159357,
      details:
          'Deepika Padukone is an Indian actress who works in Hindi films. One of the highest-paid actresses in India, her accolades include three Filmfare Awards.',
      img: 'images/image1.jpg',
      isMale: false),
  UserModel(
      img: "images/image2.jpg",
      name: 'Emma Watson',
      prof: 'Actrees',
      id: 165478,
      isMale: false,
      details:
          "Emma Charlotte Duerre Watson is an English actress and activist. Known for her roles in both blockbusters and independent films, as well as for her women's rights work, she has received a selection of accolades, including a Young Artist Award and three MTV Movie Awards."),
  UserModel(
      img: 'images/image3.jpg',
      name: 'Elizaeth Olsen',
      prof: 'Actrees',
      id: 582496,
      isMale: false,
      details:
          "Elizabeth Chase Olsen is an American actress. Born in Sherman Oaks, California, Olsen began acting at age four."),
  UserModel(
      img: 'images/image4.jpg',
      name: 'Iron Man',
      prof: 'Actrees',
      id: 718269,
      isMale: true,
      details:
          "Iron Man is a superhero appearing in American comic books published by Marvel Comics. The character was co-created by writer and editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby."),
  UserModel(
      img: 'images/image5.jpg',
      name: 'Groot',
      prof: 'Actrees',
      id: 012546,
      details:
          "Groot is a fictional character appearing in American comic books published by Marvel Comics. Created by Stan Lee, Larry Lieber and Jack Kirby, the character first appeared in Tales to Astonish"),
  UserModel(
      img: 'images/image6.jpg',
      name: "Captain America",
      prof: 'Actrees',
      id: 555486,
      isMale: true,
      details:
          "During World War II, Steve Rogers, a frail man, is transformed into the super-soldier Captain America and must stop the Red Skull (Weaving) from using the Tesseract as an energy source for world domination. Captain America: The First Avenger.")
];
