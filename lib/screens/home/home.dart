import 'package:avaliacao_1/models/product.dart';
import 'package:avaliacao_1/provider/Products.dart';
import 'package:avaliacao_1/style.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset("assets/logo.jpg"),
          title: Text("Ofertas do dia"),
          backgroundColor: blueTheme,
        ),
        body: Container(
          color: Colors.white,
          child: ListView.separated(
            itemBuilder: builder,
            separatorBuilder: (BuildContext context, int _) {
              return Divider();
            },
            itemCount: listOfProducts.length,
          ),
        ));
  }

  Widget builder(BuildContext _, int index) {
    Product _product = listOfProducts.elementAt(index);
    return ListTile(
      title: Row(
        children: [
          Image.asset(
            _product.photo,
            width: 100,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                _product.name,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _product.descriptiom,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                _product.valor,
                style: TextStyle(
                    fontSize: 10,
                    color: blueTheme,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    _product.valorParcela,
                    style: TextStyle(
                      fontSize: 10,
                      color: blueTheme,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  IconButton(
                    icon: Icon(
                      (_product.isFavorite)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: pinkTheme,
                    ),
                    onPressed: () {
                      setState(() {
                        _product.isFavorite = !_product.isFavorite;
                      });
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
