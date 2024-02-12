import 'package:http/http.dart'as http;
import 'package:blogapp/models/addpostmodel.dart';

class AddpostApiService {
Future<dynamic>Postadd(
    String id,
    String post
    )async{
  var client=http.Client();
  var apiurl=Uri.parse("http://10.0.10.115:3001/api/post/viewall/");
  var response= await client.get(apiurl);
  if(response.statusCode==200)
  {
    return postsFromJson(response.body);
  }
  else
  {
    return [];
  }
}
}