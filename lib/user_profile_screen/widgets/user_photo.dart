import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
            height: MediaQuery.sizeOf(context).height / 4,
            width: MediaQuery.sizeOf(context).width,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network('https://picsum.photos/200',
                    fit: BoxFit.fill))),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.withOpacity(.5),
            child: MaterialButton(
              onPressed: () {},
              padding: const EdgeInsets.all(5),
              minWidth: 40,
              height: 40,
              child: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -25,
          left: 0,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              const Hero(
                tag: "userPhoto",
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage(
                    'https://picsum.photos/200',
                  ),
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.withOpacity(.5),
                child: MaterialButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(5),
                  minWidth: 40,
                  height: 40,
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
