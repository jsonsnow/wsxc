import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wsxc/common/funs.dart';

class SearchBarView extends StatefulWidget {
  SearchBarView({Key key, this.showImageSearch}) : super(key: key);
  final bool showImageSearch;
  @override
  State<StatefulWidget> createState() {
    return _SearchBarViewState(showImageSearch: showImageSearch);
  }
}

class _SearchBarViewState extends State<SearchBarView> {
  _SearchBarViewState({this.showImageSearch});
  String imageUrl;
  String text;
  final bool showImageSearch;
  TextEditingController _searchCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print('search bar');
    String imageData =
        "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAMAAAD04JH5AAAANlBMVEUAAACOjpKPj5ONjZOPj4+OjpKPj5WOjpONjZKNjZOOjpOPj4+NjZKNjZOOjpKOjpOMjJOOjpNZ2ovoAAAAEXRSTlMAwECAEPAwoGDQzyBw4LCQUB7w0pkAAAK+SURBVHja7ZvtsqMgDIZFEkDRKvd/szu066YtAqJn4s6cPD/ttO+DfEWcdoIgvOPGwMTD7OXbwIjbaX/gBH0iMMfrSjPwTFoSgdeN4QAesandF30cGx0PkBOYOiZURqDvMoiACIiACIiACIjA/QKrtko7f5MAaNzKaX+HgB8D4fgFDIZ3Jm4BGMMnK7OADl/MzAIYvnGsAmtIeLAK6JDCKqD+RwHPKWDvvgNTSJhZBXxIWHjXAXVpCPTXBfrwhT2c7m0Ic98mUF+LByiGpl+cLm/Hy0e+qcSmm5i9XJA4pPsPRzsfSdpeLslgGp7zz2aaXzvzc+cFCJ/5sNhrys5kwFgVW6ogX0MRDacAvPJxfesNBCYBGv4KPorKkUeA8pfvosZyCFC+S+eEYxDY8nHdWRTRMAiYV77ZnRcjXBHw5kg+ZvI7GGgYtAnQyxxUfTU/v1tB/MydFOjnrSCHM/n0+2jOCMAj/APNmXwq7sZGAdrWyKA1n4gNWa4/mPSN+QTM8ettAqC2lj/sULoHDmmMZDHbplARSI8GZve00VkDd6xanKJkVSCtKjRsQgMZNOZTie0OC1iqAj+vjZCUH9V8Wg3QlwTS7tddpGRgD+XTxqjqAnQyhXQpYwBjJT+9W9MBAYP0ELBr4GmZaHpcgyF2QlXAITVr3wBfE2NpPrUxsRNqAq78s0OIjLpfsC2flraygK2suhANCGwsI4aSAOUPvtiRxGy6NjwWBUBRUVsxoHHaxpQXODyrQF05rVBZgS1/OtAMjM0/V0V6zAkYbBjVq15/+ohmwsZR/dMC2enHKTBk8hkECrOKRaCUzyZgM/lcArar8XtfXIqACIiACIiACIiACIiACIiACPwWAd0xMe4ImO2dEgMmkADB93jux10BFQ1QMZA5CewDJzPc8Gez6gGzt4qJCTpBEAThL38AS5eIfgB01d0AAAAASUVORK5CYII=";
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 0),
      height: 40,
      child: TextField(
        controller: _searchCtr,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          hintText: "搜索",
          filled: true,
          fillColor: HexColor.fromHex("F5F5F5"),
          prefixIcon: Icon(Icons.search),
          suffix: showImageSearch
              ? Image.memory(
                  base64.decode(imageData.split(",")[1]),
                  width: 20,
                  height: 20,
                )
              : null,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
