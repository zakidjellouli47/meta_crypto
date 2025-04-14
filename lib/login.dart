import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Image.asset(
                    'images/earth.png', // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFF09061C), // Background color #09061c
                ),

                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0, top: 16.0), // Add padding here
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 80.0, right: 16.0), // Add padding for spacing
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 25, // Keep the text within bounds
                    ),
                    child: const Text(
                      'Please provide your registered mobile number & verify OTP for login',
                      style: TextStyle(
                        color: Color(0xFF4A495A), // Color #4a495a
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),

                // Phone Number Label
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 160.0), // Space for "Phone Number"
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Color(0xFF6D6F92), // Color #6d6f92
                      fontSize: 18,
                    ),
                  ),
                ),

                // Phone Number Input Field
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 195.0, right: 16.0), // Space for the input field
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFF131529), // Input field background color
                      hintText: '001 | 781203 23359', // Placeholder text
                      hintStyle: const TextStyle(color: Color(0xFF6D6F92)), // Hint text color
                      prefixIcon: const Icon(Icons.phone, color: Color(0xFF6D6F92)), // Phone icon
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Rounded corners
                        borderSide: BorderSide.none, // Remove border line
                      ),
                    ),
                    style: const TextStyle(color: Colors.white), // Text color inside the input
                  ),
                ),

                // Login Button
                Positioned(
                  bottom: 190.0, // Position the button above the bottom edge
                  left: 16.0,
                  right: 16.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF4179A9), Color(0xFF99BE97)], // Gradient colors
                      ),
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Define your login action here
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0), // Vertical padding for button
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white, // Text color
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 150.0, // Position below the button
                  left: 16.0,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                            color: Color(0xFF4A495A), // Color for the first part
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(
                            color: Color(0xFF7F946C), // Color for the 'Sign up' part
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
