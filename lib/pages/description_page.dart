import 'package:first_project/class/item_class.dart';
import 'package:first_project/core/constants.dart';
import 'package:flutter/material.dart';

class DescritionPage extends StatefulWidget {
  const DescritionPage({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  State<DescritionPage> createState() => _DescritionPageState();
}

class _DescritionPageState extends State<DescritionPage> {
  double fontSizeCustom = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('SnackBar'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: kDouble10,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 25;
                      });
                    },
                    child: const Text('Small Title '),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 35;
                      });
                    },
                    child: const Text('Medium Title'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 50;
                      });
                    },
                    child: const Text('large Title'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 200;
                      });
                    },
                    child: const Text('Huge Title'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                      fontSize: fontSizeCustom, fontWeight: FontWeight.bold),
                ),
                // const SizedBox(height: kDouble10),
              ),
              const Text(
                baconDescriptions,
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
