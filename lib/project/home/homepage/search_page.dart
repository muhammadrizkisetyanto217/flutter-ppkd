import 'package:flutter/material.dart';
import 'package:flutter_ppkd/model/list_class.dart';
import 'package:flutter_ppkd/data/list_school.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<NameModel> filteredSchools = schoolList;
  TextEditingController searchController = TextEditingController();

  void _filterSearchResults(String query) {
    setState(() {
      filteredSchools = schoolList
          .where((school) =>
              school.nameSchool.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                // fillColor: Colors.amber,
                labelText: "Search",
                hintText: "Type school name...",
                prefixIcon: const Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                contentPadding: EdgeInsets.zero,
              ),
              onChanged: _filterSearchResults,
            ),
          ),
          
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: filteredSchools.length,
              itemBuilder: (context, index) {
                final school = filteredSchools[index];
                return ListTile(
                  title: Text(school.nameSchool),
                  subtitle: Text(school.address),
                  trailing: Text(school.phone),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
