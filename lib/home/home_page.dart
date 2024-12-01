import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview_task/theme/color_theme.dart';

import '../constans/image_const.dart';
import '../main.dart';
import '../widgets/costom_listview.dart';




class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}
final educatorProvider = StateProvider(
      (ref) => true,
);final courseProvider = StateProvider(
      (ref) => true,
);
class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blackColor,
      appBar: AppBar(
        leading: Container(
            height: h*0.02,
            color: Colors.black,
            child: Image.asset(ImageConst.logo,width: w*0.02,)),
        backgroundColor: Colors.black,
        title: const Text("Railway Exams",style: TextStyle(color: Palette.whiteColor),),
        actions: [
          IconButton(
            color: Palette.lightBlackColor,
            icon: const Icon(Icons.search,color: Colors.white,),
            onPressed: () {

            },
          ),
        ],
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: w*0.04,right: w*0.02),
          child: Column(
            children: [

              Container(
                height: h*0.35,
                child: CustomListLayout(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return   Padding(
                      padding:  EdgeInsets.only(left: w*0.04,top: w*0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(ImageConst.teamphoto, height: w*0.4, width: w*0.6, ),
                          const SizedBox(height: 8.0),
                          Text(
                            "Abhyaas-Railways Group D",
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Palette.whiteColor),
                          ),
                          const SizedBox(height: 4.0),
                          Text("Started on 5Jan 2022\nMorning classes\nVimlesh Yadav,MS \nDeepak Kumar Singh", style: const TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // Subscription Plans Section
              SizedBox(height: h*0.02),
              Container(
                height: h*0.055,
                width: w*0.9,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.03),color: Colors.green,),

                child: Center(
                  child: Text("View subscription plans",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: w*0.05),),
                ),
              ),

              SizedBox(height: w*0.04),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "SEE HOW SUBSCRIPTION WORKS",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16.0),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Meet our\nexceptional educators",
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Palette.whiteColor),
                  ),
              ref.watch(educatorProvider)?    TextButton(
                    onPressed: () {
                      ref
                          .watch(educatorProvider.notifier)
                          .update((state) => false);
                    },
                    child: const Text("SEE ALL", style: TextStyle(color: Colors.white),),
                  ): TextButton(
                onPressed: () {
                  ref
                      .watch(educatorProvider.notifier)
                      .update((state) => true);
                },
                child: const Text("SEE LESS", style: TextStyle(color: Colors.white),),
              )
                ],
              ),
              const SizedBox(height: 8.0),

            ref.watch(educatorProvider) ? GestureDetector(
                onTap: () {
                  ref
                      .watch(educatorProvider.notifier)
                      .update((state) => false);
                },
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(right: w*0.08),
                              child: Container(
                                height: w*0.4,
                                width: w*0.35,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.04),color: Palette.blackColor,image: DecorationImage(image: AssetImage(ImageConst.men,),fit: BoxFit.fill)),

                                // child: AssetImage(imagePath),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: h*0.01,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Saurabh Malik", style:  TextStyle(fontSize: w*0.05, fontWeight: FontWeight.bold,color: Palette.whiteColor)),
                            Text("Quantitative Aptitude", style:  TextStyle(fontSize: w*0.04, color: Colors.white)),
                            Text("72k followers", style:  TextStyle(fontSize: w*0.03, color: Colors.white)),
                          ],
                        ),
                      ],

                    ),
                  ],
                ),
              ):GestureDetector(
              onTap: () {
                ref
                    .watch(educatorProvider.notifier)
                    .update((state) => true);
              },
              child: Row(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(right: w*0.08),
                                child: Container(
                                  height: w*0.4,
                                  width: w*0.35,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.04),color: Palette.blackColor,image: DecorationImage(image: AssetImage(ImageConst.men,),fit: BoxFit.fill)),

                                  // child: AssetImage(imagePath),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: h*0.01,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Saurabh Malik", style:  TextStyle(fontSize: w*0.05, fontWeight: FontWeight.bold,color: Palette.whiteColor)),
                              Text("Quantitative Aptitude", style:  TextStyle(fontSize: w*0.04, color: Colors.white)),
                              Text("72k followers", style:  TextStyle(fontSize: w*0.03, color: Colors.white)),
                            ],
                          ),
                        ],

                      ),
                    ],
                  ), Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(right: w*0.08),
                                child: Container(
                                  height: w*0.4,
                                  width: w*0.35,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.04),color: Palette.blackColor,image: DecorationImage(image: AssetImage(ImageConst.men,),fit: BoxFit.fill)),

                                  // child: AssetImage(imagePath),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: h*0.01,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Saurabh Malik", style:  TextStyle(fontSize: w*0.05, fontWeight: FontWeight.bold,color: Palette.whiteColor)),
                              Text("Quantitative Aptitude", style:  TextStyle(fontSize: w*0.04, color: Colors.white)),
                              Text("72k followers", style:  TextStyle(fontSize: w*0.03, color: Colors.white)),
                            ],
                          ),
                        ],

                      ),
                    ],
                  ),
                ],
              ),
            ),
