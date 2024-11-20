import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  @override
  _PageViewExampleState createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  final int _lastPageIndex = 3;

  void _nextPage() {
    if (_currentIndex < _lastPageIndex) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.linearToEaseOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: [
                Center(child: Text('First Screen ', style: TextStyle(fontSize: 24))),
                Center(child: Text('Second Screen', style: TextStyle(fontSize: 24))),
                Center(child: Text('Third Screen', style: TextStyle(fontSize: 24))),
                Center(child: Text('Fourth Screen', style: TextStyle(fontSize: 24))),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _currentIndex == _lastPageIndex ? null : _nextPage,
            child: Text(_currentIndex == _lastPageIndex ? "welcome" : "next"),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }


}
