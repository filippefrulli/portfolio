import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final List<String> skillsList = [
    'Java',
    'Quarkus',
    'Angular',
    'Typescript',
    'Flutter',
    'Dart',
    'Python',
    'C++',
    'AWS',
    'Docker',
    'Terraform',
    'Jenkins',
    'GitHub Actions'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.only(left: 256, top: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _introductionWidget(),
              const SizedBox(height: 64),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      _experienceWidget(),
                      const SizedBox(height: 64),
                      _skillsWidget(),
                    ],
                  ),
                  const SizedBox(width: 128),
                  _projectsWidget(),
                ],
              )
            ],
          ),
        ));
  }

  Widget _introductionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Filippe Frulli',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 128,
        ),
        _aboutMe(),
        const Text(
          'Fullstack developer by day, Flutter dev by night',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _aboutMe() {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'About',
            style: TextStyle(
              fontSize: 80,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: ' Me',
            style: TextStyle(
              fontSize: 80,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _experienceWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title('Experience'),
        const SizedBox(height: 4),
        Container(
          height: 1,
          width: 680,
          color: Colors.black,
        ),
        const SizedBox(height: 16),
        _experienceItem(
          'assets/bmw_group_logo.jpeg',
          'DevOps Engineer',
          'BMW Group',
          'Oct 2021 - today',
        ),
        const SizedBox(height: 16),
        _experienceItem(
          'assets/bmw_group_logo.jpeg',
          'Fastlane Scholar',
          'BMW Group',
          'Oct 2019 - Sep 2021',
        ),
        const SizedBox(height: 16),
        _experienceItem(
          'assets/pimco.jpeg',
          'IT Support, Working Student',
          'Allianz Real Estate',
          'Feb 2019 - Jul 2020',
        ),
      ],
    );
  }

  Widget _experienceItem(String image, String title, String company, String time) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 64,
          width: 64,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              company,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _skillsWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title('Skills'),
        const SizedBox(height: 4),
        Container(
          height: 1,
          width: 680,
          color: Colors.black,
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: 680,
          child: Wrap(
            children: skillsList.map((el) => _skillItem(el)).toList(),
          ),
        ),
      ],
    );
  }

  Widget _title(String text) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: text,
            style: const TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontFamily: 'Ralway',
            ),
          ),
        ],
      ),
    );
  }

  Widget _skillItem(String skill) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[300],
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Text(
        skill,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _projectsWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _title('Projects'),
        const SizedBox(height: 4),
        Container(
          height: 1,
          width: 680,
          color: Colors.black,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            _projectItem(
                'assets/wn.webp',
                'Watrch Next: AI movie & tv tips',
                'https://apps.apple.com/de/app/watch-next-film-tv-tipps/id6450368827?l=en-GB?l=en',
                'https://play.google.com/store/apps/details?id=com.filippefrulli.watch_next'),
            _projectItem(
              'assets/dentific.webp',
              'Dentific',
              'https://apps.apple.com/de/app/dentific/id1565683709',
              'https://play.google.com/store/apps/details?id=com.dentific.dentific_app',
            ),
          ],
        )
      ],
    );
  }

  Widget _projectItem(String icon, String title, iosUrl, androidUrl) {
    return Container(
      width: 500,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: Colors.grey[300]!,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Column(
        children: [
          Image.asset(
            icon,
            height: 64,
            width: 64,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  _launchURL(androidUrl);
                },
                child: Image.asset(
                  'assets/google-play.png',
                  width: 200,
                ),
              ),
              TextButton(
                onPressed: () {
                  _launchURL(iosUrl);
                },
                child: Image.asset(
                  'assets/app-store.jpg',
                  width: 170,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _launchURL(String url) async {
    Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}
