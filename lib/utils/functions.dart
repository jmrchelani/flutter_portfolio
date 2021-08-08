import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

getRatio(BuildContext context) {
  if (MediaQuery.of(context).size.width > 1100)
    return 2.5;
  else if (MediaQuery.of(context).size.width > 980)
    return 2;
  else if (MediaQuery.of(context).size.width > 600)
    return 2.5;
  else if (MediaQuery.of(context).size.width > 410)
    return 2;
  else
    return 1.5;
}

getGithubStats() async {
  http.Response res =
      await http.get(Uri.parse('https://api.github.com/users/jmrchelani'));
  return json.decode(res.body);
}

getGithubProjects() async {
  http.Response res = await http
      .get(Uri.parse('https://api.github.com/users/jmrchelani/repos'));
  return json.decode(res.body);
}
