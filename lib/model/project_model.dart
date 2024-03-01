class Project {
  final String name;
  final String description;
  final String image;
  Project(this.name, this.description, this.image);
}

List<Project> projectList = [
  Project(
      'Coffee Application',
      'Presenting "Coffee" - a Flutter UI application that invites you to indulge in a delightful coffee adventure. Immerse yourself in the world of rich aroma and flavor as you browse through an exquisite selection of specialty coffees. With a user-friendly interface, exploring different blends and discovering their unique details becomes a delightful experience.',
      'assets/images/coffee.png'),
  Project(
      'Car Controller Application UI',
      'Car Control Dashboard is a user-friendly mobile application built using Flutter and powered by GetX for efficient state management. Enjoy a modern and intuitive design that adapts to various screen sizes, Interact with dynamic car controls, including speed, steering, and temperature. Realistic animations enhance the visual appeal, making it feel like you are controlling a real car!',
      'assets/images/car.png'),
  Project(
    'Food Recipe App',
    'This repository contains a Flutter implementation of a Food Recipe app with a captivating introduction section and impressive animations. It also features a signup and signin page with animations, elegantly presented on a bottom sheet.',
    'assets/images/recipe.png',
  ),
  Project(
    'Doctor Appointment Application',
    'Introducing the extraordinary "Doctor Appointment System" - a state-of-the-art Flutter UI application that redefines healthcare accessibility and efficiency. Seamlessly crafted, this app empowers users to effortlessly select doctors based on categories, engage in smooth messaging, and access detailed profiles.',
    'assets/images/doctor.png',
  ),
];
