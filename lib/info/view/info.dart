import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:gap/gap.dart';
import 'package:team/components/floating.dart';
import 'package:team/cubits/cubit/is_selected_cubit.dart';
import 'package:team/info/page_data.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IsSelectedCubit(),
      child: Scaffold(
        floatingActionButton: const FloatingButton(),
        appBar: AppBar(
          title: const Text('Info'),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          flex: 2,
                          child: Text(
                            "To be able to use the microphone feature you must pronounce the command correctly",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                              "assets/images/8b669224-0e23-425a-866e-24c811d29815.png"),
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                              "assets/images/cbce4f99-f61b-48d5-82bf-9d683b8b6e66.png"),
                        ),
                        const Gap(25),
                        const Expanded(
                          flex: 3,
                          child: Text(
                            "listen to the command carefully",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                  ],
                ),
              ),
            )
          ],
          body: const InfoBody(),
        ),
      ),
    );
  }
}

class InfoBody extends StatelessWidget {
  const InfoBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (contextX, index) => ListBuilderItem(
              index: index,
              iconPage: PagesData.pagesData[index]["pageIcon"],
              text: PagesData.pagesData[index]["pageName"],
            ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: PagesData.pagesData.length);
  }
}

class ListBuilderItem extends StatefulWidget {
  const ListBuilderItem({
    super.key,
    required this.iconPage,
    required this.text,
    required this.index,
  });
  final IconData iconPage;
  final String text;
  final int index;
  @override
  State<ListBuilderItem> createState() => _ListBuilderItemState();
}

class _ListBuilderItemState extends State<ListBuilderItem> {
  final FlutterTts flutterTts = FlutterTts();

  void speak({required String text}) async {
    await flutterTts.setPitch(1.0);
    await flutterTts.setLanguage("EN - US");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IsSelectedCubit, IsSelectedState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListTile(
          selected:
              widget.index == BlocProvider.of<IsSelectedCubit>(context).index
                  ? true
                  : false,
          onTap: () {
            BlocProvider.of<IsSelectedCubit>(context)
                .setIsSelected(i: widget.index);
            speak(text: widget.text);
          },
          leading: Icon(widget.iconPage),
          title: Text(widget.text),
          // subtitle:
          trailing: Icon(
              BlocProvider.of<IsSelectedCubit>(context).index == widget.index
                  ? Icons.volume_up
                  : Icons.volume_off),
        );
      },
    );
  }
}
