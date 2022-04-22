<h1 align="center"> Team PTP's Part Time Pet app </h1>

Do you like pets? Borrow a dog; lend your iguana. A pet sharing app for mobile devices using Android or iOS.
<br>


This app was created as part of Northcoder's bootcamp final project by a team of 5.
The general idea involves people borrowing/lending their pets by bringing users together using distance and allowing them to make their own arrangments using a real time chat feature. It is meant to make pets accessible to everyone.

It is intended to be used by individuals who are too busy and sometimes cannot take care of their pet or others who wish to trial owning a pet or even individuals who could use a pet's company to boost their mental health.

You can search for pets using various queries and then organise
your pet shares using our real-time messaging feature. You can
leave reviews on other users’ profiles and add, edit and delete pets
on your own.

## Full Project Tech Stack

[Flutter](https://flutter.dev/) <br>
[Google Firebase](https://firebase.google.com/) (Authentication, Firestore  database, Storage) <br>
[Express](https://expressjs.com/) <br>
[NodeJS](https://nodejs.org/en/) <br>
<br>
Minimum version of Flutter: 2.10.3<br>

To watch a video of the app in use please go to:

### [Youtube short-video](https://youtu.be/expn-N1t7L4)

---
## Functionality 
Currently, a user is able to:

- Add a new user. (register)
- Add pets to their profile.
- Delete pets from their profile.
- Edit pets' information including initially selected picture.
- Add reviews to other users' profiles.
- Delete reviews they have added.
- Access a list of all pets based on filtered criteria like distance, breed and more
- Search pets with search bar.
- Converse with other users through an instant messenger or view past conversations. 

---

## Useful Links 

### [Front-end Git Repo](https://github.com/donblizy/nc_project)

### [Back-end Git Repo](https://github.com/donblizy/nc-project-api)

 <br>

## Installation 

### 1. Install flutter

Instructions for each operating system found here: <br>
https://docs.flutter.dev/get-started/install

### 2. Cloning repo (link above)

Navigate to your preferred directory through your terminal and input the following command:

```
git clone https://github.com/donblizy/nc_project.git
```

### 3. Install Dependencies/Packages
To install the required dependancies described in pubspec.yalm file please run in the root directory of the project through your terminal:

```
flutter pub get
```


### 4. Install and View on Emulator

If you followed Flutter's installation instructions you should not have any issues at this point but ensure you run `flutter doctor` and have everything ticked. 

You will need to install both Android Studio and xcode if you wish to run it on both android and iOS emulators. 

Android: <br>
Install android studio. In the virtual device manager create an emulator (Pixel 2 emulator recommended). In your chosen code editor, from main.dart, select your virtual device and click the play/start debugging button to launch the app. (F5 if you are using VS code)

Ios: <br>
Install xcode . In devices and simulators create an emulator. In your chosen code editor, from main.dart, select your virtual device (iphone SE emulator recommended) and click the play/start debugging button to launch the app. (F5 if you are using VS code)

If applicable, Virtual Device can be selected through VS code at the bottom as provided by the Flutter extension. It is recommended through to load each emulator from their respective app at least for the initial run. 

---
### Things to note:

This app's database may cease to be accessible as part of Firebase's free plan after some time. If you wish to try the app at that point please contact either myself or any of the collaborators of this repo. 
