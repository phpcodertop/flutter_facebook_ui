import 'package:flutter/material.dart';
import 'package:flutter_facebook_ui/pages/home_feed.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../styles.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.appBackgroundColor,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  // top bar
                  const  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'facebook',
                          style: TextStyle(
                            color: Color(0xff0866FF),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FaIcon(
                              FontAwesomeIcons.facebookMessenger,
                              size: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 50,
                    child: TabBar(
                      controller: tabController,
                      indicatorColor: Colors.blue,
                      labelColor: Colors.blue,
                      tabs: const [
                        Tab(icon: FaIcon(FontAwesomeIcons.house) ),
                        Tab(icon: FaIcon(FontAwesomeIcons.tv),),
                        Tab(icon: FaIcon(FontAwesomeIcons.shop),),
                        Tab(icon: FaIcon(FontAwesomeIcons.circleUser),),
                        Tab(icon: FaIcon(FontAwesomeIcons.bell),),
                        Tab(icon: FaIcon(FontAwesomeIcons.bars),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            controller: tabController,
            children: const [
              HomeFeed(),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
              Text('6'),
            ],
          ),
        ),
      ),
    );
  }
}
