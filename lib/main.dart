import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        fontFamily: 'Julius Sans One',
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
  static const githubUrl = 'https://github.com/filippefrulli';
  static const linkedinUrl = 'https://www.linkedin.com/in/filippe-frulli/';
  static const publicationUrl = 'https://dl.acm.org/doi/10.1145/3491101.3519824';

  static const dentificAndroidUrl =
      'https://play.google.com/store/apps/details?id=com.dentific.dentific_app&hl=en&gl=US';
  static const dentificIosUrl = 'https://apps.apple.com/ar/app/dentific/id1565683709';

  static const watchNextAndroidUrl =
      'https://play.google.com/store/apps/details?id=com.filippefrulli.watch_next&hl=en&gl=US';
  static const watchNextIosUrl = 'https://apps.apple.com/us/app/watch-next-ai-movie-tv-tips/id6450368827';

  static const watchNextGitHubUrl = 'https://github.com/filippefrulli/watch-next';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ResponsiveLayout(
        desktopLayout: _desktopBody(),
        mobileLayout: _mobileBody(),
      ),
    );
  }

  Widget _desktopBody() {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(left: 64, top: 12, right: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _introductionWidget(),
          Expanded(
            child: Container(),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(),
              ),
              _watchNext(),
              const SizedBox(width: 32),
              Column(
                children: [
                  Row(
                    children: [
                      _dentific(),
                      const SizedBox(width: 32),
                      _links(),
                    ],
                  ),
                  const SizedBox(height: 32),
                  _contact()
                ],
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  Widget _mobileBody() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 12,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _introductionWidgetMobile(),
            const SizedBox(
              height: 32,
            ),
            _watchNextMobile(),
            const SizedBox(
              height: 32,
            ),
            _dentificMobile(),
            const SizedBox(height: 32),
            _linksMobile(),
            const SizedBox(height: 32),
            _contactMobile(),
          ],
        ),
      ),
    );
  }

  Widget _introductionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Filippe Frulli',
          style: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        _hello(),
      ],
    );
  }

  Widget _introductionWidgetMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Filippe Frulli',
          style: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        _helloMobile(),
      ],
    );
  }

  Widget _hello() {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          'HI',
          textStyle: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.w100,
              letterSpacing: 8,
            ),
          ),
          cursor: '',
          speed: const Duration(milliseconds: 300),
        ),
        TypewriterAnimatedText(
          'HALLO',
          textStyle: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.w100,
              letterSpacing: 8,
            ),
          ),
          cursor: '',
          speed: const Duration(milliseconds: 300),
        ),
        TypewriterAnimatedText(
          'HOLA',
          textStyle: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.w100,
              letterSpacing: 8,
            ),
          ),
          cursor: '',
          speed: const Duration(milliseconds: 300),
        ),
        TypewriterAnimatedText(
          'CIAO',
          textStyle: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.w100,
              letterSpacing: 8,
            ),
          ),
          cursor: '',
          speed: const Duration(milliseconds: 300),
        ),
        TypewriterAnimatedText(
          'BONJOUR',
          textStyle: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.w100,
              letterSpacing: 8,
            ),
          ),
          cursor: '',
          speed: const Duration(milliseconds: 300),
        ),
      ],
      totalRepeatCount: 4,
      pause: const Duration(milliseconds: 3000),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }

  Widget _helloMobile() {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          'HI',
          textStyle: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w100,
              letterSpacing: 8,
            ),
          ),
          cursor: '',
          speed: const Duration(milliseconds: 300),
        ),
        TypewriterAnimatedText(
          'HALLO',
          textStyle: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w100,
              letterSpacing: 8,
            ),
          ),
          cursor: '',
          speed: const Duration(milliseconds: 300),
        ),
        TypewriterAnimatedText(
          'HOLA',
          textStyle: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w100,
              letterSpacing: 8,
            ),
          ),
          cursor: '',
          speed: const Duration(milliseconds: 300),
        ),
        TypewriterAnimatedText(
          'CIAO',
          textStyle: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w100,
              letterSpacing: 8,
            ),
          ),
          cursor: '',
          speed: const Duration(milliseconds: 300),
        ),
        TypewriterAnimatedText(
          'BONJOUR',
          textStyle: GoogleFonts.juliusSansOne(
            textStyle: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w100,
              letterSpacing: 8,
            ),
          ),
          cursor: '',
          speed: const Duration(milliseconds: 300),
        ),
      ],
      totalRepeatCount: 4,
      pause: const Duration(milliseconds: 3000),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }

  Widget _watchNext() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      height: MediaQuery.of(context).size.width * 0.35,
      width: MediaQuery.of(context).size.width * 0.35,
      decoration: const BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'WATCH NEXT',
                style: GoogleFonts.juliusSansOne(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              TextButton(
                child: Image.asset(
                  'assets/github.png',
                  height: 32,
                ),
                onPressed: () {
                  _launchURL(watchNextGitHubUrl);
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.android,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {
                  _launchURL(watchNextAndroidUrl);
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.apple,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {
                  _launchURL(watchNextIosUrl);
                },
              ),
            ],
          ),
          Expanded(child: Container()),
          Center(
            child: Image.asset(
              'assets/watch-next.png',
              height: MediaQuery.of(context).size.width * 0.27,
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _watchNextMobile() {
    return Container(
      padding: const EdgeInsets.all(16),
      height: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'WATCH NEXT',
                style: GoogleFonts.juliusSansOne(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              TextButton(
                child: Image.asset(
                  'assets/github.png',
                  height: 32,
                ),
                onPressed: () {
                  _launchURL(watchNextGitHubUrl);
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.android,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {
                  _launchURL(watchNextAndroidUrl);
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.apple,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {
                  _launchURL(watchNextIosUrl);
                },
              ),
            ],
          ),
          Expanded(child: Container()),
          Center(
            child: Image.asset(
              'assets/watch-next.png',
              height: MediaQuery.of(context).size.width * 0.69,
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _dentific() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      height: MediaQuery.of(context).size.width * 0.26,
      width: MediaQuery.of(context).size.width * 0.26,
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'DENTIFIC',
                style: GoogleFonts.juliusSansOne(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              IconButton(
                icon: const Icon(
                  Icons.android,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  _launchURL(dentificAndroidUrl);
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.apple,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  _launchURL(dentificIosUrl);
                },
              ),
            ],
          ),
          Expanded(child: Container()),
          Center(
            child: Image.asset(
              'assets/dentific.png',
              height: MediaQuery.of(context).size.width * 0.15,
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _dentificMobile() {
    return Container(
      padding: const EdgeInsets.all(16),
      height: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'DENTIFIC',
                style: GoogleFonts.juliusSansOne(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              IconButton(
                icon: const Icon(
                  Icons.android,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  _launchURL(dentificAndroidUrl);
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.apple,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  _launchURL(dentificIosUrl);
                },
              ),
            ],
          ),
          Expanded(child: Container()),
          Center(
            child: Image.asset(
              'assets/dentific.png',
              height: MediaQuery.of(context).size.width * 0.69,
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _links() {
    return Column(
      children: [
        _linkItem(githubUrl, 'assets/github.png'),
        const SizedBox(height: 32),
        _linkItem(linkedinUrl, 'assets/linkedin.png'),
        const SizedBox(height: 32),
        _linkItem(publicationUrl, 'assets/publication.png'),
      ],
    );
  }

  Widget _linksMobile() {
    return Row(
      children: [
        _linkItemMobile(githubUrl, 'assets/github.png'),
        Expanded(child: Container()),
        _linkItemMobile(linkedinUrl, 'assets/linkedin.png'),
        const SizedBox(height: 32),
        Expanded(child: Container()),
        _linkItemMobile(publicationUrl, 'assets/publication.png'),
      ],
    );
  }

  _linkItem(String url, String asset) {
    return TextButton(
      onPressed: () {
        _launchURL(url);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        height: MediaQuery.of(context).size.width * 0.07,
        width: MediaQuery.of(context).size.width * 0.12,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Center(
          child: Image.asset(
            asset,
            height: MediaQuery.of(context).size.width * 0.03,
          ),
        ),
      ),
    );
  }

  _linkItemMobile(String url, String asset) {
    return TextButton(
      onPressed: () {
        _launchURL(url);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 70,
        width: MediaQuery.of(context).size.width * 0.25,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Center(
          child: Image.asset(
            asset,
          ),
        ),
      ),
    );
  }

  Widget _contact() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      height: 85,
      width: MediaQuery.of(context).size.width * 0.42,
      decoration: BoxDecoration(
        color: Colors.green[500],
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CONTACT',
            style: GoogleFonts.juliusSansOne(
              textStyle: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          Row(
            children: [
              const Icon(Icons.email_outlined, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                'filippe1997@gmail.com',
                style: GoogleFonts.juliusSansOne(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              const SizedBox(width: 32),
              const Icon(Icons.phone_outlined, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                '+39 3393047256',
                style: GoogleFonts.juliusSansOne(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _contactMobile() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      height: 140,
      decoration: BoxDecoration(
        color: Colors.green[500],
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CONTACT',
            style: GoogleFonts.juliusSansOne(
              textStyle: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.email_outlined, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                'filippe1997@gmail.com',
                style: GoogleFonts.juliusSansOne(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.phone_outlined, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                '+39 3393047256',
                style: GoogleFonts.juliusSansOne(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
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

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileLayout,
    required this.desktopLayout,
  });

  final Widget mobileLayout;
  final Widget desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 1000) {
          return mobileLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
