import 'package:flutter/material.dart';
import 'package:reminder_app/widgets/contain.dart';

class Reminder extends StatelessWidget {
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      suffixIcon: const Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                      labelText: "Search",
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Contain(
                            icon: Icons.date_range_rounded,
                            title: "Today",
                            count: 1,
                            color: Colors.blue),
                        SizedBox(
                          height: 20,
                        ),
                        Contain(
                            icon: Icons.all_inbox,
                            title: "All",
                            count: 1,
                            color: Colors.grey),
                        SizedBox(
                          height: 20,
                        ),
                        Contain(
                            icon: Icons.done_all,
                            title: "Completed",
                            color: Colors.grey)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Contain(
                            icon: Icons.schedule,
                            title: "Scheduled",
                            color: Colors.red,
                            count: 1),
                        SizedBox(
                          height: 20,
                        ),
                        Contain(
                            icon: Icons.flag,
                            title: "Flagged",
                            color: Colors.yellow,
                            count: 0)
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "My Lists",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 95,
                // width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.withOpacity(0.25)),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.notifications_active_rounded,
                            color: Colors.orange,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Reminders",
                            style: TextStyle(color: Colors.white),
                          ),
                          Spacer(),
                          Text(
                            "1",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Spacer(),
                      Divider(
                        thickness: 0.1,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.notifications_active_rounded,
                            color: Colors.orange,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Family",
                            style: TextStyle(color: Colors.white),
                          ),
                          Spacer(),
                          Text(
                            "0",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  const Icon(
                    Icons.add_box_rounded,
                    color: Colors.blue,
                  ),
                  // const SizedBox(width: 8,),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "New Reminder",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      )),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Add List",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
