import 'package:flutter/material.dart';
import 'color_detail_screen.dart';
class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});
  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}
class _GalleryScreenState extends State<GalleryScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, dynamic>> _allColors = [
    {'name': 'Red', 'color': Colors.red},
    {'name': 'Blue', 'color': Colors.blue},
    {'name': 'Green', 'color': Colors.green},
    {'name': 'Yellow', 'color': Colors.yellow},
    {'name': 'Purple', 'color': Colors.purple},
    {'name': 'Orange', 'color': Colors.orange},
    {'name': 'black', 'color': Colors.black},
    {'name': 'Rose', 'color': const Color(0xFFFF44F3)},
  ];
  List<Map<String, dynamic>> _filteredColors = [];
  @override
  void initState() {
    super.initState();
    _filteredColors = _allColors;
  }
  void _filterColors(String query) {
    setState(() {
      _filteredColors = _allColors
          .where((item) => item['name'].toString().toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Color Gallery')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterColors,
              decoration: const InputDecoration(
                labelText: 'Search Colors',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, 
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: _filteredColors.length,
              itemBuilder: (context, index) {
                final colorItem = _filteredColors[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ColorDetailScreen(color: colorItem['color']),
                      ),
                    );
                  },
                  child: Container(
                    color: colorItem['color'],
                    child: Center(
                      child: Text(
                        colorItem['name'],
                        style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}