SizedBox(height: h*0.015,),
              Divider(color: Colors.black38,thickness: w*0.03,),
              SizedBox(height: h*0.015,),

              Column(

                children: [
                  Row(
                    children: [
                      Text(
                        "Courses on all subjects",
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Palette.whiteColor),
                      ),
                    ],
                  ),
                  SizedBox(height: h*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upcoming",
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Palette.whiteColor),
                      ),
                      ref.watch(courseProvider)?    TextButton(
                        onPressed: () {
                          ref
                              .watch(courseProvider.notifier)
                              .update((state) => false);
                        },
                        child: const Text("SEE ALL", style: TextStyle(color: Colors.white),),
                      ): TextButton(
                        onPressed: () {
                          ref
                              .watch(courseProvider.notifier)
                              .update((state) => true);
                        },
                        child: const Text("SEE LESS", style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8.0),

              Row(
                children: [
                 ref.watch(courseProvider) ?GestureDetector(
                    onTap: () {
                      ref
                          .watch(courseProvider.notifier)
                          .update((state) => false);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(right: w*0.08),
                          child: Container(
                            height: w*0.4,
                            width: w*0.6,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.04),color: Palette.blackColor,image: DecorationImage(image: AssetImage(ImageConst.men,),fit: BoxFit.fill)),


                          ),
                        ),
                        SizedBox(height: h*0.01),

                        Padding(
                          padding:  EdgeInsets.only(right: w*0.14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Row(
                                children: [
                                  Container(
                                      height: h*0.02,
                                      width: w*0.05,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.01),color: Palette.lightBlackColor,),

                                      child: Center(child: Text("हा",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),))),
                                  SizedBox(width: w*0.02,),
                                  Text("GENERAL AWARENESS",style: TextStyle(color: Colors.blue),)
                                ],
                              ),
                              SizedBox(height: h*0.01,),
                              Text("Target: Course on GK for \nRailway Group D", style:  TextStyle(fontSize: w*0.045, fontWeight: FontWeight.bold,color: Palette.whiteColor)),
                              Text("Saurabh Malik", style:  TextStyle(fontSize: w*0.03, color: Colors.white)),

                            ],
                          ),
                        ),
                      ],

                    ),
                  ):GestureDetector(
                   onTap: () {
                     ref
                         .watch(courseProvider.notifier)
                         .update((state) => true);
                   },
                   child: Column(
                     children: [
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(right: w*0.08),
                             child: Container(
                               height: w*0.4,
                               width: w*0.6,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.04),color: Palette.blackColor,image: DecorationImage(image: AssetImage(ImageConst.men,),fit: BoxFit.fill)),


                             ),
                           ),
                           SizedBox(height: h*0.01),

                           Padding(
                             padding:  EdgeInsets.only(right: w*0.14),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,

                               children: [
                                 Row(
                                   children: [
                                     Container(
                                         height: h*0.02,
                                         width: w*0.05,
                                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.01),color: Palette.lightBlackColor,),

                                         child: Center(child: Text("हा",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),))),
                                     SizedBox(width: w*0.02,),
                                     Text("GENERAL AWARENESS",style: TextStyle(color: Colors.blue),)
                                   ],
                                 ),
                                 SizedBox(height: h*0.01,),
                                 Text("Target: Course on GK for \nRailway Group D", style:  TextStyle(fontSize: w*0.045, fontWeight: FontWeight.bold,color: Palette.whiteColor)),
                                 Text("Saurabh Malik", style:  TextStyle(fontSize: w*0.03, color: Colors.white)),

                               ],
                             ),
                           ),
                         ],

                       ),
                       SizedBox(height: h*0.03,),Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(right: w*0.08),
                             child: Container(
                               height: w*0.4,
                               width: w*0.6,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.04),color: Palette.blackColor,image: DecorationImage(image: AssetImage(ImageConst.men,),fit: BoxFit.fill)),


                             ),
                           ),
                           SizedBox(height: h*0.01),

                           Padding(
                             padding:  EdgeInsets.only(right: w*0.14),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,

                               children: [
                                 Row(
                                   children: [
                                     Container(
                                         height: h*0.02,
                                         width: w*0.05,
                                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(w*0.01),color: Palette.lightBlackColor,),

                                         child: Center(child: Text("हा",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),))),
                                     SizedBox(width: w*0.02,),
                                     Text("GENERAL AWARENESS",style: TextStyle(color: Colors.blue),)
                                   ],
                                 ),
                                 SizedBox(height: h*0.01,),
                                 Text("Target: Course on GK for \nRailway Group D", style:  TextStyle(fontSize: w*0.045, fontWeight: FontWeight.bold,color: Palette.whiteColor)),
                                 Text("Saurabh Malik", style:  TextStyle(fontSize: w*0.03, color: Colors.white)),

                               ],
                             ),
                           ),
                         ],

                       ),
                     ],
                   ),
                 )
                ],
              )


            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Palette.blackColor,
        currentIndex: 0,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Self Study"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
        ],
      ),
    );
  }
}




