import 'package:flutter/material.dart';

class ColorContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.purpleAccent,
        child: new Container(
            color: Colors.indigoAccent,
            margin: const EdgeInsets.all(20.0),
            child: new Container(
              color: Colors.blueAccent,
              margin: const EdgeInsets.all(20.0),
              child: new Container(
                color: Colors.lightGreenAccent,
                margin: const EdgeInsets.all(20.0),
                child: new Container(
                  color: Colors.yellowAccent,
                  margin: const EdgeInsets.all(20.0),
                  child: new Container(
                    color: Colors.orangeAccent,
                    margin: const EdgeInsets.all(20.0),
                    child: new Container(
                      color: Colors.redAccent,
                      margin: const EdgeInsets.all(20.0),
                    ),
                  ),
                ),
              ),
            )));
  }
}
