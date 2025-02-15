import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lexilearn/English/LetterExercisePage.dart';
import 'package:lexilearn/English/LetterArrange.dart';
import 'package:lexilearn/English/AlphabetListeningPage.dart';
import 'package:lexilearn/English/WordMatchingGame.dart';
import 'package:lexilearn/English/WordMatchingGame2.dart';
import 'package:lexilearn/English/RhymeTimeGame.dart';
import 'package:lexilearn/Numbers/Division.dart';
import 'package:lexilearn/Numbers/Multiplication.dart';
import 'package:lexilearn/Numbers/Subtraction.dart';
import 'package:lexilearn/Tamil/TamilUyirEzhuthukal.dart';
import 'package:lexilearn/Tamil/TamilUyirEzhuthuKarpom.dart';
import 'package:lexilearn/Tamil/TamilMaeiAezhithuKarpom.dart';
import 'package:lexilearn/Tamil/TamilMaeiAezhuthuPayirchi.dart';
import 'package:lexilearn/Numbers/LearnNumbers.dart';
import 'package:lexilearn/Numbers/NumberExercise.dart';
import 'package:lexilearn/Tamil/TamilRhymeTime.dart';
import 'package:lexilearn/Tamil/TamilWordMatch.dart';
import 'package:lexilearn/Tamil/TamilImageSelectionGame.dart';
import 'package:lexilearn/Numbers/NumberTracing.dart';
import 'package:lexilearn/Numbers/NumberPractice.dart';
import 'package:lexilearn/Numbers/MathOperationsGame.dart';
import 'package:lexilearn/Numbers/Addition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackgroundApp(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroductionPage(),
      ),
    );
  }
}

class BackgroundApp extends StatelessWidget {
  final Widget child;
  const BackgroundApp({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}

class CardOption extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  CardOption({
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontFamily: 'openDyslexic',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Welcome to LexiLearn",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenDyslexic',
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 320, // Specify the desired height
                width: 400, // Specify the desired width
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 20), // Adjust the top padding as needed
                  child: Card(
                    elevation: 10,
                    margin: EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17),
                      child: Image.asset(
                        'images/welcome.gif', // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100), // Adjusted padding
              child: Text(
                'What do you want to learn?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'OpenDyslexic',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EnglishPage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'images/ABCD.gif', // Replace with English image path
                            width: 300, // Adjust the width as needed
                            height: 150, // Adjust the height as needed
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Adjust spacing between images
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TamilPage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'images/tamil2.gif', // Replace with Tamil image path
                            width: 300, // Adjust the width as needed
                            height: 150, // Adjust the height as needed
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Adjust spacing between images
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Numbers(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'images/Numbers.gif', // Replace with Numbers image path
                            width: 300, // Adjust the width as needed
                            height: 150, // Adjust the height as needed
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EnglishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend background behind app bar
      appBar: AppBar(
        title: Padding(
          padding:
              const EdgeInsets.only(top: 30), // Adjust top padding as needed
          child: Text(
            '    English Topics',
            style: TextStyle(
                fontFamily: 'OpenDyslexic', fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.transparent, // Transparent app bar
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/background.jpg', // Replace with your background image path
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              vertical: 100, horizontal: 10), // Adjust padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Section(
                title: 'Letter Exercise',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LetterExercisePage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'Practice Alphabet',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AlphabetListeningPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'LexiPuzzle',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Feature1Page(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'Word Quest',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WordMatchingGame(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'Image Quest',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WordMatchingGame2(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'Rhyme Time Game',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RhymeTimeGame(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionWithBackground extends StatelessWidget {
  final ImageProvider backgroundImage;
  final String title;
  final VoidCallback onTap;
  final double width;
  final double height;
  final double borderRadius;

  const SectionWithBackground({
    required this.backgroundImage,
    required this.title,
    required this.onTap,
    this.width = 300,
    this.height = 150,
    this.borderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class TamilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend background behind app bar
      appBar: AppBar(
        title: Padding(
          padding:
              const EdgeInsets.only(top: 30), // Adjust top padding as needed
          child: Text(
            '    தமிழ் பயிற்சிகள்',
            style: TextStyle(
                fontFamily: 'OpenDyslexic', fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.transparent, // Transparent app bar
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/background.jpg', // Replace with your background image path
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              vertical: 100, horizontal: 10), // Adjust padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Section(
                title: 'உயிரெழுத்து கற்போம்',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LetterExercisePage2(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'உயிரெழுத்து பயிற்சி',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TamilAlphabetListeningPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'மெய்யெழுத்து கற்போம்',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TamilMaeiAezhuthuKarpom(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'மெய்யெழுத்து பயிற்சி',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TamilMaeiAezhuthuPayirchi()),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'தமிழ் வார்த்தை பயிற்சி',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TamilWordMatchingGame(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'படம் கண்டு சொல் ',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TamilImageSelectionGame(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Section(
                title: 'தமிழ் பாசுரப் பயிற்சி',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RhymeTimeGameTamil(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Numbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend background behind app bar
      appBar: AppBar(
        title: Padding(
          padding:
              const EdgeInsets.only(top: 30), // Adjust top padding as needed
          child: Text(
            '    Number Exercises',
            style: TextStyle(
                fontFamily: 'OpenDyslexic', fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.transparent, // Transparent app bar
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/background.jpg', // Replace with your background image path
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              vertical: 100, horizontal: 10), // Adjust padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Section(
                title: 'Learn Numbers',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NumberLearningPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'Practice Numbers',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NumberExercise(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'Counting Game',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MonkeyCountingPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20), // Adjust spacing between sections
              Section(
                title: 'Number Conversion Challenge',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TypicallyExercise(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Section(
                title: 'Addition',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MathGameAddition(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Section(
                title: 'Subtraction',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MathGameSubtraction(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Section(
                title: 'Multiplication',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MathGameMultiplication(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Section(
                title: 'Division',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MathGameDivision(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Section(
                title: 'Solve Math Operations',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MathGame(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  Section({required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 3,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
