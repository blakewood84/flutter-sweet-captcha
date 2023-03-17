import 'package:font_awesome_flutter/font_awesome_flutter.dart' show FaIcon, FontAwesomeIcons;

enum CaptchaObject {
  star(
    FaIcon(FontAwesomeIcons.star, size: 14),
    'Star',
  ),
  heart(
    FaIcon(FontAwesomeIcons.heart, size: 14),
    'Heart',
  ),
  hippo(
    FaIcon(FontAwesomeIcons.hippo, size: 14),
    'Hippo',
  ),
  umbrella(
    FaIcon(FontAwesomeIcons.umbrella, size: 14),
    'Umbrella',
  ),
  headphones(
    FaIcon(FontAwesomeIcons.headphones, size: 14),
    'Headphones',
  ),
  lemon(
    FaIcon(FontAwesomeIcons.lemon, size: 14),
    'Lemon',
  ),
  truck(
    FaIcon(FontAwesomeIcons.truck, size: 14),
    'Truck',
  ),
  paintRoller(
    FaIcon(FontAwesomeIcons.paintRoller, size: 14),
    'Paint Roller',
  ),
  snowflake(
    FaIcon(FontAwesomeIcons.snowflake, size: 14),
    'Snowflake',
  ),
  snowman(
    FaIcon(FontAwesomeIcons.snowman, size: 14),
    'Snowman',
  ),
  stethoscope(
    FaIcon(FontAwesomeIcons.stethoscope, size: 14),
    'Stethoscope',
  ),
  anchor(
    FaIcon(FontAwesomeIcons.anchor, size: 14),
    'Anchor',
  ),
  building(
    FaIcon(FontAwesomeIcons.building, size: 14),
    'Building',
  ),
  clock(
    FaIcon(FontAwesomeIcons.clock, size: 14),
    'Clock',
  ),
  creditCard(
    FaIcon(FontAwesomeIcons.creditCard, size: 14),
    'Credit Card',
  ),
  flag(
    FaIcon(FontAwesomeIcons.flag, size: 14),
    'Flag',
  );

  int get max => values.length;

  const CaptchaObject(
    this.icon,
    this.text,
  );
  final FaIcon icon;
  final String text;
}
