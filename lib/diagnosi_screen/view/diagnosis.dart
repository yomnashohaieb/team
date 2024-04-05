import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:team/components/custom_material_button.dart';
import 'package:team/components/floating.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class DiagnosisScreen extends StatelessWidget {
  const DiagnosisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: const FloatingButton(),
      body: FutureBuilder(
        future: Future.delayed(
          const Duration(seconds: 3),
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: LottieBuilder.asset("assets/images/zwhxMyUERa.json"),
            );
          } else {
            return const DiagnosisBody();
          }
        },
      ),
    );
  }
}

class DiagnosisBody extends StatelessWidget {
  const DiagnosisBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 25,
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Diabetes",
                ),
                Tab(
                  text: "Prediction",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const PageV(),
              Scaffold(
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                                height: MediaQuery.sizeOf(context).height / 8,
                                width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height / 6,
                              width: MediaQuery.sizeOf(context).width,
                              child: Row(
                                children: [
                                  const Expanded(
                                    flex: 2,
                                    child: Align(
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Add the corresponding details and click Predict to find out whether you are at risk of contracting this disease",
                                              style: TextStyle(
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Gap(10),
                                  Expanded(
                                    child: Image.asset(
                                        "assets/images/0ac736f8-2765-44ad-9a2d-b077a15bef3c.png"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Gap(25),
                        const NewWidget1(),
                        const Gap(10),
                        const NewWidget1(),
                        const Gap(10),
                        const NewWidget1(),
                        const Gap(10),
                        const NewWidget1(),
                        const Gap(10),
                        const NewWidget1(),
                        const Gap(10),
                        const NewWidget1(),
                        const Gap(10),
                        const NewWidget1(),
                        const Gap(10),
                        CustomButton(title: "Predict", onPressed: () {}),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class NewWidget1 extends StatelessWidget {
  const NewWidget1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        hintText: 'Enter',
        labelText: 'Enter',
        prefixIcon: const Icon(Icons.person),
        suffixIcon: IconButton(
          onPressed: () {
            Get.bottomSheet(Container(
              height: MediaQuery.sizeOf(context).height / 4,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                      "assets/images/45067080-c1dc-40de-baf8-13efc1a6e6fd.png"),
                  Container(
                    // height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, voluptates"
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, voluptates"
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, voluptates."
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                          speed: const Duration(milliseconds: 150),
                          textStyle: const TextStyle(color: Colors.white),
                        )
                      ],
                      isRepeatingAnimation: false,
                      displayFullTextOnTap: true,
                      stopPauseOnTap: false,
                      repeatForever: false,
                    ),
                  )
                ],
              ),
            ));
          },
          icon: const Icon(Icons.info),
        ),
      ),
    );
  }
}

class PageV extends StatelessWidget {
  const PageV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingButton(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const VideoPresentation(),
              const Divider(),
              const OverView(),
              const Divider(),
              Symptoms(),
              const Divider(),
              const Doctor(),
              const Divider(),
              Causes(),
              const Divider(),
              const RiskFactors(),
              const Divider(),
              const Prevention(),
              const Divider(),
              const Complications()
            ],
          ),
        ),
      ),
    );
  }
}

class VideoPresentation extends StatefulWidget {
  const VideoPresentation({super.key});

  @override
  State<VideoPresentation> createState() => _VideoPresentationState();
}

class _VideoPresentationState extends State<VideoPresentation> {
  late FlickManager _flickManager;
  @override
  void initState() {
    _flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController:
          VideoPlayerController.asset("assets/images/Diabetes.mp4"),
    );
    super.initState();
  }

  @override
  void dispose() {
    _flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 16,
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(10),
        child: FlickVideoPlayer(
          flickVideoWithControls: FlickVideoWithControls(
            controls: IconTheme(
                data: const IconThemeData(color: Colors.black),
                child: FlickPortraitControls(
                  progressBarSettings: FlickProgressBarSettings(
                    bufferedColor: Colors.white.withOpacity(0.2),
                    playedColor: Colors.black54,
                    handleColor: Colors.black,
                  ),
                )),
          ),
          flickManager: _flickManager,
        ),
      ),
    );
  }
}

class Prevention extends StatelessWidget {
  const Prevention({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Prevention",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                        "Type 1 diabetes can't be prevented. But the healthy lifestyle choices that help treat prediabetes, type 2 diabetes and gestational diabetes can also help prevent them:")
                  ],
                )),
            const Gap(10),
            Expanded(
              child: Image.asset(
                  "assets/images/8d4058fa-8536-4c04-8f7f-8c6deda478ce.png"),
            ),
          ],
        ),
        const Gap(10),
        const Text(
            "Eat healthy foods. Choose foods lower in fat and calories and higher in fiber. Focus on fruits, vegetables and whole grains. Eat a variety to keep from feeling bored."),
        const Gap(10),
        const Text(
            "Get more physical activity. Try to get about 30 minutes of moderate aerobic activity on most days of the week. Or aim to get at least 150 minutes of moderate aerobic activity a week. For example, take a brisk daily walk. If you can't fit in a long workout, break it up into smaller sessions throughout the day."),
        const Gap(10),
        const Text(
            "Lose excess pounds. If you're overweight, losing even 7% of your body weight can lower the risk of diabetes. For example, if you weigh 200 pounds (90.7 kilograms), losing 14 pounds (6.4 kilograms) can lower the risk of diabetes."
            "But don't try to lose weight during pregnancy. Talk to your provider about how much weight is healthy for you to gain during pregnancy."
            "To keep your weight in a healthy range, work on long-term changes to your eating and exercise habits. Remember the benefits of losing weight, such as a healthier heart, more energy and higher self-esteem."),
        const Gap(10),
      ],
    );
  }
}

