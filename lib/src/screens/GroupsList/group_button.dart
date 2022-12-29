import 'package:flutter/material.dart';

class GroupButton extends StatefulWidget {
  final String courseName;
  final String message;
  final String messageSender;
  final int messagesQnty;
  final int hour;
  final int minut;
  final String route;
  const GroupButton(
      {Key? key,
      required this.courseName,
      required this.message,
      required this.messageSender,
      required this.messagesQnty,
      required this.hour,
      required this.minut,
      required this.route})
      : super(key: key);

  @override
  _GroupButtonState createState() => _GroupButtonState();
}

class _GroupButtonState extends State<GroupButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          padding:
              const EdgeInsets.only(bottom: 20, top: 20, left: 16, right: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, widget.route);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Row(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                widget.courseName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '${widget.messageSender}: ${widget.message}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ]),
            const Spacer(),
            Column(
              children: [
                Text(
                  "${widget.hour}:${widget.minut}",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    (widget.messagesQnty).toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
