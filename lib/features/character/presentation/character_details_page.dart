import 'package:demon_slayer/configurations/configurations.dart';
import 'package:demon_slayer/features/app/app.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CharacterDetailsPage extends StatelessWidget {
  const CharacterDetailsPage({Key? key, required this.character})
      : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AutoLeadingButton(
              builder: (context, leading, onPressed) => CircleAvatar(
                radius: kPadding * 3,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: onPressed,
                  color: character.primaryColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kPadding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: kPadding * 6,
                        left: kPadding * 3,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Shimmer.fromColors(
                            baseColor: Colors.grey.shade100,
                            highlightColor: character.primaryColor,
                            direction: ShimmerDirection.ltr,
                            child: Text(
                              character.firstName.toUpperCase(),
                              style: theme.textTheme.displaySmall?.copyWith(
                                color: Colors.white,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: kPadding / 2,
                          ),
                          Text(
                            character.lastName.toUpperCase(),
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: Colors.white60,
                              letterSpacing: 2.4,
                            ),
                          ),
                          const SizedBox(
                            height: kPadding * 4,
                          ),
                          Shimmer.fromColors(
                            baseColor: Colors.grey.shade100,
                            highlightColor: character.primaryColor,
                            direction: ShimmerDirection.ltr,
                            child: Text(
                              character.swordStyle.toUpperCase(),
                              style: theme.textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: kPadding / 2,
                          ),
                          Text(
                            'Style'.toUpperCase(),
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: Colors.white60,
                              letterSpacing: 2.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Hero(
                      tag: character.id,
                      child: Image.asset(
                        'assets/images/characters/${character.id}.png',
                        height: 300,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
