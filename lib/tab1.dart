import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({ Key? key }) : super(key: key);

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {

  List name=["Ruchira Kavinda","Mia Andrus","Sunny Lisa"];
  List time = ["Just Now","36 m","12 h"];
  List img= ["assests/my.jpg","assests/girl.png","assests/girl.png"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:<Widget> [
                              Column(
                                children:<Widget> [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                    child:Text(
                                      "News Feed",
                                      style: TextStyle(
                                        fontSize:25.0 ,fontWeight: FontWeight.w700,
                                        ),
                                        )
                                        ),
                                        
                                ],
                              ),
                            Container(
                                margin: EdgeInsets.all(10.0),
                                child: Column(
                                  children:<Widget> [
                                    FloatingActionButton(
                                      backgroundColor: Colors.grey.withOpacity(0.2),
                                      mini: true,
                                      elevation: 0.0,
                                      child: Icon(Icons.search,size: 25,color: Colors.black,),
                                      onPressed: (){},
                                    ),
                                  ],
                                ),
                              ),

                            ],
                ),
              ),

              Container(
                height: 10,
                color: Colors.grey[300],
              ),

              SizedBox(
                height:200,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection:Axis.horizontal,
                  itemBuilder:(context,index) => Row(
                    children: [

                      Container(
                        width: index==0?110:0.0,
                        margin: EdgeInsets.fromLTRB(10,10, index==0?10:0 ,10),
                        child: Center(
                          child:Column(
                            children: [
                              Text("")
                            ],
                          ),
                          ),
                        color: Colors.black,
                      ),


                      Container(
                        width: 110,
                        margin: EdgeInsets.fromLTRB(0,10,0,10),
                        child: Center(
                          child:Column(
                            children: [
                              Text("Card dgdgfdh $index"),
                              Text("Card dgdgfdh $index"),
                              Text("Card dgdgfdh $index"),
                            ],
                          ),
                          ),
                        color: Colors.teal[800],
                      ),
                    ],
                  ) 
                  ),
              ),

              Container(
                height: 10,
                color: Colors.grey[300],
              ),


              Flexible(
                child:ListView.separated(
                    separatorBuilder: (context, index) => Container(
                    height: 10,
                    color: Colors.grey[300],
                  ),
                  itemCount: name.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder:(context,index)=>Column(
                    children: [
                      ListTile(
                        leading:Container(
                              width:45.0,
                              height:45.0,
                              margin: EdgeInsets.fromLTRB(0,0,0,0),
                              decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                              image: AssetImage(img[index]),
                                    fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            onTap: (){},
                            title: Text(name[index],style: TextStyle(fontWeight: FontWeight.w500),),
                            subtitle: Text(time[index]),
                            trailing:Column(
                            children: [
                              IconButton(
                                icon:Icon(Icons.more_horiz,size: 35.0,), onPressed: () {  } ,
                                ),
                              ],
                            ),
                      ),


                      ListTile(
                      title : Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                        image: AssetImage(img[index]),
                        fit: BoxFit.cover,
                        ),
                      ),
                      ),
                      ),



                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,20,20,0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text("251"),
                                  Text(" Stars")
                                ],
                              ),
                            ),

                            Container(
                              child: Row(
                                children: [
                                  Text("51"),
                                  Text(" Comments")
                                ],
                              ),
                            ),

                            Container(
                              child: Row(
                                children: [
                                  Text("25"),
                                  Text(" Shares")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                      Divider(),


                      Padding(
                        padding: EdgeInsets.fromLTRB(20,0,20,0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: (){}, 
                              icon: Icon(Icons.star,size: 30,color: Colors.black54,)),

                            IconButton(
                              onPressed: (){}, 
                              icon: Icon(Icons.comment,size: 30,color: Colors.black54,)),

                            IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.share,size: 30,color: Colors.black54,))
                          ],

                          
                        ),
                      ),

                      Divider(),


                      ListTile(
                        leading:Container(
                          width:35.0,
                          height:35.0,
                          margin: EdgeInsets.fromLTRB(0,0,0,0),
                          decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                          image: AssetImage(img[index]),
                                fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        onTap: (){},
                        title: Text(name[index],style: TextStyle(fontWeight: FontWeight.w500),),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(time[index]),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,10,0,10),
                              child: Text('I need to make body part scrollable.\nHow can i implement that scroll.',style: TextStyle(fontSize: 16,color: Colors.black),),
                            )
                          ],
                        ),
                        
                      ),



                    ],
                  )
                  ) 
              )




            ],
          ),),
      ),
      
    );
  }
}