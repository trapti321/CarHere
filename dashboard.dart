import 'package:carhere/src/utils/TextStyle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();

  /// InheritedWidget style accessor to our State object.
  /// We can call this static method from any descendant context to find our
  /// State object and switch the themeMode field value & call for a rebuild.
  static _DashboardState of(BuildContext context) =>
      context.findAncestorStateOfType<_DashboardState>()!;
}

final List<String> gifList = [
  'assets/gifs/audi.gif',
  'assets/gifs/car.gif',
  'assets/gifs/audi_dr.gif',
  'assets/gifs/audi_dr2.gif',
  'assets/gifs/sports_dr.gif',
];

final List<String> interiorList = [
  'assets/interior/audi.gif',
  'assets/interior/bentely.gif',
  'assets/interior/lamborgini.gif',
  'assets/interior/mercedes.gif',
];

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    final size = MediaQuery.of(context).size;
    var textEditingController;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Welcome 😃 ',
            style: AppTextStyles.title,
          ),
          actions: [
            IconButton(
                color: Colors.black,
                icon: const Icon(
                  Icons.help,
                ),
                onPressed: () {}),
          ],
        ),
        body: Scrollbar(
          child: ListView(shrinkWrap: true, children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Text(
                "Top Brands",
                style: AppTextStyles.title,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              height: 80,
              margin: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 10,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      border: Border.all(color: Colors.black),
                    ), //BoxS),
                    child: Image.asset(
                      'assets/logos/audi_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/logos/auston.png',
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/logos/bmw.png',
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/logos/bugatti.png',
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/logos/ferrari.png',
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/logos/jaguar.png',
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/logos/mercedes.png',
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/logos/range.png',
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/logos/maserati.png',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Text(
                "Top Models",
                style: AppTextStyles.title,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: CarouselSlider(
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  aspectRatio: 4 / 3,
                  viewportFraction: 1.0,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  clipBehavior: Clip.hardEdge,
                ),
                items: gifList
                    .map(
                      (item) => SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Image.asset(
                          item,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Text(
                "Top Interiors",
                style: AppTextStyles.title,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: CarouselSlider(
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  aspectRatio: 4 / 3,
                  viewportFraction: 1.0,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  clipBehavior: Clip.hardEdge,
                ),
                items: interiorList
                    .map(
                      (item) => SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Image.asset(
                          item,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ]),
        ));
    // child: RawScrollbar(
    //     controller: _topRecommendationController,
    //     thumbColor: AppColors.forestgreen,
    //     radius: Radius.circular(10),
    //     thickness: 3,
    //     // thumbVisibility: true,
    //     minOverscrollLength: 1,
    //     child: NotificationListener<OverscrollNotification>(
    //       // Suppress OverscrollNotification events.
    //       onNotification: (_) => true,
    //       child: ListView.separated(
    //           controller: _topRecommendationController,
    //           shrinkWrap: true,
    //           scrollDirection: Axis.horizontal,
    //           itemCount: 5,
    //           separatorBuilder: (context, index) {
    //             return SizedBox(width: 9);
    //           },
    //           itemBuilder: (context, index) {
    //             return Row(children: [
    //               SizedBox(
    //                 child: InkWell(
    //                   child: Image.asset("assets/logos/bmw.png"),),
    //               ),
    //             ]);
    //           }),
    //     ))),
    //         ),
    //   ]),
    // ));
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      maxChildSize: 0.8,
      minChildSize: 0.5,
      snap: true,
      builder: (BuildContext context, ScrollController scrollController) {
        return ListView(
          shrinkWrap: true,
          controller: scrollController,
          padding: const EdgeInsets.all(20),
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Center(child: Text('Settings')),
              const SizedBox(height: 20),
            ]),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        );
      },
    );
  }
}
