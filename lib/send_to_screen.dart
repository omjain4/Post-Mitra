import 'package:flutter/material.dart';
import 'package:login_screen/pick_up_Address.dart';
import 'payment_screen.dart';

class SendToScreen extends StatefulWidget {
  final String fromState;
  final String fromCity;
  final String fromPincode;

  SendToScreen({
    required this.fromState,
    required this.fromCity,
    required this.fromPincode,
  });

  @override
  _SendToScreenState createState() => _SendToScreenState();
}

class _SendToScreenState extends State<SendToScreen> {
  String? toState;
  String? toCity;
  String? itemType;
  final TextEditingController toPincodeController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController lengthController = TextEditingController();

  final Map<String, List<String>> stateCityMap = {
    'Maharashtra': ['Pune', 'Mumbai', 'Nagpur'],
    'Karnataka': ['Bangalore', 'Mysore', 'Hubli'],
    'Delhi': ['New Delhi', 'Central Delhi', 'East Delhi'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50, // Set background color
      appBar: AppBar(
        backgroundColor: Colors.orange.shade50, // Set AppBar color
        title: Text(
          'Send To',
          style: TextStyle(
            color: Colors.red.shade400, // Title text color
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Send To',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red.shade400, // Heading color
              ),
            ),
            DropdownButton<String>(
              value: toState,
              hint: Text('Select State'),
              items: stateCityMap.keys.map((state) {
                return DropdownMenuItem(
                  value: state,
                  child: Text(state),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  toState = value;
                  toCity = null;
                });
              },
            ),
            DropdownButton<String>(
              value: toCity,
              hint: Text('Select City'),
              items: toState == null
                  ? []
                  : stateCityMap[toState]!.map((city) {
                return DropdownMenuItem(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  toCity = value;
                });
              },
            ),
            TextField(
              controller: toPincodeController,
              decoration: InputDecoration(
                labelText: 'Enter Pincode',
                labelStyle: TextStyle(color: Colors.red.shade400), // Label color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Article Details',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red.shade400, // Heading color
              ),
            ),
            DropdownButton<String>(
              value: itemType,
              hint: Text('Select Item Type'),
              items: ['Document', 'Parcel'].map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  itemType = value;
                });
              },
            ),
            TextField(
              controller: weightController,
              decoration: InputDecoration(
                labelText: 'Weight (in gms)',
                labelStyle: TextStyle(color: Colors.red.shade400), // Label color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            TextField(
              controller: lengthController,
              decoration: InputDecoration(
                labelText: 'Length (in cm)',
                labelStyle: TextStyle(color: Colors.red.shade400), // Label color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    if (toState != null &&
                        toCity != null &&
                        toPincodeController.text.isNotEmpty &&
                        itemType != null &&
                        weightController.text.isNotEmpty &&
                        lengthController.text.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PickupAddressScreen(
                            toState: toState!,
                            toCity: toCity!,
                            toPincode: toPincodeController.text,
                            itemType: itemType!,
                            weight: weightController.text,
                            length: lengthController.text,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please fill all the fields')),
                      );
                    }
                  },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade400, // Button color
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                ),
                child: Text(
                  'Confirm Details',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