class Complications extends StatelessWidget {
  const Complications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            Text("Complications : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            Text(
                "Long-term complications of diabetes develop gradually. The longer you have diabetes — and the less controlled your blood sugar — the higher the risk of complications. Eventually, diabetes complications may be disabling or even life-threatening. In fact, prediabetes can lead to type 2 diabetes. Possible complications include:")
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Image.asset(
                  "assets/images/cf89ab7b-a46e-47d5-8bd5-035a07dfcd17.png"),
            ),
            const Gap(10),
            Expanded(
              child: Image.asset(
                  "assets/images/b8937cd2-0625-4190-9b08-714bee3cff60.png"),
            ),
          ],
        ),
        const Text(
            "Heart and blood vessel (cardiovascular) disease. Diabetes majorly increases the risk of many heart problems. These can include coronary artery disease with chest pain (angina), heart attack, stroke and narrowing of arteries (atherosclerosis). If you have diabetes, you're more likely to have heart disease or stroke."),
        const Gap(10),
        const Text(
            "Nerve damage from diabetes (diabetic neuropathy). Too much sugar can injure the walls of the tiny blood vessels (capillaries) that nourish the nerves, especially in the legs. This can cause tingling, numbness, burning or pain that usually begins at the tips of the toes or fingers and gradually spreads upward."),
        const Gap(10),
        const Text(
            "Damage to the nerves related to digestion can cause problems with nausea, vomiting, diarrhea or constipation. For men, it may lead to erectile dysfunction."),
        const Gap(10),
        const Text(
            "Kidney damage from diabetes (diabetic nephropathy). The kidneys hold millions of tiny blood vessel clusters (glomeruli) that filter waste from the blood. Diabetes can damage this delicate filtering system."),
        const Gap(10),
        const Text(
            "Eye damage from diabetes (diabetic retinopathy). Diabetes can damage the blood vessels of the eye. This could lead to blindness."),
        const Gap(10),
        const Text(
            "Foot damage. Nerve damage in the feet or poor blood flow to the feet increases the risk of many foot complications."),
        const Gap(10),
        const Text(
            "Skin and mouth conditions. Diabetes may leave you more prone to skin problems, including bacterial and fungal infections."),
        const Gap(10),
        const Text(
            "Hearing impairment. Hearing problems are more common in people with diabetes."),
      ],
    );
  }
}

class RiskFactors extends StatelessWidget {
  const RiskFactors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(
                  "assets/images/62584491-0027-496d-abcb-894037e41926.png"),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Risk factors : ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  Gap(10),
                  Text(
                      "Risk factors for diabetes depend on the type of diabetes. Family history may play a part in all types. Environmental factors and geography can add to the risk of type 1 diabetes."),
                  Gap(10),
                  Text(
                      "Sometimes family members of people with type 1 diabetes are tested for the presence of diabetes immune system cells (autoantibodies). If you have these autoantibodies, you have an increased risk of developing type 1 diabetes. But not everyone who has these autoantibodies develops diabetes."),
                  Gap(10),
                  Text(
                      "Risk factors for diabetes depend on the type of diabetes. Family history may play a part in all types. Environmental factors and geography can add to the risk of type 1 diabetes."),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class Causes extends StatelessWidget {
  Causes({
    super.key,
  });
  final List<String> insulinWorks = [
    "The pancreas releases insulin into the bloodstream.",
    "The insulin circulates, letting sugar enter the cells.",
    "Insulin lowers the amount of sugar in the bloodstream.",
    "As the blood sugar level drops, so does the secretion of insulin from the pancreas.",
  ];
  final List<String> roleOfGlucose = [
    "Glucose comes from two major sources: food and the liver.",
    "Sugar is absorbed into the bloodstream, where it enters cells with the help of insulin.",
    "The liver stores and makes glucose.",
    "When glucose levels are low, such as when you haven't eaten in a while, the liver breaks down stored glycogen into glucose. This keeps your glucose level within a typical range.",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Causes :",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Gap(5),
                    Text(
                        "To understand diabetes, it's important to understand how the body normally uses glucose."),
                    Gap(20),
                    Text(
                      "How insulin works ?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Gap(5),
                    Text(
                        "Insulin is a hormone that comes from a gland behind and below the stomach (pancreas)."),
                  ],
                )),
            Expanded(
              child: Image.asset(
                  "assets/images/d38c2241-07c6-48c8-bd64-5ed1dba6ec42.png"),
            )
          ],
        ),
        const Gap(5),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${insulinWorks[index]}"),
            separatorBuilder: (context, index) => const Gap(5),
            itemCount: insulinWorks.length),
        const Gap(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("The role of glucose :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            const Gap(5),
            const Text(
                "Glucose — a sugar — is a source of energy for the cells that make up muscles and other tissues."),
            const Gap(10),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    Text("${index + 1} : ${roleOfGlucose[index]}"),
                separatorBuilder: (context, index) => const Gap(5),
                itemCount: roleOfGlucose.length),
            const Gap(10),
            const Text(
                "The exact cause of most types of diabetes is unknown. In all cases, sugar builds up in the bloodstream. This is because the pancreas doesn't produce enough insulin. Both type 1 and type 2 diabetes may be caused by a combination of genetic or environmental factors. It is unclear what those factors may be."),
          ],
        )
      ],
    );
  }
}

