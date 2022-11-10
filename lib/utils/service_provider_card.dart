import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution/utils/dimensions.dart';
import 'package:solution/utils/neomorphism/neomorphism_box.dart';

class ServiceProvider extends StatelessWidget {
  void Function() dilog;
  String name;
  String spatiality;
  String language;
  String exp;
  String free;
  String calls;
  ServiceProvider(
      {Key? key,
      required this.dilog,
      required this.name,
      required this.spatiality,
      required this.language,
      required this.exp,
      required this.free,
      required this.calls})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimensions.SIZE_SMALL,
          right: Dimensions.SIZE_SMALL,
          top: Dimensions.SIZE_SMALL,
          bottom: Dimensions.SIZE_LARGE),
      child: NeuBox(
          height: 130,
          width: 200,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //todo: photo and stars
                Padding(
                  padding: const EdgeInsets.all(Dimensions.SIZE_EXTRA_SMALL),
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_circle_rounded,
                        color: Color(0xFF343434),
                        size: 70,
                      ),
                      Container(
                        width: 80,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //todo: stars
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xFF343434),
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xFF343434),
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xFF343434),
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xFF343434),
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xFF343434),
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(
                                Dimensions.SIZE_EXTRA_SMALL),
                            child: Text(
                              calls+" Calls",
                              style: TextStyle(fontSize: 6),
                            ),
                          )),
                    ],
                  ),
                ),

                // name and information
                Padding(
                  padding: const EdgeInsets.all(Dimensions.SIZE_EXTRA_SMALL),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //todo:name
                      Padding(
                        padding:
                            const EdgeInsets.all(Dimensions.SIZE_EXTRA_SMALL),
                        child: Text(
                          name,
                          style: TextStyle(
                              fontSize: Dimensions.SIZE_DEFAULT,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      //todo:type of spaselty
                      Padding(
                        padding: const EdgeInsets.only(
                            left: Dimensions.SIZE_EXTRA_SMALL,
                            right: Dimensions.SIZE_EXTRA_SMALL,
                            bottom: Dimensions.SIZE_EXTRA_SMALL),
                        child: Text(
                          spatiality,
                          style: TextStyle(
                            fontSize: Dimensions.SIZE_SMALL,
                          ),
                        ),
                      ),
                      //todo:language
                      Padding(
                        padding: const EdgeInsets.only(
                            left: Dimensions.SIZE_EXTRA_SMALL,
                            right: Dimensions.SIZE_EXTRA_SMALL,
                            bottom: Dimensions.SIZE_EXTRA_SMALL),
                        child: Text(
                          language,
                          style: TextStyle(
                            fontSize: Dimensions.SIZE_SMALL,
                          ),
                        ),
                      ),
                      //todo:Exp
                      Padding(
                        padding: const EdgeInsets.only(
                            left: Dimensions.SIZE_EXTRA_SMALL,
                            right: Dimensions.SIZE_EXTRA_SMALL,
                            bottom: Dimensions.SIZE_EXTRA_SMALL),
                        child: Row(
                          children: [
                            Text(
                              "Exp: ",
                              style: TextStyle(
                                fontSize: Dimensions.SIZE_SMALL,
                              ),
                            ),
                            Text(
                              exp,
                              style: TextStyle(
                                fontSize: Dimensions.SIZE_SMALL,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //todo:Free time
                      Padding(
                        padding: const EdgeInsets.only(
                            left: Dimensions.SIZE_EXTRA_SMALL,
                            right: Dimensions.SIZE_EXTRA_SMALL,
                            bottom: Dimensions.SIZE_EXTRA_SMALL),
                        child: Row(
                          children: [
                            Text(
                              "Free: ",
                              style: TextStyle(
                                  fontSize: Dimensions.SIZE_SMALL,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              free,
                              style: TextStyle(
                                fontSize: Dimensions.SIZE_SMALL,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // chat btn and blue tik
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      CupertinoButton(padding: EdgeInsets.zero,child: Icon(Icons.favorite), onPressed: (){}),
                      CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: dilog,
                          child: NeuBox(
                              height: 60,
                              width: 40,
                              child: Container(
                                height: 60,
                                width: 40,
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Icon(Icons.input_rounded,size: 20,),
                                ),
                              )))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
