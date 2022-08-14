import 'package:flutter/material.dart';
import 'package:lesson/list/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeChange extends StatelessWidget {
  const ThemeChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider=Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
        value: themeProvider.isDark, onChanged: (value){
        final provider = Provider.of<ThemeProvider>(context, listen: false) ;
         provider.changeTheme(value);
    });
  }
}

class SearchDel extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [Icon(Icons.abc)];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return InkWell(child: Icon(Icons.arrow_back), onTap: (){

    },);
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Column(children: [
      Text("data")
    ],);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Text("suggestions");
  }
}