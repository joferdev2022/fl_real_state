import 'package:feed_app/widgets/custom_navigator.dart';
import 'package:feed_app/widgets/post_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const SizedBox(
          width: double.infinity,
          child: Text(
            'Search List',
            textAlign: TextAlign.center,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.home))],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        // prefixIconColor: Colors.blue,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Busca tu terreno',
                        isDense: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Icon(Icons.tune),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(const Size(60, 51)),
                      side: MaterialStateProperty.all(const BorderSide(color: Colors.grey)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                    ),
                  )
                ],
              ),
              const Divider(height: 20),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, idx) => const PostTile(),
                separatorBuilder: (_, idx) => const SizedBox(height: 15),
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavigator(),
    );
  }
}
