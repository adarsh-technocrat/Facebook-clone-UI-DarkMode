import 'package:facebook_clone_darkmode/Constants/constants.dart';
import 'package:facebook_clone_darkmode/DarkModeTheme/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Container(
      color: themeprovider.themeMode().containerColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(Constants.postpic),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                    child: Text(
                      "Taste Life",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    child: Row(
                      children: [
                        Text("3d  . "),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Flexible(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Treat yourself tonight to the delicious\npepper-crusted steak 😉",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          )),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Recipe:\n",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                      text:
                          "https://m.tasteshow.com/product/pepper-steak-salad-with-balsamic-vinaigrette_12772.html",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.network(
                "https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          ),
        ],
      ),
    );
  }
}
