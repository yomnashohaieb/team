import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:team/diagnosi_screen/view/diagnosis.dart';

class HomeScreenBody extends StatefulWidget {
  HomeScreenBody({
    super.key,
  });

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  final List<String> article = [
    "Health is a healthy mind in a healthy body",
    "He who has health has hope, and he who has hope has everything",
    "Health is the balance of all forces and their harmony together",
    "Health is a state of complete physical, mental and social well-being",
    "Health is a state of complete physical, mental and social well-being",
    "Health is the greatest of all virtues",
    "If you have health, you probably will be happy, and if you have health and happiness, you have all the wealth you need, even if it is not all you want",
    "Health is the most important thing in life",
    "Health is not a destination, it is a means of life",
    "Health is the key to life",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                    child: z(article: article, tabController: _tabController)),
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Colors.white,
                  elevation: 2,
                  toolbarHeight: 50,
                  flexibleSpace: TabBar(
                      // indicator: const BoxDecoration(),
                      controller: _tabController,
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "ClashDisplay",
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontSize: 16,
                        fontFamily: "ClashDisplay",
                      ),
                      isScrollable: true,
                      tabs: const [
                        Tab(text: "Diabetes"),
                        Tab(text: "Parkinson"),
                        Tab(text: "Breast Cancer"),
                        Tab(text: "Heart Disease"),
                      ]),
                ),
              ];
            },
            body: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  PageV(),
                  PageV(),
                  PageV(),
                  PageV(),
                ])),
      ),
    );
  }
}

class z extends StatelessWidget {
  const z({
    super.key,
    required this.article,
    required TabController tabController,
  });
  final List<String> article;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.sizeOf(context).width,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Flutter Team',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(10),
                    SizedBox(
                      width: 200,
                      child: Text(
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl."
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl."
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl."
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies tincidunt, nunc nisl aliquam nisl, eget aliquam nisl nisl sit amet nisl.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                      "assets/images/82050f23-575a-48e5-9c3e-11f648d329dc.png"),
                ],
              ),
            ],
          ),
        ),
        const Gap(20),
        SizedBox(
          height: 50,
          width: MediaQuery.sizeOf(context).width,
          child: Swiper(
            autoplay: true,
            layout: SwiperLayout.DEFAULT,
            itemWidth: MediaQuery.sizeOf(context).width,
            itemHeight: 50,
            viewportFraction: 0.8,
            scale: 0.9,
            // indicatorLayout: PageIndicatorLayout.WARM
            // pagination: const SwiperPagination(),
            itemBuilder: (BuildContext context, int index) {
              return T(
                articleText: article[index],
              );
            },
            itemCount: article.length,
          ),
        ),
        const Gap(10),
        const Divider(),
        const Gap(10),
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 0.15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                  "assets/images/904397cc-aa97-4e97-8b21-1994338069a0.png"),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Let's learn about ",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "The diseases",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Text(
                    "That affect you",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class T extends StatelessWidget {
  const T({
    super.key,
    required this.articleText,
  });
  final String articleText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          articleText,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        onTap: () {
          Get.bottomSheet(
            SizedBox(
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 100,
                    color: Colors.blue,
                    width: MediaQuery.sizeOf(context).width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.article,
                              color: Colors.white,
                            ),
                            Gap(5),
                            Text(
                              'Medical Article',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Gap(5),
                            Icon(Icons.favorite, color: Colors.white),
                          ],
                        ),
                        Gap(10),
                        SizedBox(
                          width: 200,
                          child: Text(
                            articleText,
                            maxLines: 7,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                          "assets/images/85b7c20f-c3de-4451-a863-4438bd63a3fc.png"),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        leading: const Icon(Icons.article, color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
