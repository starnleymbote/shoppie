import 'package:flutter/material.dart';
import 'package:seller_helper/Service/api_service.dart';
import 'package:seller_helper/models/Products.dart';

import '../../models/Album.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late Future<List<Product>> futureProducts;
  late Future<Album> futureAlbum;
  // late Future<bool> futureAuth;
  @override
  void initState() {
    super.initState();
    futureAlbum = ApiService.fetchAlbum();
    futureProducts = ApiService.getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Dashboard'),
      ),
      body: FutureBuilder<List<Product>>(
        future: futureProducts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final productList = snapshot.data!;
            return ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final product = productList[index];
                return ListTile(
                  title: Text(product.title),
                  subtitle: Text(product.description),
                  // You can display additional product information here
                );
              },
            );
          }
        },
      ),
    );
  }
}
