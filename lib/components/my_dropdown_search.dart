// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class MyDropdownSearch extends StatefulWidget {
  const MyDropdownSearch({super.key});

  @override
  State<MyDropdownSearch> createState() => _MyDropdownSearchState();
}

class _MyDropdownSearchState extends State<MyDropdownSearch> {
  String username = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: DropdownSearch<String>(
        selectedItem: "Please select user.",
        dropdownBuilder: (context, selectedItem) {
          username = selectedItem!;
          print(username + "a");
          return Text(selectedItem.toString());
        },
        items: ["yusuf", "emin", "navruz"],
        popupProps: PopupProps.bottomSheet(
          constraints: BoxConstraints(maxHeight: 200),
          searchDelay: Duration(seconds: 0),
          searchFieldProps: TextFieldProps(
              cursorHeight: 20,
              decoration: InputDecoration(hintText: "Kullanıcı adı")),
          showSelectedItems: true,
          isFilterOnline: true,
          showSearchBox: true,
        ),
      ),
    );
  }
}


/*

Center(
      child: DropdownSearch<String>(
        items: ["Ev", "İş", "Okul", "Misafir"],
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            labelText: "Adresinizi seçin",
            hintText: "Adres arayın",
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            border: OutlineInputBorder(),
          ),
        ),
        onChanged: (String? newValue) {
          setState(() {
            _selectedAddress = newValue;
          });
        },
        selectedItem: _selectedAddress,
        showSearchBox: true,
        dropdownBuilder: (context, selectedItem) {
          return Text(selectedItem ?? "Bir adres seçin");
        },
        popupItemBuilder: (context, item, isSelected) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: isSelected ? Colors.grey[300] : Colors.white,
            ),
            child: ListTile(
              title: Text(item),
            ),
          );
        },
      ),
    );

 */