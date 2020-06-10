import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/login_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'blog.dart';
import 'blog_card_type_two.dart';

class BlogListPageTwo extends StatefulWidget {
  @override
  _BlogListPageTwoState createState() => _BlogListPageTwoState();
}

class _BlogListPageTwoState extends State<BlogListPageTwo> {
  List<Blog> _blogs = List<Blog>();

  @override
  void initState() {
    super.initState();
    _blogs.add(Blog(
        bgColor: selago,
        time: "25 April, 20",
        title: "Work with us and forget about others",
        user: "Alisa Red",
        description:
            "Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
    _blogs.add(Blog(
        bgColor: fair_pink,
        time: "1 Jan, 20",
        title: "Work with us and forget about others",
        user: "Riya Red",
        description:
            "Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
    _blogs.add(Blog(
        bgColor: foam,
        time: "30 March, 20",
        title: "Work with us and forget about others",
        user: "Con Red",
        description:
            "Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
    _blogs.add(Blog(
        bgColor: athen_gray,
        time: "12 Dec, 20",
        title: "Work with us and forget about others",
        user: "Melyssa Chen",
        description:
            "Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
    _blogs.add(Blog(
        bgColor: foam,
        time: "33 March, 20",
        title: "Work with us and forget about others",
        user: "Alisa Red",
        description:
            "Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
    _blogs.add(Blog(
        bgColor: foam,
        time: "33 March, 20",
        title: "Work with us and forget about others",
        user: "Riya Red",
        description:
            "Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
    _blogs.add(Blog(
        bgColor: foam,
        time: "33 March, 20",
        title: "Work with us and forget about others",
        user: "Con Red",
        description:
            "Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: wood_smoke,
                  ),
                  Expanded(
                    flex: 1,
                    child: LoginText(
                      size: 27,
                      alignment: Alignment.bottomCenter,
                      text: "contra",
                    ),
                  ),
                  IconButton(
                    color: wood_smoke,
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
          itemCount: _blogs.length,
          itemBuilder: (BuildContext context, int index) {
            return BlogCardTypeTwo(
              blog: _blogs[index],
              onTap: () {
                Navigator.pushNamed(context, "/shopping_detail_page_two");
              },
            );
          }),
    );
  }
}
