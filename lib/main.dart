import 'package:flutter/material.dart';
import 'ActivateUser.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const ActivateUser(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int chosenIndex = 0;
  int factoryIndex = 0;
  bool addUser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //This is the appbar on top showing fac 1 and fac 2
      appBar: AppBar(
        title: Text(
          factoryIndex == 0 ? 'Factory 1' : 'Factory 2',
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),

      //This is the body whenever you clicked the widget factory
      body: (!addUser)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                chosenIndex == 1
                    //page home
                    ? Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Factory Label
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                factoryIndex == 0
                                    ? '1549.7 kW'
                                    : '⚠ABD1234 IS UNREACHABLE!',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  // Dashboard
                                  Expanded(
                                    child: GridView.count(
                                      crossAxisCount: 2,
                                      children: [
                                        Card(
                                          elevation: 2,
                                          margin: const EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Steam Pressure',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                              SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: SfRadialGauge(
                                                  axes: <RadialAxis>[
                                                    RadialAxis(
                                                      minimum: 0,
                                                      maximum: 150,
                                                      ranges: <GaugeRange>[
                                                        GaugeRange(
                                                            startValue: 0,
                                                            endValue: 50,
                                                            color:
                                                                Colors.green),
                                                        GaugeRange(
                                                            startValue: 50,
                                                            endValue: 100,
                                                            color:
                                                                Colors.orange),
                                                        GaugeRange(
                                                            startValue: 100,
                                                            endValue: 150,
                                                            color: Colors.red)
                                                      ],
                                                      pointers: <GaugePointer>[
                                                        NeedlePointer(
                                                            value:
                                                                factoryIndex ==
                                                                        0
                                                                    ? 34.19
                                                                    : 0.0)
                                                      ],
                                                      annotations: <GaugeAnnotation>[
                                                        GaugeAnnotation(
                                                            widget: Text(
                                                                factoryIndex == 0
                                                                    ? '34.19'
                                                                    : '0.0',
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            angle: 90,
                                                            positionFactor: 1.3)
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Card(
                                          elevation: 2,
                                          margin: const EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Steam Flow',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                              SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: SfRadialGauge(
                                                  axes: <RadialAxis>[
                                                    RadialAxis(
                                                      minimum: 0,
                                                      maximum: 150,
                                                      ranges: <GaugeRange>[
                                                        GaugeRange(
                                                            startValue: 0,
                                                            endValue: 50,
                                                            color:
                                                                Colors.green),
                                                        GaugeRange(
                                                            startValue: 50,
                                                            endValue: 100,
                                                            color:
                                                                Colors.orange),
                                                        GaugeRange(
                                                            startValue: 100,
                                                            endValue: 150,
                                                            color: Colors.red)
                                                      ],
                                                      pointers: <GaugePointer>[
                                                        NeedlePointer(
                                                            value:
                                                                factoryIndex ==
                                                                        0
                                                                    ? 22.82
                                                                    : 0.0)
                                                      ],
                                                      annotations: <GaugeAnnotation>[
                                                        GaugeAnnotation(
                                                            widget: Text(
                                                                factoryIndex == 0
                                                                    ? '22.82 T/H'
                                                                    : '0.0',
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            angle: 90,
                                                            positionFactor: 1.3)
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Card(
                                          elevation: 2,
                                          margin: const EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Water Level',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                              SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: SfRadialGauge(
                                                  axes: <RadialAxis>[
                                                    RadialAxis(
                                                      minimum: 0,
                                                      maximum: 150,
                                                      ranges: <GaugeRange>[
                                                        GaugeRange(
                                                            startValue: 0,
                                                            endValue: 50,
                                                            color:
                                                                Colors.green),
                                                        GaugeRange(
                                                            startValue: 50,
                                                            endValue: 100,
                                                            color:
                                                                Colors.orange),
                                                        GaugeRange(
                                                            startValue: 100,
                                                            endValue: 150,
                                                            color: Colors.red)
                                                      ],
                                                      pointers: <GaugePointer>[
                                                        NeedlePointer(
                                                            value:
                                                                factoryIndex ==
                                                                        0
                                                                    ? 55.41
                                                                    : 0.0)
                                                      ],
                                                      annotations: <GaugeAnnotation>[
                                                        GaugeAnnotation(
                                                            widget: Text(
                                                                factoryIndex == 0
                                                                    ? '55.41%'
                                                                    : '0.0',
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            angle: 90,
                                                            positionFactor: 1.3)
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Card(
                                          elevation: 2,
                                          margin: const EdgeInsets.all(8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Power Frequency',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                              SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: SfRadialGauge(
                                                  axes: <RadialAxis>[
                                                    RadialAxis(
                                                      minimum: 0,
                                                      maximum: 150,
                                                      ranges: <GaugeRange>[
                                                        GaugeRange(
                                                            startValue: 0,
                                                            endValue: 50,
                                                            color:
                                                                Colors.green),
                                                        GaugeRange(
                                                            startValue: 50,
                                                            endValue: 100,
                                                            color:
                                                                Colors.orange),
                                                        GaugeRange(
                                                            startValue: 100,
                                                            endValue: 150,
                                                            color: Colors.red)
                                                      ],
                                                      pointers: <GaugePointer>[
                                                        NeedlePointer(
                                                            value:
                                                                factoryIndex ==
                                                                        0
                                                                    ? 50.08
                                                                    : 0.0)
                                                      ],
                                                      annotations: <GaugeAnnotation>[
                                                        GaugeAnnotation(
                                                            widget: Text(
                                                                factoryIndex == 0
                                                                    ? '50.08 Hz'
                                                                    : '0.0',
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            angle: 90,
                                                            positionFactor: 1.3)
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //space between grid atas
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          '${DateTime.now()}',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )

                    // page user
                    : chosenIndex == 0
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height * 0.65,
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              margin: const EdgeInsets.all(6),
                              child: Column(
                                children: [
                                  //contact first name
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    height: 110,
                                    width: double.infinity,
                                    child: Card(
                                      elevation: 4,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              factoryIndex == 0 ? 'Ben' : 'Dan',
                                              style:
                                                  const TextStyle(fontSize: 20),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              factoryIndex == 0
                                                  ? '\u2022 +60109219938'
                                                  : '\u2022 +601234567891',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    height: 110,
                                    width: double.infinity,
                                    child: Card(
                                      elevation: 4,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              factoryIndex == 0
                                                  ? 'Testing 1'
                                                  : 'Testing 2',
                                              style:
                                                  const TextStyle(fontSize: 20),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              factoryIndex == 0
                                                  ? '\u2022 +601234567891'
                                                  : '\u2022 +601345678912',
                                              style:
                                                  const TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    height: 110,
                                    width: double.infinity,
                                    child: Card(
                                      elevation: 4,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              factoryIndex == 0
                                                  ? 'Hello'
                                                  : 'Hi',
                                              style:
                                                  const TextStyle(fontSize: 20),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              factoryIndex == 0
                                                  ? '\u2022 +60123456789'
                                                  : '\u2022 +601456789123',
                                              style:
                                                  const TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    margin: const EdgeInsetsDirectional.only(
                                        end: 20),
                                    child: FloatingActionButton(
                                      onPressed: () => clickInviteUser(),
                                      child: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )

                        //page setting
                        : (chosenIndex == 2)
                            ? SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.65,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  margin: const EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Minimum threshold\t",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          const Icon(
                                            Icons.info_outline,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                              border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 102, 31, 111),
                                                  width: 2),
                                            ),
                                            child: const IconButton(
                                              onPressed: null,
                                              icon: Icon(
                                                Icons.create_rounded,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: GridView.count(
                                          crossAxisCount: 2,
                                          children: [
                                            Column(
                                              children: [
                                                const Text(
                                                  "\nSteam\nPressure",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      bottom: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    color: const Color.fromARGB(
                                                        255, 225, 215, 215),
                                                  ),
                                                  child: TextField(
                                                    textAlign: TextAlign.center,
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              vertical: 16.0,
                                                              horizontal: 20.0),
                                                      labelText: '29 Bar',
                                                      labelStyle:
                                                          const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                const Text(
                                                  "\nSteam\nFlow",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      bottom: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    color: const Color.fromARGB(
                                                        255, 225, 215, 215),
                                                  ),
                                                  child: TextField(
                                                    textAlign: TextAlign.center,
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              vertical: 16.0,
                                                              horizontal: 20.0),
                                                      labelText: '22 T/H',
                                                      labelStyle:
                                                          const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                const Text(
                                                  "\nWater\nLevel",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      bottom: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    color: const Color.fromARGB(
                                                        255, 225, 215, 215),
                                                  ),
                                                  child: TextField(
                                                    textAlign: TextAlign.center,
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              vertical: 16.0,
                                                              horizontal: 20.0),
                                                      labelText: '53 %',
                                                      labelStyle:
                                                          const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                const Text(
                                                  "\nPower\nFrequency",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      bottom: 8),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    color: const Color.fromARGB(
                                                        255, 225, 215, 215),
                                                  ),
                                                  child: TextField(
                                                    textAlign: TextAlign.center,
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              vertical: 16.0,
                                                              horizontal: 20.0),
                                                      labelText: '48 Hz',
                                                      labelStyle:
                                                          const TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : const SizedBox(),

                // This is the Factory Buttons
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              onTap: () {
                                changeFactoryIndex(0);
                              },
                              child: SizedBox(
                                width: 180,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  margin: const EdgeInsets.all(6),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.factory),
                                      ),
                                      const Text(
                                        'Factory 1',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                changeFactoryIndex(1);
                              },
                              child: SizedBox(
                                width: 180,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  margin: const EdgeInsets.all(6),
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.factory),
                                      ),
                                      const Text(
                                        'Factory 2',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                null;
                              },
                              child: SizedBox(
                                width: 200,
                                child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  margin: const EdgeInsets.all(6),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.factory),
                                      ),
                                      const Text(
                                        'Factory 3',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // This is the Bottom Navigation Bar
                BottomNavigationBar(
                  currentIndex: chosenIndex,
                  onTap: (index) {
                    setState(() {
                      chosenIndex = index;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                      label: "",
                      icon: Icon(Icons.person),
                    ),
                    BottomNavigationBarItem(
                      label: "",
                      icon: Icon(Icons.home),
                    ),
                    BottomNavigationBarItem(
                      label: "",
                      icon: Icon(Icons.settings),
                    ),
                  ],
                ),
              ],
            )
          //This will add the new user
          : SizedBox(
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topCenter,
                      child: const Text(
                        "Invitation",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      alignment: Alignment.topCenter,
                      child: const Text(
                        "Invite users",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )),
                  Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      child: const Text(
                        "\t\nOwner's Name\n",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0, horizontal: 8.0),
                      alignment: Alignment.topLeft,
                      child: const TextField(
                        decoration: InputDecoration(
                            labelText: 'Type here',
                            border: OutlineInputBorder()),
                      )),
                  Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "\n\tOwner's Phone Number\n",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 8.0),
                        alignment: Alignment.topLeft,
                        child: const Row(
                          children: [
                            Text(
                              "+60\t",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Enter your phone number',
                                  border: OutlineInputBorder()),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(top: 20),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () => clickInviteUser(),
                      child: const Text("Submit"),
                    ),
                  )
                ],
              ),
            ),
    );
  }

//method  need to change index
  changeFactoryIndex(index) {
    setState(() {
      index == 0 ? factoryIndex = 0 : factoryIndex = 1;
    });
  }

//method click add button
  clickInviteUser() {
    setState(() {
      addUser = !addUser;
    });
  }
}

class FactoryButton extends StatelessWidget {
  final String name;
  final IconData iconData;

  const FactoryButton({super.key, required this.name, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(iconData),
            const SizedBox(width: 8),
            Text(name),
          ],
        ),
      ),
    );
  }
}
