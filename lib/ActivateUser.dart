// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lab_5_1/main.dart';

class ActivateUser extends StatefulWidget {
  const ActivateUser({super.key});
  @override
  State<ActivateUser> createState() => _ActivateUserState();
}

class _ActivateUserState extends State<ActivateUser> {
  bool getActivationCode = false;
  bool tick = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image.network(
                    "https://www.upm.edu.my/assets/images23/20170406143426UPM-New_FINAL.jpg"),
              ),
              const Text(
                'Welcome!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Card(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            !getActivationCode
                                ? "Enter your mobile number to \nactivate your account."
                                : "Enter the activation code you\n received via SMS.",
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          const Icon(
                            Icons.info_outline,
                            size: 30,
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      !getActivationCode
                          ? const Row(
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
                                      labelText: 'Your Phone Number',
                                      border: OutlineInputBorder()),
                                )),
                              ],
                            )
                          : const Expanded(
                              child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'OTP number',
                                  border: OutlineInputBorder()),
                            )),
                      const SizedBox(height: 30),
                      !getActivationCode
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: tick,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      tick = value!;
                                    });
                                  },
                                ),
                                const Text(
                                    "I agree to the terms and conditions"),
                              ],
                            )
                          : Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Didn't Received? ",
                                    textAlign: TextAlign.center,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      null; // Replace URL with your link
                                    },
                                    child: const Text(
                                      'Tap here',
                                      style: TextStyle(
                                        color: Colors
                                            .blue, // Set text color to blue for links
                                        decoration: TextDecoration
                                            .underline, // Underline text
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          !getActivationCode ? otpPage() : toMainPage();
                        },
                        child: Text(!getActivationCode
                            ? 'Get Activation code'
                            : 'Activate'),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: GestureDetector(
                  child: const Text(
                    'Disclaimer | Privacy Statement',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Center(
                  child: Text(
                "Copyright UPM & Kejuruteraan Minyak Sawit\nCCS Sdn.Bhd",
                textAlign: TextAlign.center,
              )),
            ],
          ),
        ),
      ),
    );
  }

  void otpPage() {
    setState(() {
      getActivationCode = !getActivationCode;
    });
  }

  void toMainPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const MyHomePage(),
      ),
    );
  }
}