class Doctor extends StatelessWidget {
  const Doctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(
                  "assets/images/713fa189-7d23-4627-bef9-0c596fd2dc2f.png"),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "When to see a doctor :",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Gap(10),
                  Text(
                    "If you think you or your child may have diabetes. If you notice any possible diabetes symptoms, contact your health care provider. The earlier the condition is diagnosed, the sooner treatment can begin.",
                    style: TextStyle(),
                  ),
                  Gap(10),
                  Text(
                    "If you've already been diagnosed with diabetes. After you receive your diagnosis, you'll need close medical follow-up until your blood sugar levels stabilize.",
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class Symptoms extends StatelessWidget {
  Symptoms({
    super.key,
  });

  final List<String> symptomsOfType = [
    "Feeling more thirsty than usual.",
    "Urinating often.",
    "Losing weight without trying.",
    "Presence of ketones in the urine. Ketones are a byproduct of the breakdown of muscle and fat that happens when there's not enough available insulin.",
    "Feeling tired and weak.",
    "Feeling irritable or having other mood changes.",
    "Having blurry vision.",
    "Having slow-healing sores.",
    "Getting a lot of infections, such as gum, skin and vaginal infections."
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Symptoms : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Gap(5),
                      Text(
                          "Diabetes symptoms depend on how high your blood sugar is. Some people, especially if they have prediabetes, gestational diabetes or type 2 diabetes, may not have symptoms. In type 1 diabetes, symptoms tend to come on quickly and be more severe."),
                    ],
                  ),
                ),
                const Gap(10),
                Expanded(
                    child: Image.asset(
                        "assets/images/d6855842-7cea-4d4f-84fd-581495b91bef.png")),
              ],
            ),
          ],
        ),
        const Gap(10),
        const Text(
          "Some of the symptoms of type 1 diabetes and type 2 diabetes are:",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Divider(),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                Text("${index + 1} : ${symptomsOfType[index]}"),
            separatorBuilder: (context, index) => const Gap(5),
            itemCount: symptomsOfType.length),
      ],
    );
  }
}

class OverView extends StatelessWidget {
  const OverView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset("assets/images/Property 1=doctor_22_copy.png"),
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Overview : ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Gap(10),
                  Text(
                      "Diabetes mellitus refers to a group of diseases that affect how the body uses blood sugar (glucose). "),
                  Gap(10),
                  Text(
                      "Glucose is an important source of energy for the cells that make up the muscles and tissues. It's also the brain's main source of fuel."),
                ],
              ),
            )
          ],
        ),
        const Gap(10),
        const Text(
            textAlign: TextAlign.center,
            "The main cause of diabetes varies by type. But no matter what type of diabetes you have, it can lead to excess sugar in the blood. Too much sugar in the blood can lead to serious health problems."),
        const Gap(10),
        const Text(
            textAlign: TextAlign.center,
            "Chronic diabetes conditions include type 1 diabetes and type 2 diabetes. Potentially reversible diabetes conditions include prediabetes and gestational diabetes. Prediabetes happens when blood sugar levels are higher than normal. But the blood sugar levels aren't high enough to be called diabetes. And prediabetes can lead to diabetes unless steps are taken to prevent it. Gestational diabetes happens during pregnancy. But it may go away after the baby is born."),
      ],
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Colors.blue,
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
      ),
      leading: const Icon(Icons.article),
      children: const [
        Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Overview',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Divider(),
              Text(
                  'Diabetes mellitus refers to a group of diseases that affect how the body uses blood sugar (glucose). Glucose is an important source of energy for the cells that make up the muscles and tissues. Its also the brains main source of fuel.'),
              Gap(10),
              Text(
                  'The main cause of diabetes varies by type. But no matter what type of diabetes you have, it can lead to excess sugar in the blood. Too much sugar in the blood can lead to serious health problems.'),
              Gap(10),
              Text(
                  "Chronic diabetes conditions include type 1 diabetes and type 2 diabetes. Potentially reversible diabetes conditions include prediabetes and gestational diabetes. Prediabetes happens when blood sugar levels are higher than normal. But the blood sugar levels aren't high enough to be called diabetes. And prediabetes can lead to diabetes unless steps are taken to prevent it. Gestational diabetes happens during pregnancy. But it may go away after the baby is born"),
            ],
          ),
        )
      ],
    );
  }
}
