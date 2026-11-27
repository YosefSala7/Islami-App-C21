
import 'package:flutter/material.dart';
import 'package:islami_app_c21/core/components/background.dart';
import 'package:islami_app_c21/core/gen/assets.gen.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});
  static const tasbihRoute = "/tasbih";

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        img: Assets.images.tasbih.sebhaBg.image(
          width: double.infinity,
          height: double.infinity,
          fit: .cover,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Assets.images.headerImg.image(width: .infinity),
                ),
                Text(
                  "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Column(
                  children: [
                    Assets.images.tasbih.sebhaHead.image(height: 85),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (counter == 30) {
                            counter = 0;
                            return;
                          }
                          counter++;
                        });
                      },
                      child: Stack(
                        alignment: .center,
                        children: [
                          AnimatedRotation(
                            turns: (1 / 30) * counter,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            child: Assets.images.tasbih.sebhaBody1.image(),
                          ),
                          Column(
                            spacing: 20,
                            children: [
                              Text(
                                "سبحان الله",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall,
                              ),
                              Text(
                                counter.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

