import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final double x, y;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.x,
    required this.y,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(x, y),
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration:
              BoxDecoration(color: isInverted ? Colors.white : _blackColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                              color: isInverted ? _blackColor : Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(code,
                            style: TextStyle(
                              color: isInverted
                                  ? _blackColor
                                  : Colors.white.withOpacity(0.8),
                            )),
                      ],
                    )
                  ],
                ),
                Transform.translate(
                  offset: const Offset(-5, 16),
                  child: Transform.scale(
                    scale: 2.2,
                    child: Icon(
                      icon,
                      color: isInverted ? _blackColor : Colors.white,
                      size: 88,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
