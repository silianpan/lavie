import 'package:lavie/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:lavie/widgets/idea.dart';
// import 'package:lavie/hotel_booking/hotel_home_screen.dart';
import 'package:lavie/widgets/idea_list.dart';
// import 'model/homelist.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  // List<HomeList> homeList = HomeList.homeList;
  AnimationController animationController;
  bool multiple = true;
  List<Idea> ideaList;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    ideaList = List<Idea>.generate(
      10,
      (index) => Idea(
        'https://www.woolha.com/media/2020/03/eevee.png',
        '潇洒的一条狗',
        '攻城狮',
        '3小时前',
        '实习生也能拥有的开水团中秋小黄盒~',
        List<String>.generate(
            5,
            (index) =>
                'https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/da94c47b3c59488586ebfe92ada09a91~tplv-k3u1fbpfcp-zoom-1.image'),
        '一图胜千言',
      ),
    );
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: FutureBuilder<bool>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          } else {
            return Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  appBar(),
                  Expanded(
                    child: FutureBuilder<bool>(
                      future: getData(),
                      builder:
                          (BuildContext context, AsyncSnapshot<bool> snapshot) {
                        if (!snapshot.hasData) {
                          return const SizedBox();
                        } else {
                          return Container(
                              color: Colors.grey,
                              child: IdeaList(
                                ideaList: ideaList,
                              ));
                          // return GridView(
                          //   padding: const EdgeInsets.only(
                          //       top: 0, left: 12, right: 12),
                          //   // ClampingScrollPhysics Android下的微光效果
                          //   // BouncingScrollPhysics IOS下的弹性效果
                          //   physics: const BouncingScrollPhysics(),
                          //   scrollDirection: Axis.vertical,
                          //   children: List<Widget>.generate(
                          //     homeList.length,
                          //     (int index) {
                          //       final int count = homeList.length;
                          //       final Animation<double> animation =
                          //           Tween<double>(begin: 0.0, end: 1.0).animate(
                          //         CurvedAnimation(
                          //           parent: animationController,
                          //           curve: Interval((1 / count) * index, 1.0,
                          //               curve: Curves.fastOutSlowIn),
                          //         ),
                          //       );
                          //       animationController.forward();
                          //       return HomeListView(
                          //         animation: animation,
                          //         animationController: animationController,
                          //         listData: homeList[index],
                          //         callBack: () {
                          //           Navigator.push<dynamic>(
                          //             context,
                          //             MaterialPageRoute<dynamic>(
                          //               builder: (BuildContext context) =>
                          //                   homeList[index].navigateScreen,
                          //             ),
                          //           );
                          //         },
                          //       );
                          //     },
                          //   ),
                          //   gridDelegate:
                          //       SliverGridDelegateWithFixedCrossAxisCount(
                          //     crossAxisCount: multiple ? 2 : 1,
                          //     mainAxisSpacing: 12.0,
                          //     crossAxisSpacing: 12.0,
                          //     childAspectRatio: 1.5,
                          //   ),
                          // );
                        }
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget appBar() {
    return SizedBox(
      height: AppBar().preferredSize.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Container(
              width: AppBar().preferredSize.height - 8,
              height: AppBar().preferredSize.height - 8,
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'lavie',
                  style: TextStyle(
                    fontSize: 22,
                    color: AppTheme.darkText,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 8, right: 8),
          //   child: Container(
          //     width: AppBar().preferredSize.height - 8,
          //     height: AppBar().preferredSize.height - 8,
          //     color: Colors.white,
          //     child: Material(
          //       color: Colors.transparent,
          //       child: InkWell(
          //         borderRadius:
          //             BorderRadius.circular(AppBar().preferredSize.height),
          //         child: Icon(
          //           multiple ? Icons.dashboard : Icons.view_agenda,
          //           color: AppTheme.dark_grey,
          //         ),
          //         onTap: () {
          //           setState(() {
          //             multiple = !multiple;
          //           });
          //         },
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

// class HomeListView extends StatelessWidget {
//   const HomeListView(
//       {Key key,
//       this.listData,
//       this.callBack,
//       this.animationController,
//       this.animation})
//       : super(key: key);

//   final HomeList listData;
//   final VoidCallback callBack;
//   final AnimationController animationController;
//   final Animation<dynamic> animation;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: animationController,
//       builder: (BuildContext context, Widget child) {
//         return FadeTransition(
//           opacity: animation,
//           child: Transform(
//             transform: Matrix4.translationValues(
//                 0.0, 50 * (1.0 - animation.value), 0.0),
//             child: AspectRatio(
//               aspectRatio: 1.5,
//               child: ClipRRect(
//                 borderRadius: const BorderRadius.all(Radius.circular(4.0)),
//                 child: Stack(
//                   alignment: AlignmentDirectional.center,
//                   children: <Widget>[
//                     Image.asset(
//                       listData.imagePath,
//                       fit: BoxFit.cover,
//                     ),
//                     Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         splashColor: Colors.grey.withOpacity(0.2),
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(4.0)),
//                         onTap: () {
//                           callBack();
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
