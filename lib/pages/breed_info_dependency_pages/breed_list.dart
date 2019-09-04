import 'package:flutter/material.dart';
import 'package:pet_for_me/components/global_data_access.dart';
import 'breed_card.dart';

List<Image> _breedImageList = [];
List<String> _breedNameList = [];
List<String> _breedAboutDisplayList = [];
List<String> _breedHealthList = [];
List<String> _breedHistoryList = [];

addInfo(Image addImage, String addName, String addAbout, String addHealth,
    String addHistory) {
  _breedImageList.add(addImage);
  _breedNameList.add(addName);
  _breedAboutDisplayList.add(addAbout);
  _breedHistoryList.add(addHistory);
  _breedHealthList.add(addHealth);
}

class BreedList extends StatefulWidget {
  @override
  _BreedListState createState() => _BreedListState();
}

class _BreedListState extends State<BreedList> {
  Widget breedGridList(BuildContext context, int index) {
    return Column(
      children: <Widget>[
        BreedCard(
          breedImage: _breedImageList[index],
          breedName: _breedNameList[index],
          breedAbout: _breedAboutDisplayList[index],
          breedHistory: _breedHistoryList[index],
          breedHealth: _breedHealthList[index],
        ),
      ],
    );
  }

  @override
  void initState() {

    if(_breedImageList.isEmpty) {
      addInfo(
        Image.asset("assets/images/afghan.jpg"),
        "Afghan Hound",
        "Since ancient times, Afghan Hounds have been famous for their elegant beauty. But the thick, silky, flowing coat that is the breed’s crowning glory isn’t just for show — it served as protection from the harsh climate in mountainous regions where Afghans originally earned their keep. Beneath the Afghan’s glamorous exterior is a powerful, agile hound — standing as high as 27 inches at the shoulder — built for a long day’s hunt. Their huge paw-pads acted as shock absorbers on their homeland’s punishing terrain.",
        "Roots originating from Egyptian pharoahs, the Adghan hound is an ancient breed.",
        "No major concerns. It has a life span of 12-14 years with minor cases of cataract",
      );

      addInfo(
        Image.asset("assets/images/airedale.jpg"),
        "Airedale Terrier",
        "The Airedale Terrier is the largest of all terrier breeds. Males stand about 23 inches at the shoulder, females a little less. The dense, wiry coat is tan with black markings. Long, muscular legs give Airedales a regal lift in their bearing, and the long head—with its sporty beard and mustache, dark eyes, and neatly folded ears—conveys a keen intelligence. Airedales are the very picture of an alert and willing terrier—only bigger. And, like his smaller cousins in the terrier family, he can be bold, determined, and stubborn. Airedales are docile and patient with kids but won’t back down when protecting hearth and home. Thanks to their famous do-it-all attitude, Airedales excel in all kinds of sports and family activities.",
        "Known as the \"King of Terriers\", the Airedale is the tallest terrier. These medium sized dogs were prized by Yorkshire hunters for hunting a a variety of game from water rates to fox.",
        "CHD can be a major concern. It has a life span of 10-13 years with minor cases of gastric torsion",
      );
      addInfo(
        Image.asset("assets/images/boxer.jpg"),
        "Boxer",
        "A well-made Boxer in peak condition is an awesome sight. A male can stand as high as 25 inches at the shoulder; females run smaller. Their muscles ripple beneath a short, tight-fitting coat. The dark brown eyes and wrinkled forehead give the face an alert, curious look. The coat can be fawn or brindle, with white markings. Boxers move like the athletes they are named for: smooth and graceful, with a powerful forward thrust.",
        "The boxer derives from two central European breeds of dog that no longer exist: the larger Danziger bullenbaiser and the smaller Brabenter bullenbaiser",
        "CHD and cardiomyopathy can be major concerns. It has a life span of 8-10 years with minor cases of gastric torsion and tumors",
      );

      addInfo(
        Image.asset("assets/images/bulldog.jpg"),
        "Bulldog",
        "You can’t mistake a Bulldog for any other breed. The loose skin of the head, furrowed brow, pushed-in nose, small ears, undershot jaw with hanging chops on either side, and the distinctive rolling gait all practically scream “I’m a Bulldog!” The coat, seen in a variety of colors and patterns, is short, smooth, and glossy. Bulldogs can weigh up to 50 pounds, but that won’t stop them from curling up in your lap, or at least trying to. But don’t mistake their easygoing ways for laziness—Bulldogs enjoy brisk walks and need regular moderate exercise, along with a careful diet, to stay trim. Summer afternoons are best spent in an air-conditioned room as a Bulldog’s short snout can cause labored breathing in hot and humid weather.",
        "The Bulldog's origin lies in the cruel psport of bull-baiting, which originated in England around the 13th century",
        "CHD and KCS can be major concerns. It has a life span of 8-10 years with minor cases of gastric entropion and ectropion",
      );

      addInfo(
        Image.asset("assets/images/retriever.jpg"),
        "Golden Retriever",
        "The Golden Retriever is a sturdy, muscular dog of medium size, famous for the dense, lustrous coat of gold that gives the breed its name. The broad head, with its friendly and intelligent eyes, short ears, and straight muzzle, is a breed hallmark. In motion, Goldens move with a smooth, powerful gait, and the feathery tail is carried, as breed fanciers say, with a \“merry action.\” The most complete records of the development of the Golden Retriever are included in the record books that were kept from 1835 until about 1890 by the gamekeepers at the Guisachan (pronounced Gooeesicun) estate of Lord Tweedmouth at Inverness-Shire, Scotland. These records were released to public notice in Country Life in 1952, when Lord Tweedmouth’s great-nephew, the sixth Earl of Ilchester, historian and sportsman, published material that had been left by his ancestor. They provided factual confirmation to the stories that had been handed down through generations.",
        "Native, Japanese dogs are divided into six breeds. Of these, the smallest and probably, the most ancient is the Shiba Inu",
        "No major concerns. It has a life span of 12-15 years with minor cases of patellar luxation",
      );
      addInfo(
        Image.asset("assets/images/labrador.jpg"),
        "Labrador",
        "The sturdy, well-balanced Labrador Retriever can, depending on the sex, stand from 21.5 to 24.5 inches at the shoulder and weigh between 55 to 80 pounds. The dense, hard coat comes in yellow, black, and a luscious chocolate. The head is wide, the eyes glimmer with kindliness, and the thick, tapering “otter tail” seems to be forever signaling the breed’s innate eagerness. Labs are famously friendly. They are companionable housemates who bond with the whole family, and they socialize well with neighbor dogs and humans alike. But don’t mistake his easygoing personality for low energy: The Lab is an enthusiastic athlete that requires lots of exercise, like swimming and marathon games of fetch, to keep physically and mentally fit.",
        "The breed originated from Chukchi people of northeast Asia.",
        "No major concerns. It has a life span of 11-13 years with minor cases of cataract",
      );
      addInfo(
        Image.asset("assets/images/shiba.jpg"),
        "Shiba Inu",
        "Brought to America from Japan as recently as 60 years ago, Shibas are growing in popularity in the West and are already the most popular breed in their homeland. Their white markings combined with their coloring (red, red sesame, or black and tan) and their alert expression and smooth stride makes them almost foxlike. They’re sturdy, muscular dogs with a bold, confident personality to match.",
        "Native, Japanese dogs are divided into six breeds. Of these, the smallest and probably, the most ancient is the Shiba Inu",
        "No major concerns. It has a life span of 12-15 years with minor cases of patellar luxation",
      );
      addInfo(
        Image.asset("assets/images/husky.jpg"),
        "Siberian Husky",
        "The graceful, medium-sized Siberian Husky\’s almond-shaped eyes can be either brown or blue—and sometimes one of each—and convey a keen but amiable and even mischievous expression. Quick and nimble-footed, Siberians are known for their powerful but seemingly effortless gait. Tipping the scales at no more than 60 pounds, they are noticeably smaller and lighter than their burly cousin, the Alaskan Malamute.",
        "The breed originated from Chukchi people of northeast Asia.",
        "No major concerns. It has a life span of 11-13 years with minor cases of cataract",
      );

    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //cacheExtent: MediaQuery.of(context).size.height * _petNameList.length,
      //cacheExtent: 1000.0,
      itemCount: _breedImageList.length,
      itemBuilder: breedGridList,
    );
  }
}
