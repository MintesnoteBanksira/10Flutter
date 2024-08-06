import 'package:my_first_app/models/quiz_questions.dart';
import 'dart:math';

class QuizQuestions {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  QuizQuestions(this.question, this.answers, this.correctAnswer);
}

List<QuizQuestions> questions = [
  QuizQuestions('What are the building blocks of Flutter?', ['Widgets', 'Classes', 'Functions', 'Variables'], 'Widgets'),
  QuizQuestions('What is the default language of Flutter?', ['Java', 'Dart', 'Python', 'C++'], 'Dart'),
  QuizQuestions('What is the name of the Flutter framework for building web apps?', ['Flutter Web', 'Flutter for Web', 'Flutter Webkit', 'Flutter WebView'], 'Flutter for Web'),
  QuizQuestions('Who developed Flutter?', ['Google', 'Facebook', 'Microsoft', 'Apple'], 'Google'),
  QuizQuestions('What is the command to create a new Flutter project?', ['flutter create', 'flutter new', 'flutter init', 'flutter start'], 'flutter create'),
  QuizQuestions('Which widget is used for creating a scrollable list?', ['ListView', 'Column', 'Row', 'Container'], 'ListView'),
  QuizQuestions('How do you add a package in Flutter?', ['Add to pubspec.yaml', 'Add to main.dart', 'Add to manifest.json', 'Add to index.html'], 'Add to pubspec.yaml'),
  QuizQuestions('What is the primary rendering engine for Flutter?', ['Skia', 'Vulkan', 'DirectX', 'Metal'], 'Skia'),
  QuizQuestions('How do you run a Flutter app on a connected device?', ['flutter run', 'flutter start', 'flutter play', 'flutter execute'], 'flutter run'),
  QuizQuestions('Which widget is used to create an app bar in Flutter?', ['AppBar', 'Toolbar', 'Header', 'TitleBar'], 'AppBar'),
  QuizQuestions('What is the command to build a release APK in Flutter?', ['flutter build apk', 'flutter release apk', 'flutter generate apk', 'flutter compile apk'], 'flutter build apk'),
  QuizQuestions('What is the method to build the UI in Flutter?', ['build()', 'create()', 'render()', 'display()'], 'build()'),
  QuizQuestions('Which Flutter widget is used to display an image?', ['Image', 'Picture', 'Photo', 'Icon'], 'Image'),
  QuizQuestions('What is the lifecycle method called when a stateful widget is inserted into the tree?', ['initState()', 'build()', 'dispose()', 'createState()'], 'initState()'),
  QuizQuestions('How do you navigate between screens in Flutter?', ['Navigator.push', 'Screen.push', 'Route.push', 'Page.push'], 'Navigator.push'),
  QuizQuestions('Which widget is used to create a button in Flutter?', ['RaisedButton', 'Button', 'FlatButton', 'ActionButton'], 'RaisedButton'),
  QuizQuestions('What is the name of the file where the main function is located in a Flutter project?', ['main.dart', 'app.dart', 'index.dart', 'start.dart'], 'main.dart'),
  QuizQuestions('Which widget is used to arrange children in a vertical column?', ['Column', 'Row', 'Stack', 'List'], 'Column'),
  QuizQuestions('How do you add padding around a widget in Flutter?', ['Padding', 'Margin', 'Spacing', 'Inset'], 'Padding'),
  QuizQuestions('Which function is used to run a Flutter app?', ['runApp()', 'startApp()', 'launchApp()', 'executeApp()'], 'runApp()'),
  QuizQuestions('How do you define a constant in Dart?', ['const', 'final', 'var', 'static'], 'const'),
  QuizQuestions('What is the pubspec.yaml file used for?', ['Managing dependencies', 'Styling the app', 'Defining routes', 'Creating widgets'], 'Managing dependencies'),
  QuizQuestions('Which widget is used to create an icon in Flutter?', ['Icon', 'Symbol', 'ImageIcon', 'Glyph'], 'Icon'),
  QuizQuestions('How do you perform hot reload in Flutter?', ['Press r in the terminal', 'Press h in the terminal', 'Press Ctrl+R', 'Press Ctrl+H'], 'Press r in the terminal'),
  QuizQuestions('Which widget is used to create a floating action button?', ['FloatingActionButton', 'RaisedButton', 'FlatButton', 'IconButton'], 'FloatingActionButton'),
  QuizQuestions('How do you define a route in Flutter?', ['MaterialPageRoute', 'PageRoute', 'NavigatorRoute', 'ScreenRoute'], 'MaterialPageRoute'),
  QuizQuestions('What is the state management solution provided by Flutter itself?', ['Provider', 'Bloc', 'Redux', 'InheritedWidget'], 'InheritedWidget'),
  QuizQuestions('What is a StatefulWidget in Flutter?', ['A widget with mutable state', 'A widget with immutable state', 'A stateless widget', 'A widget without state'], 'A widget with mutable state'),
  QuizQuestions('Which method is called when a stateful widget is removed from the tree?', ['dispose()', 'initState()', 'build()', 'createState()'], 'dispose()'),
  QuizQuestions('How do you create a custom widget in Flutter?', ['By extending StatelessWidget or StatefulWidget', 'By extending CustomWidget', 'By extending WidgetBase', 'By extending CustomView'], 'By extending StatelessWidget or StatefulWidget'),
  QuizQuestions('What is Flutter Doctor?', ['A tool to check your Flutter setup', 'A tool to build Flutter apps', 'A tool to create new Flutter projects', 'A tool to test Flutter apps'], 'A tool to check your Flutter setup'),
  QuizQuestions('How do you listen for user gestures in Flutter?', ['GestureDetector', 'GestureListener', 'GestureHandler', 'GestureObserver'], 'GestureDetector'),
  QuizQuestions('What is the BoxDecoration widget used for?', ['Styling containers', 'Creating animations', 'Managing state', 'Handling gestures'], 'Styling containers'),
  QuizQuestions('Which widget is used to create a dropdown list in Flutter?', ['DropdownButton', 'DropList', 'DropDown', 'DropdownList'], 'DropdownButton'),
  QuizQuestions('What is the purpose of the SafeArea widget?', ['To avoid intrusions by system UI', 'To create padding', 'To manage state', 'To handle gestures'], 'To avoid intrusions by system UI'),
  QuizQuestions('What is a Future in Dart?', ['An object representing a delayed computation', 'A synchronous computation', 'A Dart keyword', 'A widget'], 'An object representing a delayed computation'),
  QuizQuestions('How do you handle asynchronous operations in Dart?', ['Using async and await', 'Using then and catch', 'Using future and result', 'Using delay and wait'], 'Using async and await'),
  QuizQuestions('Which widget is used for creating a tabbed interface in Flutter?', ['TabBar', 'TabView', 'TabWidget', 'TabContainer'], 'TabBar'),
  QuizQuestions('What is the function of the Scaffold widget?', ['Provides a basic visual structure for the app', 'Handles state management', 'Manages app dependencies', 'Creates animations'], 'Provides a basic visual structure for the app'),
  QuizQuestions('How do you display a snackbar in Flutter?', ['Using ScaffoldMessenger', 'Using SnackBar', 'Using Scaffold', 'Using Toast'], 'Using ScaffoldMessenger'),
  QuizQuestions('Which widget is used to handle long lists in Flutter?', ['ListView.builder', 'Column', 'ListView', 'ScrollableList'], 'ListView.builder'),
  QuizQuestions('What is the purpose of the Expanded widget?', ['To make a child of a Row, Column, or Flex expand to fill the available space', 'To add padding', 'To create animations', 'To handle gestures'], 'To make a child of a Row, Column, or Flex expand to fill the available space'),
  QuizQuestions('How do you debug a Flutter application?', ['Using debugPrint()', 'Using console.log()', 'Using print()', 'Using log()'], 'Using debugPrint()'),
  QuizQuestions('What is the difference between a StatelessWidget and a StatefulWidget?', ['StatelessWidget has immutable state, StatefulWidget has mutable state', 'StatelessWidget has mutable state, StatefulWidget has immutable state', 'Both have immutable state', 'Both have mutable state'], 'StatelessWidget has immutable state, StatefulWidget has mutable state'),
  QuizQuestions('Which widget is used to display a list of items?', ['ListView', 'GridView', 'Column', 'Row'], 'ListView'),
  QuizQuestions('How do you add an icon to a button in Flutter?', ['Using Icon property', 'Using Image property', 'Using Symbol property', 'Using Glyph property'], 'Using Icon property'),
  QuizQuestions('What is the main purpose of the Navigator widget?', ['To manage a stack of routes', 'To display an image', 'To create a button', 'To handle gestures'], 'To manage a stack of routes'),
  QuizQuestions('What is a Stream in Dart?', ['A sequence of asynchronous events', 'A synchronous event', 'A Dart keyword', 'A widget'], 'A sequence of asynchronous events'),
  QuizQuestions('How do you handle state in Flutter?', ['Using setState()', 'Using changeState()', 'Using modifyState()', 'Using updateState()'], 'Using setState()'),
  QuizQuestions('Which widget is used to create a grid layout in Flutter?', ['GridView', 'ListView', 'Column', 'Row'], 'GridView'),
  QuizQuestions('How do you define a global key in Flutter?', ['GlobalKey', 'Key', 'UniqueKey', 'ValueKey'], 'GlobalKey'),
  QuizQuestions('What is the difference between hot reload and hot restart?', ['Hot reload preserves state, hot restart does not', 'Hot restart preserves state, hot reload does not', 'Both preserve state', 'Both do not preserve state'], 'Hot reload preserves state, hot restart does not'),
  QuizQuestions('Which widget is used to create a checkbox in Flutter?', ['Checkbox', 'CheckButton', 'Check', 'BoxCheck'], 'Checkbox'),
  QuizQuestions('How do you format a Dart code file?', ['Using dartfmt', 'Using dartformat', 'Using dartcode', 'Using dartstyle'], 'Using dartfmt'),
  QuizQuestions('What is the purpose of the Align widget?', ['To align a child within a parent', 'To add padding', 'To create animations', 'To handle gestures'], 'To align a child within a parent'),
  QuizQuestions('Which widget is used to create a horizontal list in Flutter?', ['ListView', 'Row', 'Column', 'GridView'], 'ListView'),
  QuizQuestions('How do you define an immutable class in Dart?', ['Using final fields', 'Using var fields', 'Using static fields', 'Using const fields'], 'Using final fields'),
  QuizQuestions('What is the purpose of the Container widget?', ['To add padding, margins, borders, and backgrounds', 'To create animations', 'To manage state', 'To handle gestures'], 'To add padding, margins, borders, and backgrounds'),
  QuizQuestions('Which method is used to initialize state in a StatefulWidget?', ['initState()', 'build()', 'dispose()', 'createState()'], 'initState()'),
  QuizQuestions('How do you create an animation in Flutter?', ['Using the AnimationController', 'Using the AnimationBuilder', 'Using the AnimationPlayer', 'Using the AnimationMaker'], 'Using the AnimationController'),
  QuizQuestions('What is a Hero animation in Flutter?', ['An animation that transitions between two routes', 'A background animation', 'A button animation', 'An image animation'], 'An animation that transitions between two routes'),
  QuizQuestions('Which widget is used to display a circular progress indicator?', ['CircularProgressIndicator', 'ProgressBar', 'LoadingIndicator', 'CircularIndicator'], 'CircularProgressIndicator'),
  QuizQuestions('What is the purpose of the mainAxisAlignment property in a Column?', ['To align children vertically', 'To align children horizontally', 'To add padding', 'To create animations'], 'To align children vertically'),
  QuizQuestions('How do you handle errors in Dart?', ['Using try-catch blocks', 'Using catch blocks', 'Using handle blocks', 'Using error blocks'], 'Using try-catch blocks'),
  QuizQuestions('Which widget is used to create a radio button in Flutter?', ['Radio', 'RadioButton', 'RadioBox', 'CheckRadio'], 'Radio'),
  QuizQuestions('How do you make a widget invisible in Flutter?', ['Using the Visibility widget', 'Using the Hidden widget', 'Using the Invisible widget', 'Using the Hide widget'], 'Using the Visibility widget'),
  QuizQuestions('What is the function of the onPressed property of a button?', ['To define the action when the button is pressed', 'To define the style of the button', 'To set the text of the button', 'To set the color of the button'], 'To define the action when the button is pressed'),
  QuizQuestions('Which widget is used to create a text input field in Flutter?', ['TextField', 'InputField', 'TextInput', 'Field'], 'TextField'),
  QuizQuestions('What is the purpose of the SizedBox widget?', ['To create an empty box with specified dimensions', 'To add padding', 'To create animations', 'To handle gestures'], 'To create an empty box with specified dimensions'),
  QuizQuestions('How do you change the theme of a Flutter app?', ['Using the ThemeData class', 'Using the AppTheme class', 'Using the Theme class', 'Using the ThemeBuilder class'], 'Using the ThemeData class'),
  QuizQuestions('Which widget is used to display a grid of images?', ['GridView', 'ImageGrid', 'PictureGrid', 'PhotoGrid'], 'GridView'),
  QuizQuestions('How do you create a pop-up dialog in Flutter?', ['Using the showDialog function', 'Using the createDialog function', 'Using the Dialog widget', 'Using the Popup widget'], 'Using the showDialog function'),
  QuizQuestions('What is the purpose of the ClipRRect widget?', ['To clip a child widget with rounded corners', 'To add padding', 'To create animations', 'To handle gestures'], 'To clip a child widget with rounded corners'),
  QuizQuestions('Which widget is used to create a switch in Flutter?', ['Switch', 'ToggleButton', 'SwitchButton', 'Toggle'], 'Switch'),
  QuizQuestions('How do you handle gestures in Flutter?', ['Using the GestureDetector widget', 'Using the GestureHandler widget', 'Using the GestureListener widget', 'Using the GestureObserver widget'], 'Using the GestureDetector widget'),
  QuizQuestions('What is the purpose of the mainAxisSize property in a Column?', ['To define the size of the main axis', 'To add padding', 'To create animations', 'To handle gestures'], 'To define the size of the main axis'),
  QuizQuestions('How do you create a custom theme in Flutter?', ['By defining a ThemeData object', 'By defining a Theme object', 'By defining a CustomTheme object', 'By defining a ThemeBuilder object'], 'By defining a ThemeData object'),
  QuizQuestions('Which widget is used to create a slider in Flutter?', ['Slider', 'RangeSlider', 'SlideBar', 'SlideButton'], 'Slider'),
  QuizQuestions('How do you handle HTTP requests in Flutter?', ['Using the http package', 'Using the requests package', 'Using the httpClient package', 'Using the network package'], 'Using the http package'),
  QuizQuestions('What is the purpose of the Row widget?', ['To arrange children horizontally', 'To arrange children vertically', 'To add padding', 'To create animations'], 'To arrange children horizontally'),
  QuizQuestions('How do you define a constant constructor in Dart?', ['Using the const keyword', 'Using the final keyword', 'Using the var keyword', 'Using the static keyword'], 'Using the const keyword'),
  QuizQuestions('What is the purpose of the Wrap widget?', ['To wrap children into a multi-line horizontal or vertical array', 'To add padding', 'To create animations', 'To handle gestures'], 'To wrap children into a multi-line horizontal or vertical array'),
  QuizQuestions('Which widget is used to create a tooltip in Flutter?', ['Tooltip', 'Tip', 'Hint', 'Help'], 'Tooltip'),
  QuizQuestions('How do you perform unit testing in Flutter?', ['Using the test package', 'Using the unittest package', 'Using the testing package', 'Using the testunit package'], 'Using the test package'),
  QuizQuestions('What is the purpose of the WillPopScope widget?', ['To intercept the back button press', 'To add padding', 'To create animations', 'To handle gestures'], 'To intercept the back button press'),
  QuizQuestions('How do you define a list in Dart?', ['Using square brackets', 'Using curly brackets', 'Using parentheses', 'Using angle brackets'], 'Using square brackets'),
  QuizQuestions('Which widget is used to create a bottom navigation bar?', ['BottomNavigationBar', 'NavigationBar', 'BottomBar', 'NavBar'], 'BottomNavigationBar'),
  QuizQuestions('What is the purpose of the Spacer widget?', ['To create an adjustable, empty spacer', 'To add padding', 'To create animations', 'To handle gestures'], 'To create an adjustable, empty spacer'),
];

List<String> getShuffledAnswers(List<QuizQuestions> questions, int index) {
  var shuffledAnswers = List.of(questions[index].answers)..shuffle();
  return shuffledAnswers;
}
List<QuizQuestions> getTenRandomQuestions() {
  var random = Random(DateTime.now().millisecondsSinceEpoch);
  var shuffledQuestions = List.of(questions)..shuffle(random);
  return shuffledQuestions.take(10).toList();
}

List<QuizQuestions> ten_questions = getTenRandomQuestions();