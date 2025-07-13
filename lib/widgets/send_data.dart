import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firestore Data Seeder',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SeedHomePage(),
    );
  }
}

// import 'package:flutter/material.dart';
class SeedHomePage extends StatelessWidget {
  const SeedHomePage({super.key});

  Future<void> seedStudents() async {
    final CollectionReference students = FirebaseFirestore.instance.collection(
      'students1',
    );

    for (var student in cse2021) {
      await students.doc(student['rollNo']).set(student);
    }

    print("✅ Seed data uploaded to Firestore.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Seed Firestore")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await seedStudents();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Seeded student data to Firestore')),
            );
          },
          child: const Text("Seed Students to Firestore"),
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> studentData = [
  {
    "name": "ANGIREKULA VEERANJANEYULU",
    "rollNo": "21471A0301",
    "parentNo": 7893150012,
    "studentNo": 8106771738,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BATTULA YUVA RAJU",
    "rollNo": "21471A0302",
    "parentNo": 6302295062,
    "studentNo": 7995191625,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BOMMIREDDY VENU",
    "rollNo": "21471A0303",
    "parentNo": 9908196219,
    "studentNo": 7337485417,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "JEEDIMALLA SRI LAKSHMI NILENDRA",
    "rollNo": "21471A0304",
    "parentNo": 9573602951,
    "studentNo": 9603742951,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "KONATHAM VENKATA NARAYANA",
    "rollNo": "21471A0305",
    "parentNo": 9347806394,
    "studentNo": 8688035151,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "KUNCHALA ANKA RAO",
    "rollNo": "21471A0306",
    "parentNo": 9666237087,
    "studentNo": 6281901726,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "PATHAN RIYAZ",
    "rollNo": "21471A0307",
    "parentNo": 7702383715,
    "studentNo": 9030869382,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "SASAPU SAI SANTOSH",
    "rollNo": "21471A0309",
    "parentNo": 9398211811,
    "studentNo": 6304639616,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "SOUBHAGYAPU SAI RAM",
    "rollNo": "21471A0310",
    "parentNo": 9550522887,
    "studentNo": 8688779543,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "MUNAGA RAMANJANEYULU",
    "rollNo": "21471A0311",
    "parentNo": 8897018944,
    "studentNo": 6304434870,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "YELCHURI HEMALATHA MEGHANA",
    "rollNo": "21471A0312",
    "parentNo": 9347098396,
    "studentNo": 9347169144,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "ALLAM TIRUMALA RAJU",
    "rollNo": "21471A0314",
    "parentNo": 6304878875,
    "studentNo": 9381986395,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "LUKALAPU RAMBABU",
    "rollNo": "22475A0301",
    "parentNo": 7659038201,
    "studentNo": 6305279093,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "THUNUGUNTLA NAGA THARUN",
    "rollNo": "22475A0302",
    "parentNo": 8247872528,
    "studentNo": 8885138787,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "MAILAVARAPU PAVAN KALYAN",
    "rollNo": "22475A0303",
    "parentNo": 9963272577,
    "studentNo": 8331886444,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "KOLLI GOWRI SANKARA RAO",
    "rollNo": "22475A0304",
    "parentNo": 9391753140,
    "studentNo": 8639846856,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "VANTAKU GANAPATHI LAXMI NAIDU",
    "rollNo": "22475A0305",
    "parentNo": 9502073384,
    "studentNo": 8008442932,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "SYED HUSSAIN",
    "rollNo": "22475A0306",
    "parentNo": 7032557635,
    "studentNo": 7671835718,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BEHERA SANJAY KUMAR",
    "rollNo": "22475A0307",
    "parentNo": 8919138684,
    "studentNo": 9494163785,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "YASAM MANIKANTA",
    "rollNo": "22475A0308",
    "parentNo": 7386609482,
    "studentNo": 7661959482,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "MALLADI GOPI PURNA",
    "rollNo": "22475A0309",
    "parentNo": 9346628487,
    "studentNo": 9059492947,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "UNGATI LOKESH",
    "rollNo": "22475A0310",
    "parentNo": 8466079801,
    "studentNo": 8978202950,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "RAMAVATH VASU DEVA NAIK",
    "rollNo": "22475A0311",
    "parentNo": 9949524826,
    "studentNo": 9390241129,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "PASALA SYAM KUMAR",
    "rollNo": "22475A0312",
    "parentNo": 7729926003,
    "studentNo": 9705957002,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "THURIMELLA VAMSI GANESH",
    "rollNo": "22475A0313",
    "parentNo": 9985437385,
    "studentNo": 7093458934,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "KUKKAMALLA KARTHIK",
    "rollNo": "22475A0314",
    "parentNo": 9247156054,
    "studentNo": 6302779778,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "VUTLA KISHORE",
    "rollNo": "22475A0315",
    "parentNo": 9542330762,
    "studentNo": 8008708663,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "DHARMANA APPALA NAIDU",
    "rollNo": "22475A0316",
    "parentNo": 7396488224,
    "studentNo": 9840788034,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "NIKKU SURESH",
    "rollNo": "22475A0317",
    "parentNo": 9381119401,
    "studentNo": 9346441565,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "GORANTLA SIVA KOTESWARA RAO",
    "rollNo": "22475A0318",
    "parentNo": 8187826865,
    "studentNo": 8919826865,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "POGUNOLLA KARUN KUMAR",
    "rollNo": "22475A0319",
    "parentNo": 9000395150,
    "studentNo": 7569809266,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BANDLAMUDI NAGA RAJU",
    "rollNo": "22475A0321",
    "parentNo": 9133658411,
    "studentNo": 9133658411,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BOJJA SYAM BABU",
    "rollNo": "22475A0322",
    "parentNo": 7674036021,
    "studentNo": 6305301563,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "ATHULURI PURNA VENKATA RAMARAO",
    "rollNo": "22475A0323",
    "parentNo": 7780570429,
    "studentNo": 8341676791,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BATTULA LAKSHMI NARAYANA",
    "rollNo": "22475A0324",
    "parentNo": 9010711610,
    "studentNo": 8688963141,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "GUDIKANDULA ANJANEYULU",
    "rollNo": "22475A0325",
    "parentNo": 9030709484,
    "studentNo": 6300908126,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "AYINAMPUDI KISHORE BABU",
    "rollNo": "22475A0326",
    "parentNo": 9951112919,
    "studentNo": 9951851544,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "KETHABOYINA MAHESH",
    "rollNo": "22475A0327",
    "parentNo": 8074105542,
    "studentNo": 9347954697,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "SHAIK BABULAL",
    "rollNo": "22475A0328",
    "parentNo": 9177026839,
    "studentNo": 9177982914,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BANDARU VENU GOPAL",
    "rollNo": "22475A0329",
    "parentNo": 9701248449,
    "studentNo": 9704646229,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "YADAVALLI LOKESH",
    "rollNo": "22475A0330",
    "parentNo": 9676528798,
    "studentNo": 9963708706,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "CHOUDAM VENKATESH",
    "rollNo": "22475A0331",
    "parentNo": 9849831499,
    "studentNo": 6300987181,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "CHATTI MURALI KRISHNA",
    "rollNo": "22475A0332",
    "parentNo": 7702136780,
    "studentNo": 8919488398,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "DARAM PRUDHVI KRISHNA",
    "rollNo": "22475A0333",
    "parentNo": 6301415295,
    "studentNo": 7997547362,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "SHAIK NAGUR BASHA",
    "rollNo": "22475A0334",
    "parentNo": 7702734171,
    "studentNo": 9014239160,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "GOLLAPUDI SARATH KUMAR",
    "rollNo": "22475A0335",
    "parentNo": 8897408767,
    "studentNo": 7702326624,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "ADAKA VINOD",
    "rollNo": "22475A0336",
    "parentNo": 8897412566,
    "studentNo": 7893252246,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "JANNI ARUN",
    "rollNo": "22475A0337",
    "parentNo": 7207365237,
    "studentNo": 9492957155,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "NOWPADA MEGHANADH",
    "rollNo": "22475A0338",
    "parentNo": 7569336804,
    "studentNo": 7816059781,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BALAGA YUGANDHAR",
    "rollNo": "22475A0339",
    "parentNo": 8688469428,
    "studentNo": 6305771189,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "NEYYELA KUMAR BEHERA",
    "rollNo": "22475A0340",
    "parentNo": 9347594571,
    "studentNo": 9948328949,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "KUNITI PAVAN KUMAR",
    "rollNo": "22475A0341",
    "parentNo": 9182840979,
    "studentNo": 9441160531,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BHUKYA DIWAKAR NAIK",
    "rollNo": "22475A0342",
    "parentNo": 9000559526,
    "studentNo": 9010988148,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "VOONA NARENDRA",
    "rollNo": "22475A0343",
    "parentNo": 9705711310,
    "studentNo": 6302683982,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "CHANDARLAPATI GANESH",
    "rollNo": "22475A0344",
    "parentNo": 9121396834,
    "studentNo": 8374301701,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BALAGA MOHAN",
    "rollNo": "22475A0345",
    "parentNo": 7337218141,
    "studentNo": 9346371889,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BOMMALI MAHESH",
    "rollNo": "22475A0346",
    "parentNo": 8008424028,
    "studentNo": 7794853583,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "DUDDETI NAGA SAI",
    "rollNo": "22475A0347",
    "parentNo": 9849161592,
    "studentNo": 7093262266,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "BASWA DILLESWARA RAO",
    "rollNo": "22475A0348",
    "parentNo": 9618706932,
    "studentNo": 9502058813,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "KORRAPATI MOHAN KRISHNA",
    "rollNo": "22475A0349",
    "parentNo": 9603858622,
    "studentNo": 8688262491,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "NAKKANABOINA NAGA SRIDHAR",
    "rollNo": "22475A0350",
    "parentNo": 9346535340,
    "studentNo": 9505105788,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "GONDU GANESH PAVAN",
    "rollNo": "22475A0351",
    "parentNo": 6301032150,
    "studentNo": 9989324493,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
  {
    "name": "LINGA SRINIVAS",
    "rollNo": "22475A0352",
    "parentNo": 9294456853,
    "studentNo": 9398223568,
    "imageUrl": "",
    "department": "MECH",
    "batch": "2021",
  },
];

final List<Map<String, dynamic>> cse2021 = [
  {
    "name": "ABHIRAM KUDARI",
    "rollNo": "21471A0501",
    "parentNo": 8919511400,
    "studentNo": 7207817154,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097112/CSE21Batch/CSE21BatchASection/slcfiqgxaebp7ut75jlx.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "AMEEN UL HASSAN KHAN",
    "rollNo": "21471A0502",
    "parentNo": 6309261715,
    "studentNo": 8688927285,
    "imageUrl": "",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "AMMIREDDY SRILATHA",
    "rollNo": "21471A0503",
    "parentNo": 6304431436,
    "studentNo": 6303186622,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097104/CSE21Batch/CSE21BatchASection/qbs03hy2e9a71vud7oxe.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ARAVAPALLI VASAVI",
    "rollNo": "21471A0504",
    "parentNo": 9989276796,
    "studentNo": 7093760074,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097112/CSE21Batch/CSE21BatchASection/s8btluzv4tlgbyycr8ef.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BALA RANGARAO MACHARLA",
    "rollNo": "21471A0505",
    "parentNo": 9849484852,
    "studentNo": 7207909030,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097112/CSE21Batch/CSE21BatchASection/y1dqlfotbhtksjryqya2.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BODDUPALLI VENKATA SIVA RAMA KRISHNA",
    "rollNo": "21471A0507",
    "parentNo": 9032172458,
    "studentNo": 7981634940,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/daeu0jxxzdvwh3thty4v.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOGGAVARAPU CHARAN DEEPAK",
    "rollNo": "21471A0508",
    "parentNo": 7013777307,
    "studentNo": 7013777307,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/mfzx81lxytmabkw9cgyc.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOJJA SOBHARANI",
    "rollNo": "21471A0509",
    "parentNo": 7995611388,
    "studentNo": 7032212364,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/ztv8c4mxkvjrkahli74a.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOLLA VINAY POOJA",
    "rollNo": "21471A0510",
    "parentNo": 9885824193,
    "studentNo": 8008482356,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/cqo9asn4lstkl9dbuax0.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOLLAVARAM VENKATA SRINIVASULU",
    "rollNo": "21471A0511",
    "parentNo": 9618347388,
    "studentNo": 7997472931,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/m0dzwdbvfg1p9cv9rlew.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOLLINENI YASASWINI",
    "rollNo": "21471A0512",
    "parentNo": 8374682676,
    "studentNo": 8247626375,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097099/CSE21Batch/CSE21BatchASection/gfbi0zwbrvf1qz9sdmx4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOMMU LAKSHMI PRASANNA",
    "rollNo": "21471A0513",
    "parentNo": 9494347423,
    "studentNo": 7780543823,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/ou9ynwmxw8fbl25wftu8.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BORUGADDA SUPRIYA",
    "rollNo": "21471A0514",
    "parentNo": 7177377637,
    "studentNo": 9059907192,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/eayeqjnzk2f27bmuefil.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHALLA RAVI SANKAR",
    "rollNo": "21471A0515",
    "parentNo": 7842486859,
    "studentNo": 9160737429,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097098/CSE21Batch/CSE21BatchASection/ezi0lf036lyvzr8wpu0y.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHINNAM HARINI",
    "rollNo": "21471A0516",
    "parentNo": 9972611929,
    "studentNo": 7993974512,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/wvshf9pginru5kenqkdq.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DASARI TRIVENI",
    "rollNo": "21471A0517",
    "parentNo": 7672083403,
    "studentNo": 8328018517,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/ikag0dd8jvtjfxbvpq23.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DEEPIKA KARASALA",
    "rollNo": "21471A0518",
    "parentNo": 9989233568,
    "studentNo": 9989233568,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/wg68igpevp8rw1mufc4c.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DIVVELA BALA SRI ABHIGNA",
    "rollNo": "21471A0519",
    "parentNo": 9030316792,
    "studentNo": 9989113288,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/jafbnm8u9otn1qvrd7dk.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GANGADARI SATISH",
    "rollNo": "21471A0520",
    "parentNo": 9182342432,
    "studentNo": 8247433353,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/xdixaew81lzik1fqkfqf.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GANGADHAR RONGALA",
    "rollNo": "21471A0521",
    "parentNo": 9515055642,
    "studentNo": 9182233993,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/ents9drqsvpk6eqiofji.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GATTU THANUJA",
    "rollNo": "21471A0522",
    "parentNo": 9030137688,
    "studentNo": 9398763937,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/vcm5r1nxhq0lndxnbdrn.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GOLLA AVINASH",
    "rollNo": "21471A0523",
    "parentNo": 9949260659,
    "studentNo": 6305617587,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/l6cgoxvotcb02p46prbz.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUDE LAVANYA",
    "rollNo": "21471A0524",
    "parentNo": 8106607586,
    "studentNo": 6305409482,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/s7fipz5uekkflfkzjxjc.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUNTUR GOWTHAM",
    "rollNo": "21471A0525",
    "parentNo": 6301673547,
    "studentNo": 8977443549,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/w5xcaax8t4jalrwx7o3i.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GURRAM SIVA ANJALI",
    "rollNo": "21471A0526",
    "parentNo": 9440452700,
    "studentNo": 9573369415,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/o9yjd14zei0glifuucvs.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "INDRAVATI CHINNI",
    "rollNo": "21471A0527",
    "parentNo": 9949499675,
    "studentNo": 7207241584,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/wqym55pfl4weaazxewfc.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KETHAVATH RAVI NAIK",
    "rollNo": "21471A0528",
    "parentNo": 8185907282,
    "studentNo": 8185907282,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/vbsnaejsacns5ndwxgge.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOLAKANI RAJU",
    "rollNo": "21471A0529",
    "parentNo": 9849439581,
    "studentNo": 7702024231,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/qvfsfnpoj8cmgkkwjjql.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOLLA TEJASWINI",
    "rollNo": "21471A0530",
    "parentNo": 9492901193,
    "studentNo": 9347473037,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/i39x2t70kljxeeav5mpt.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTA VEERA RAGHAVA REDDY",
    "rollNo": "21471A0531",
    "parentNo": 9949364817,
    "studentNo": 9676598569,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/cg15ievq8vv1vgtzarli.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KUNCHAPU AKHIL KUMAR",
    "rollNo": "21471A0532",
    "parentNo": 9346897277,
    "studentNo": 9346897227,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/cbpatvm2bj0axhf2dhtd.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KURRA MAHESH BABU",
    "rollNo": "21471A0533",
    "parentNo": 8125435154,
    "studentNo": 8897068361,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/y9ldqtvdsa7boji67oxi.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MEKALA GOPI MANIKANTA",
    "rollNo": "21471A0534",
    "parentNo": 9666552265,
    "studentNo": 9849322656,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/jjnyokt8wy2lkxxdbgv8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MELLACHERUVU V V NAGA SHANMUKHA SAHITHI",
    "rollNo": "21471A0535",
    "parentNo": 9030755740,
    "studentNo": 8919478774,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/vmwoc53vpaskrljedb4w.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NAGENDRA BABU TAMMISETTI",
    "rollNo": "21471A0537",
    "parentNo": 7286044867,
    "studentNo": 7286044867,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/mwvkvllknrnofoltnmyq.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NAKKA ANNAPURNA",
    "rollNo": "21471A0538",
    "parentNo": 9963279172,
    "studentNo": 7702351758,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/znrh56xkulbbsw2wxnol.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NALLAMEKALA GOPI KRISHNA",
    "rollNo": "21471A0539",
    "parentNo": 9666063504,
    "studentNo": 7036751611,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/nncfbj35esp78m09zuzr.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NARRA DIVYA",
    "rollNo": "21471A0540",
    "parentNo": 9492466433,
    "studentNo": 9676612392,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/q3kanxrgoizmdgiksjia.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NUTI REVANTH",
    "rollNo": "21471A0541",
    "parentNo": 8186864522,
    "studentNo": 8186864522,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097107/CSE21Batch/CSE21BatchASection/vi193xohkfodvh38hikx.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PANDI JYOSHNADEVI",
    "rollNo": "21471A0542",
    "parentNo": 9948836398,
    "studentNo": 9392610694,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097107/CSE21Batch/CSE21BatchASection/miqb9y6yclqozlpucyox.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PARUCHURI SWETHA LAKSHMI",
    "rollNo": "21471A0543",
    "parentNo": 8499098680,
    "studentNo": 9347155061,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097107/CSE21Batch/CSE21BatchASection/oqtjekbjhhw4wbsujxtq.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PEDDI KAVYA",
    "rollNo": "21471A0544",
    "parentNo": 9704431908,
    "studentNo": 9704735905,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097107/CSE21Batch/CSE21BatchASection/xu8roeivg9m7d5jwxnfo.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PENDELA CHENCHU KOUSHIK",
    "rollNo": "21471A0545",
    "parentNo": 9440016399,
    "studentNo": 7780660803,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097107/CSE21Batch/CSE21BatchASection/uwo4kvger29jgqslfwlp.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "POGULA SAI SRI VARSHA",
    "rollNo": "21471A0546",
    "parentNo": 9866804211,
    "studentNo": 9618052761,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097107/CSE21Batch/CSE21BatchASection/h4mfok1xljgozzlowt1s.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "POLIMERA BHAGYA LAKSHMI",
    "rollNo": "21471A0547",
    "parentNo": 9989770670,
    "studentNo": 7780470095,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097107/CSE21Batch/CSE21BatchASection/tjjvv0wc3c0pc63fkfz3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PONNAM VENKATA SAI TEJA",
    "rollNo": "21471A0548",
    "parentNo": 9490859769,
    "studentNo": 8179473485,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097106/CSE21Batch/CSE21BatchASection/fpbwgdmb6ejp8ullju5h.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "POOJITHA BANDI",
    "rollNo": "21471A0549",
    "parentNo": 7702471949,
    "studentNo": 9398187082,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097107/CSE21Batch/CSE21BatchASection/bermtagpmd1p7lxz6uwh.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "RAMAVATH DHANDU NAIK",
    "rollNo": "21471A0550",
    "parentNo": 8143228982,
    "studentNo": 8341295342,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097106/CSE21Batch/CSE21BatchASection/k6udfo2du8ucdy2wm3ba.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SANKURU SAI LATHA",
    "rollNo": "21471A0551",
    "parentNo": 9494045249,
    "studentNo": 8919514259,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097106/CSE21Batch/CSE21BatchASection/ubg2lcepxvuhinj0rzur.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SANNITHI BHAVANI",
    "rollNo": "21471A0552",
    "parentNo": 9704831601,
    "studentNo": 7793941601,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097105/CSE21Batch/CSE21BatchASection/coett01bujvd6mk1s2tp.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK HAZARE KHAJA MOHIDDIN",
    "rollNo": "21471A0554",
    "parentNo": 9553225903,
    "studentNo": 7569060153,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097106/CSE21Batch/CSE21BatchASection/wm36qa7zkmlp3fuiycgh.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SAMEERA",
    "rollNo": "21471A0555",
    "parentNo": 9515434462,
    "studentNo": 8121466114,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097106/CSE21Batch/CSE21BatchASection/sktgaqv2c1s7ojiwbxig.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SHARUKH",
    "rollNo": "21471A0556",
    "parentNo": 9849201092,
    "studentNo": 9849201092,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097105/CSE21Batch/CSE21BatchASection/iekkqw7gp6jsanbzau20.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK YALAVARTHI IJAZ AHAMAD",
    "rollNo": "21471A0557",
    "parentNo": 8897131555,
    "studentNo": 7794951864,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097106/CSE21Batch/CSE21BatchASection/csmhkbenhn0wnbthiz6k.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SINDE VENKATA SAPTHA GIRISH",
    "rollNo": "21471A0558",
    "parentNo": 8886988170,
    "studentNo": 8247391167,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097101/CSE21Batch/CSE21BatchASection/hbf8hrfsykvjmvtgauy6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SINGAM VENKATA SATYA VIJYA GANESH",
    "rollNo": "21471A0559",
    "parentNo": 957303152,
    "studentNo": 7675859516,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097102/CSE21Batch/CSE21BatchASection/wwdfkms8sg8rdqwv1dpm.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SIVANAGENDRA AKURATHI",
    "rollNo": "21471A0560",
    "parentNo": 9666872883,
    "studentNo": 8096137414,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097100/CSE21Batch/CSE21BatchASection/oflvzbxhuqklo4pn8r3y.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SRINIVASA KALYAN RAM KANKANALA",
    "rollNo": "21471A0561",
    "parentNo": 9490638933,
    "studentNo": 7672058597,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097099/CSE21Batch/CSE21BatchASection/fowx2bws3ucfulukklvf.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SRIPATHI CHANDANA",
    "rollNo": "21471A0562",
    "parentNo": 9502436754,
    "studentNo": 7995213575,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097104/CSE21Batch/CSE21BatchASection/naop28twjxz5rbvjnq7l.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "TANNIRU HARSHITHA",
    "rollNo": "21471A0563",
    "parentNo": 9949792889,
    "studentNo": 8121814391,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097104/CSE21Batch/CSE21BatchASection/ydgvvrhmkvcyqgyd33iw.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "THALAPANENI SUMA DURGA",
    "rollNo": "21471A0564",
    "parentNo": 7569880294,
    "studentNo": 9912984574,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097104/CSE21Batch/CSE21BatchASection/gbejmikwag8k6juzdpix.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "TUMPALA MAHITH",
    "rollNo": "21471A0565",
    "parentNo": 7330797317,
    "studentNo": 7386226605,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097102/CSE21Batch/CSE21BatchASection/v65fwx95w3amcahzc9nu.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VALLEPU SRINIVAS",
    "rollNo": "21471A0566",
    "parentNo": 9908096050,
    "studentNo": 8897668121,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097104/CSE21Batch/CSE21BatchASection/lfufvfvcylsmpi6li41w.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VEMULA SIREESHA",
    "rollNo": "21471A0567",
    "parentNo": 8106474230,
    "studentNo": 8125856938,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097102/CSE21Batch/CSE21BatchASection/mjudahi4ke5t4fdgwoxh.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VENKATA ARAVIND TUNUGUNTLA",
    "rollNo": "21471A0568",
    "parentNo": 9704862468,
    "studentNo": 7207317055,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097101/CSE21Batch/CSE21BatchASection/nfiazarsizgjvb9cfrkx.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YADALA SANDHYA",
    "rollNo": "21471A0569",
    "parentNo": 9100193465,
    "studentNo": 9603590685,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097100/CSE21Batch/CSE21BatchASection/eqgscdjt0q8u2qwmk1ou.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YALLANTI LIKHITH PRASANNA KUMAR",
    "rollNo": "21471A0570",
    "parentNo": 9642762917,
    "studentNo": 8019964911,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097100/CSE21Batch/CSE21BatchASection/ojwfpo9j9lss7xswrpww.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ABHISHIKTH DOLA",
    "rollNo": "21471A0571",
    "parentNo": 9701487669,
    "studentNo": 9652477669,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097142/CSE21Batch/CSE21BatchBSection/jhlvbwdshnr5qr7ls2kw.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "AINAVOLU MANVITHA",
    "rollNo": "21471A0572",
    "parentNo": 9248458488,
    "studentNo": 9391979915,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097145/CSE21Batch/CSE21BatchBSection/rkns2tj2s0jgzeudr61v.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "AMBATI LAKSHMI NIHARIKA",
    "rollNo": "21471A0573",
    "parentNo": 7794911712,
    "studentNo": 6309701801,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097139/CSE21Batch/CSE21BatchBSection/dhkfd4dwt9xbdrozs1is.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BANDARU ANJI BABU",
    "rollNo": "21471A0574",
    "parentNo": 9502968425,
    "studentNo": 7207458114,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097138/CSE21Batch/CSE21BatchBSection/mh0mcs9cn61ewhudqwrt.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BETHAPUDI KEERTHI",
    "rollNo": "21471A0575",
    "parentNo": 7337490977,
    "studentNo": 7995927184,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097138/CSE21Batch/CSE21BatchBSection/lhs2ojuwbwfo9gkud8bw.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BHAVANA KOLIPAKA",
    "rollNo": "21471A0576",
    "parentNo": 7989307520,
    "studentNo": 8374667074,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097138/CSE21Batch/CSE21BatchBSection/jxdqd7f8o3hh4vf8jw6y.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOLLA LAKSHMI VARSHA",
    "rollNo": "21471A0577",
    "parentNo": 9666869413,
    "studentNo": 9676103193,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097138/CSE21Batch/CSE21BatchBSection/rbip81b46alhycwd5cmv.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOLNEDI SUHAS",
    "rollNo": "21471A0578",
    "parentNo": 9676736189,
    "studentNo": 9948290951,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097137/CSE21Batch/CSE21BatchBSection/rbkn6cz7e2bjkszl7ezd.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHANDRA SEKHAR SAKINALA",
    "rollNo": "21471A0579",
    "parentNo": 7989981416,
    "studentNo": 7842472589,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097137/CSE21Batch/CSE21BatchBSection/ybpejxspgniv0vpz0gg7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHINNAM JANAKI DEVI",
    "rollNo": "21471A0580",
    "parentNo": 9849176932,
    "studentNo": 9494021841,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097137/CSE21Batch/CSE21BatchBSection/islrgwbtowr3cnaa7cdt.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DOKKU NAGA REVATHI",
    "rollNo": "21471A0581",
    "parentNo": 9182741541,
    "studentNo": 9618073574,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097137/CSE21Batch/CSE21BatchBSection/z4zofg54s9e8xggj6lzd.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DORAM VENKATA MANI DEEPIKA",
    "rollNo": "21471A0582",
    "parentNo": 9494235227,
    "studentNo": 9494235227,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097137/CSE21Batch/CSE21BatchBSection/uavqngv0bmlw1k8a6fdr.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ENUGU KEERTHI",
    "rollNo": "21471A0583",
    "parentNo": 9441113061,
    "studentNo": 9398864010,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097136/CSE21Batch/CSE21BatchBSection/u0e2e5h23s16p0r6zofl.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUNDALA SIVA DURGA PRASAD REDDY",
    "rollNo": "21471A0584",
    "parentNo": 9494056254,
    "studentNo": 9948281137,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097136/CSE21Batch/CSE21BatchBSection/h846k26p20c4z4dovd6x.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "JASTI CHARAN SAI",
    "rollNo": "21471A0585",
    "parentNo": 9959648604,
    "studentNo": 7995133379,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097136/CSE21Batch/CSE21BatchBSection/d0d3d5f1j0l8f2w1d6c0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KAMBHAMPATI MOUNIKA",
    "rollNo": "21471A0586",
    "parentNo": 9493774844,
    "studentNo": 7075727040,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097136/CSE21Batch/CSE21BatchBSection/l1k3l1l4m0c1f2g5h6j7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KASIREDDY SAI ANISHA",
    "rollNo": "21471A0587",
    "parentNo": 9948512530,
    "studentNo": 8074697960,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097136/CSE21Batch/CSE21BatchBSection/p8h2j8w9e3f7g1s0k2l4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KATIKEREDDY LIKITHA",
    "rollNo": "21471A0588",
    "parentNo": 9666068694,
    "studentNo": 9398864010,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097135/CSE21Batch/CSE21BatchBSection/r0s9t8u7v6w5x4y3z2a1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOPPU CHARAN BABU",
    "rollNo": "21471A0589",
    "parentNo": 8919615599,
    "studentNo": 8074987042,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097135/CSE21Batch/CSE21BatchBSection/m1n2o3p4q5r6s7t8u9v0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KORRA MANEESHA",
    "rollNo": "21471A0590",
    "parentNo": 9494347423,
    "studentNo": 9347572709,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097135/CSE21Batch/CSE21BatchBSection/b7c6d5e4f3g2h1i0j9k8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOVVURI VENKATA SIVA NAGA DEEKSHITHA",
    "rollNo": "21471A0591",
    "parentNo": 9866804211,
    "studentNo": 9398038753,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097135/CSE21Batch/CSE21BatchBSection/n9m8l7k6j5h4g3f2e1d0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "LANKA LAHARI",
    "rollNo": "21471A0592",
    "parentNo": 9963498877,
    "studentNo": 7995133379,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097135/CSE21Batch/CSE21BatchBSection/x4y3z2a1b0c9d8e7f6g5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MADHUSUDHANA RAO PERAMSETTY",
    "rollNo": "21471A0593",
    "parentNo": 9966804211,
    "studentNo": 9398038753,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097134/CSE21Batch/CSE21BatchBSection/q0w9e8r7t6y5u4i3o2p1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANCHIKANTI PRATHYUSHA",
    "rollNo": "21471A0594",
    "parentNo": 8106880295,
    "studentNo": 8919010260,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097134/CSE21Batch/CSE21BatchBSection/v2c3x4z5a6s7d8f9g0h1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANDA GANGA ANJALI",
    "rollNo": "21471A0595",
    "parentNo": 9494347423,
    "studentNo": 7013834629,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097134/CSE21Batch/CSE21BatchBSection/j5k4l3m2n1o0p9q8r7s6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANGALA MANVITHA",
    "rollNo": "21471A0596",
    "parentNo": 9492211910,
    "studentNo": 9398934571,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097134/CSE21Batch/CSE21BatchBSection/t0u1v2w3x4y5z6a7b8c9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MUMMADISETTY NIKHIL TEJA",
    "rollNo": "21471A0597",
    "parentNo": 9441221760,
    "studentNo": 7893817112,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097133/CSE21Batch/CSE21BatchBSection/d2e3f4g5h6i7j8k9l0m1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NAGULA SRI TEJA",
    "rollNo": "21471A0598",
    "parentNo": 9963279172,
    "studentNo": 7702351758,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097133/CSE21Batch/CSE21BatchBSection/p9o8i7u6y5t4r3e2w1q0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NALLAMOTHU TEJASWINI",
    "rollNo": "21471A0599",
    "parentNo": 9492466433,
    "studentNo": 9676612392,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097133/CSE21Batch/CSE21BatchBSection/a1z2x3c4v5b6n7m8l9k0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PASAM PAVANI",
    "rollNo": "21471A05A0",
    "parentNo": 8186864522,
    "studentNo": 8186864522,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097133/CSE21Batch/CSE21BatchBSection/s2d3f4g5h6j7k8l9m0n1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PEDAPATI JAYA LAKSHMI",
    "rollNo": "21471A05A1",
    "parentNo": 9948836398,
    "studentNo": 9392610694,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097132/CSE21Batch/CSE21BatchBSection/c3v4b5n6m7l8k9j0h1g2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "POTU KUSUMA",
    "rollNo": "21471A05A2",
    "parentNo": 8499098680,
    "studentNo": 9347155061,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097132/CSE21Batch/CSE21BatchBSection/q5w4e3r2t1y0u9i8o7p6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PULI SOWJANYA",
    "rollNo": "21471A05A3",
    "parentNo": 9704431908,
    "studentNo": 9704735905,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097132/CSE21Batch/CSE21BatchBSection/x6z5y4x3w2v1u0t9s8r7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "RANGAM GAYATHRI",
    "rollNo": "21471A05A4",
    "parentNo": 9440016399,
    "studentNo": 7780660803,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097132/CSE21Batch/CSE21BatchBSection/a7b6c5d4e3f2g1h0i9j8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SABBAVARAPU DILEEP",
    "rollNo": "21471A05A5",
    "parentNo": 9866804211,
    "studentNo": 9618052761,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097131/CSE21Batch/CSE21BatchBSection/z8y7x6w5v4u3t2s1r0q9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAHITHI VEERAMACHANENI",
    "rollNo": "21471A05A6",
    "parentNo": 9989770670,
    "studentNo": 7780470095,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097131/CSE21Batch/CSE21BatchBSection/b9c8d7e6f5g4h3i2j1k0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK BASHA",
    "rollNo": "21471A05A7",
    "parentNo": 9490859769,
    "studentNo": 8179473485,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097131/CSE21Batch/CSE21BatchBSection/l0m9n8b7v6c5x4z3a2s1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK KHADAR VALLI",
    "rollNo": "21471A05A8",
    "parentNo": 7702471949,
    "studentNo": 9398187082,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097131/CSE21Batch/CSE21BatchBSection/q2w3e4r5t6y7u8i9o0p1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK NOORJAHAN",
    "rollNo": "21471A05A9",
    "parentNo": 8143228982,
    "studentNo": 8341295342,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097131/CSE21Batch/CSE21BatchBSection/z3x4c5v6b7n8m9l0k1j2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SABIHA",
    "rollNo": "21471A05B0",
    "parentNo": 9494045249,
    "studentNo": 8919514259,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097130/CSE21Batch/CSE21BatchBSection/g4h5j6k7l8m9n0b1v2c3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "THATIPARTHI PUSHPA KUMARI",
    "rollNo": "21471A05B2",
    "parentNo": 9704831601,
    "studentNo": 7793941601,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097130/CSE21Batch/CSE21BatchBSection/e5d6f7g8h9j0k1l2m3n4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VADDI ASHOK KUMAR",
    "rollNo": "21471A05B3",
    "parentNo": 9553225903,
    "studentNo": 7569060153,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097130/CSE21Batch/CSE21BatchBSection/i6o7p8q9w0e1r2t3y4u5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VAKAPALLI NAVYA",
    "rollNo": "21471A05B4",
    "parentNo": 9515434462,
    "studentNo": 8121466114,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097130/CSE21Batch/CSE21BatchBSection/f7g8h9j0k1l2m3n4b5v6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VALLURU SOWMYA",
    "rollNo": "21471A05B5",
    "parentNo": 9849201092,
    "studentNo": 9849201092,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097129/CSE21Batch/CSE21BatchBSection/o8p9q0w1e2r3t4y5u6i7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VATTI LAHARI",
    "rollNo": "21471A05B6",
    "parentNo": 8897131555,
    "studentNo": 7794951864,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097129/CSE21Batch/CSE21BatchBSection/c9v0b1n2m3l4k5j6h7g8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YEDDULA KUSUMA",
    "rollNo": "21471A05B7",
    "parentNo": 8886988170,
    "studentNo": 8247391167,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097129/CSE21Batch/CSE21BatchBSection/u0t9r8e7w6q5a4s3d2f1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YELURI VAISHNAVI",
    "rollNo": "21471A05B8",
    "parentNo": 957303152,
    "studentNo": 7675859516,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097129/CSE21Batch/CSE21BatchBSection/j1k2l3m4n5b6v7c8x9z0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YERRAMSETTY SOWMYA",
    "rollNo": "21471A05B9",
    "parentNo": 9666872883,
    "studentNo": 8096137414,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097129/CSE21Batch/CSE21BatchBSection/p2o3i4u5y6t7r8e9w0q1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOJJA SAI GANESH",
    "rollNo": "21471A05C0",
    "parentNo": 9490638933,
    "studentNo": 7672058597,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097128/CSE21Batch/CSE21BatchBSection/g3f4d5s6a7z8x9c0v1b2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VAKAKAYALA DURGA PRASAD",
    "rollNo": "21471A05C1",
    "parentNo": 9502436754,
    "studentNo": 7995213575,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097128/CSE21Batch/CSE21BatchBSection/m4n5b6v7c8x9z0a1s2d3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VELPULA TEJASWINI",
    "rollNo": "21471A05C2",
    "parentNo": 9949792889,
    "studentNo": 8121814391,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097128/CSE21Batch/CSE21BatchBSection/t5y6u7i8o9p0q1w2e3r4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ADUSUMILLI RAKESH CHOWDARY",
    "rollNo": "21471A05C3",
    "parentNo": 7569880294,
    "studentNo": 9912984574,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097177/CSE21Batch/CSE21BatchCSection/v6b7n8m9l0k1j2h3g4f5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ALLU SRIYA",
    "rollNo": "21471A05C4",
    "parentNo": 7330797317,
    "studentNo": 7386226605,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097177/CSE21Batch/CSE21BatchCSection/x7z8a9s0d1f2g3h4j5k6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ANUMOLU HARIKA",
    "rollNo": "21471A05C5",
    "parentNo": 9908096050,
    "studentNo": 8897668121,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097176/CSE21Batch/CSE21BatchCSection/y8u9i0o1p2q3w4e5r6t7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ARVA SAINADH REDDY",
    "rollNo": "21471A05C6",
    "parentNo": 8106474230,
    "studentNo": 8125856938,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097176/CSE21Batch/CSE21BatchCSection/z9x0c1v2b3n4m5l6k7j8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BALAGANI JAHNAVI",
    "rollNo": "21471A05C7",
    "parentNo": 9704862468,
    "studentNo": 7207317055,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097176/CSE21Batch/CSE21BatchCSection/a0s1d2f3g4h5j6k7l8m9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BANDARU MANIDEEP",
    "rollNo": "21471A05C8",
    "parentNo": 9100193465,
    "studentNo": 9603590685,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097176/CSE21Batch/CSE21BatchCSection/q1w2e3r4t5y6u7i8o9p0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BODDU SAI PRAVEEN KUMAR",
    "rollNo": "21471A05C9",
    "parentNo": 9642762917,
    "studentNo": 8019964911,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097176/CSE21Batch/CSE21BatchCSection/x2c3v4b5n6m7l8k9j0h1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOLLINENI NAVYA",
    "rollNo": "21471A05D0",
    "parentNo": 9701487669,
    "studentNo": 9652477669,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097175/CSE21Batch/CSE21BatchCSection/e3r4t5y6u7i8o9p0q1w2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOPPANA SWETHA",
    "rollNo": "21471A05D1",
    "parentNo": 9248458488,
    "studentNo": 9391979915,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097175/CSE21Batch/CSE21BatchCSection/f4g5h6j7k8l9m0n1b2v3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHALLA TEJASWINI",
    "rollNo": "21471A05D2",
    "parentNo": 7794911712,
    "studentNo": 6309701801,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097175/CSE21Batch/CSE21BatchCSection/z5x6c7v8b9n0m1l2k3j4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DARAPUREDDY SWAPNA",
    "rollNo": "21471A05D3",
    "parentNo": 9502968425,
    "studentNo": 7207458114,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097175/CSE21Batch/CSE21BatchCSection/a6s7d8f9g0h1j2k3l4m5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GADDAM SAI KRISHNA REDDY",
    "rollNo": "21471A05D4",
    "parentNo": 7337490977,
    "studentNo": 7995927184,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097174/CSE21Batch/CSE21BatchCSection/q7w8e9r0t1y2u3i4o5p6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUNDU NAGAMANI",
    "rollNo": "21471A05D5",
    "parentNo": 7989307520,
    "studentNo": 8374667074,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097174/CSE21Batch/CSE21BatchCSection/x8c9v0b1n2m3l4k5j6h7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "JARUGULLA VENKATA ESWAR SAI",
    "rollNo": "21471A05D6",
    "parentNo": 9666869413,
    "studentNo": 9676103193,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097174/CSE21Batch/CSE21BatchCSection/e9r0t1y2u3i4o5p6q7w8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KAMBHAMPATI DEVI SRI",
    "rollNo": "21471A05D7",
    "parentNo": 9676736189,
    "studentNo": 9948290951,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097174/CSE21Batch/CSE21BatchCSection/f0g1h2j3k4l5m6n7b8v9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KANIGIRI HARIKA",
    "rollNo": "21471A05D8",
    "parentNo": 7989981416,
    "studentNo": 7842472589,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097173/CSE21Batch/CSE21BatchCSection/z1x2c3v4b5n6m7l8k9j0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOLA SRIKANTH REDDY",
    "rollNo": "21471A05D9",
    "parentNo": 9849176932,
    "studentNo": 9494021841,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097173/CSE21Batch/CSE21BatchCSection/a2s3d4f5g6h7j8k9l0m1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOMALI SAI KUMAR",
    "rollNo": "21471A05E0",
    "parentNo": 9182741541,
    "studentNo": 9618073574,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097173/CSE21Batch/CSE21BatchCSection/q3w4e5r6t7y8u9i0o1p2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTHA SRI SNEHA",
    "rollNo": "21471A05E1",
    "parentNo": 9494235227,
    "studentNo": 9494235227,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097173/CSE21Batch/CSE21BatchCSection/x4c5v6b7n8m9l0k1j2h3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTA SUMANTH KUMAR REDDY",
    "rollNo": "21471A05E2",
    "parentNo": 9441113061,
    "studentNo": 9398864010,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097172/CSE21Batch/CSE21BatchCSection/e5r6t7y8u9i0o1p2q3w4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTHA VARSHITHA",
    "rollNo": "21471A05E3",
    "parentNo": 9494056254,
    "studentNo": 9948281137,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097172/CSE21Batch/CSE21BatchCSection/f6g7h8j9k0l1m2n3b4v5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "LOKAM SREE LEKHA",
    "rollNo": "21471A05E4",
    "parentNo": 9959648604,
    "studentNo": 7995133379,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097172/CSE21Batch/CSE21BatchCSection/z7x8c9v0b1n2m3l4k5j6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANGALA MANVITHA",
    "rollNo": "21471A05E5",
    "parentNo": 9493774844,
    "studentNo": 7075727040,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097171/CSE21Batch/CSE21BatchCSection/a8s9d0f1g2h3j4k5l6m7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MADDINENI BHAVYA SREE",
    "rollNo": "21471A05E6",
    "parentNo": 9948512530,
    "studentNo": 8074697960,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097171/CSE21Batch/CSE21BatchCSection/q9w0e1r2t3y4u5i6o7p8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MEKALA PRUDHVI",
    "rollNo": "21471A05E7",
    "parentNo": 9666068694,
    "studentNo": 9398864010,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097171/CSE21Batch/CSE21BatchCSection/x0c1v2b3n4m5l6k7j8h9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANDAPATI KEERTHANA",
    "rollNo": "21471A05E8",
    "parentNo": 8919615599,
    "studentNo": 8074987042,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097171/CSE21Batch/CSE21BatchCSection/e1r2t3y4u5i6o7p8q9w0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MADDALI MANI CHANDANA",
    "rollNo": "21471A05E9",
    "parentNo": 9494347423,
    "studentNo": 9347572709,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097170/CSE21Batch/CSE21BatchCSection/f2g3h4j5k6l7m8n9b0v1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MODUGU SRI CHAKRA",
    "rollNo": "21471A05F0",
    "parentNo": 9866804211,
    "studentNo": 9398038753,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097170/CSE21Batch/CSE21BatchCSection/z3x4c5v6b7n8m9l0k1j2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MOHAMMAD MUJAHID",
    "rollNo": "21471A05F1",
    "parentNo": 9963498877,
    "studentNo": 7995133379,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097170/CSE21Batch/CSE21BatchCSection/a4s5d6f7g8h9j0k1l2m3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MOHAMMAD UMMER",
    "rollNo": "21471A05F2",
    "parentNo": 9966804211,
    "studentNo": 9398038753,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097170/CSE21Batch/CSE21BatchCSection/q5w6e7r8t9y0u1i2o3p4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NAGAM SRI HARSHINI",
    "rollNo": "21471A05F3",
    "parentNo": 8106880295,
    "studentNo": 8919010260,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097169/CSE21Batch/CSE21BatchCSection/x6c7v8b9n0m1l2k3j4h5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NANDYALA LOKESH CHOWDARY",
    "rollNo": "21471A05F4",
    "parentNo": 9494347423,
    "studentNo": 7013834629,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097169/CSE21Batch/CSE21BatchCSection/e7r8t9y0u1i2o3p4q5w6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PALLEWADA PAVAN SRI SAI",
    "rollNo": "21471A05F5",
    "parentNo": 9492211910,
    "studentNo": 9398934571,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097169/CSE21Batch/CSE21BatchCSection/f8g9h0j1k2l3m4n5b6v7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PAMULAPATI SAHITHYA",
    "rollNo": "21471A05F6",
    "parentNo": 9441221760,
    "studentNo": 7893817112,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097169/CSE21Batch/CSE21BatchCSection/z9x0c1v2b3n4m5l6k7j8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PULAKANDAM LIKHITHA",
    "rollNo": "21471A05F7",
    "parentNo": 9963279172,
    "studentNo": 7702351758,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097168/CSE21Batch/CSE21BatchCSection/a0s1d2f3g4h5j6k7l8m9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "RAMINENI SIVA BHAVANI",
    "rollNo": "21471A05F8",
    "parentNo": 9492466433,
    "studentNo": 9676612392,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097168/CSE21Batch/CSE21BatchCSection/q1w2e3r4t5y6u7i8o9p0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAINATH REDDY DANDU",
    "rollNo": "21471A05F9",
    "parentNo": 8186864522,
    "studentNo": 8186864522,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097168/CSE21Batch/CSE21BatchCSection/x2c3v4b5n6m7l8k9j0h1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAI NAVEEN KUMAR KUNCHALA",
    "rollNo": "21471A05G0",
    "parentNo": 9948836398,
    "studentNo": 9392610694,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097168/CSE21Batch/CSE21BatchCSection/e3r4t5y6u7i8o9p0q1w2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAI SUMANTH DUBBAKA",
    "rollNo": "21471A05G1",
    "parentNo": 8499098680,
    "studentNo": 9347155061,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097167/CSE21Batch/CSE21BatchCSection/f4g5h6j7k8l9m0n1b2v3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAKHINETI HIMA VARSHINI",
    "rollNo": "21471A05G2",
    "parentNo": 9704431908,
    "studentNo": 9704735905,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097167/CSE21Batch/CSE21BatchCSection/z5x6c7v8b9n0m1l2k3j4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK MOHAMMAD IMRAN",
    "rollNo": "21471A05G3",
    "parentNo": 9440016399,
    "studentNo": 7780660803,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097167/CSE21Batch/CSE21BatchCSection/a6s7d8f9g0h1j2k3l4m5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SALAHUDDIN",
    "rollNo": "21471A05G4",
    "parentNo": 9866804211,
    "studentNo": 9618052761,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097167/CSE21Batch/CSE21BatchCSection/q7w8e9r0t1y2u3i4o5p6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SAMREEN",
    "rollNo": "21471A05G5",
    "parentNo": 9989770670,
    "studentNo": 7780470095,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097166/CSE21Batch/CSE21BatchCSection/x8c9v0b1n2m3l4k5j6h7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "TELUGU SAI AKASH",
    "rollNo": "21471A05G6",
    "parentNo": 9490859769,
    "studentNo": 8179473485,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097166/CSE21Batch/CSE21BatchCSection/e9r0t1y2u3i4o5p6q7w8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VADLAPUDI TEJA",
    "rollNo": "21471A05G7",
    "parentNo": 7702471949,
    "studentNo": 9398187082,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097166/CSE21Batch/CSE21BatchCSection/f0g1h2j3k4l5m6n7b8v9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VAKAPALLI ANITHA",
    "rollNo": "21471A05G8",
    "parentNo": 8143228982,
    "studentNo": 8341295342,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097166/CSE21Batch/CSE21BatchCSection/z1x2c3v4b5n6m7l8k9j0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VARIGONDA PRAKASH",
    "rollNo": "21471A05G9",
    "parentNo": 9494045249,
    "studentNo": 8919514259,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097165/CSE21Batch/CSE21BatchCSection/a2s3d4f5g6h7j8k9l0m1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VAKKALAGADDA VAISHNAVI",
    "rollNo": "21471A05H0",
    "parentNo": 9704831601,
    "studentNo": 7793941601,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097165/CSE21Batch/CSE21BatchCSection/q3w4e5r6t7y8u9i0o1p2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VALLURU SOWMYA",
    "rollNo": "21471A05H1",
    "parentNo": 9553225903,
    "studentNo": 7569060153,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097165/CSE21Batch/CSE21BatchCSection/x4c5v6b7n8m9l0k1j2h3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VEDULLAPALLI VAMSI",
    "rollNo": "21471A05H2",
    "parentNo": 9515434462,
    "studentNo": 8121466114,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097165/CSE21Batch/CSE21BatchCSection/e5r6t7y8u9i0o1p2q3w4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YENUMULA MAHESH REDDY",
    "rollNo": "21471A05H3",
    "parentNo": 9849201092,
    "studentNo": 9849201092,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097164/CSE21Batch/CSE21BatchCSection/f6g7h8j9k0l1m2n3b4v5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YERRA ANJANEYULU",
    "rollNo": "21471A05H4",
    "parentNo": 8897131555,
    "studentNo": 7794951864,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097164/CSE21Batch/CSE21BatchCSection/z7x8c9v0b1n2m3l4k5j6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YOKOLLA PRUDHVI",
    "rollNo": "21471A05H5",
    "parentNo": 8886988170,
    "studentNo": 8247391167,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097164/CSE21Batch/CSE21BatchCSection/a8s9d0f1g2h3j4k5l6m7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANGAMURU SRIKANTH",
    "rollNo": "21471A05H6",
    "parentNo": 957303152,
    "studentNo": 7675859516,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097164/CSE21Batch/CSE21BatchCSection/q9w0e1r2t3y4u5i6o7p8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ANUMULA NAGA SAI",
    "rollNo": "21471A05H7",
    "parentNo": 9666872883,
    "studentNo": 8096137414,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097203/CSE21Batch/CSE21BatchDSection/x0c1v2b3n4m5l6k7j8h9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "AKULA SREE PRIYA",
    "rollNo": "21471A05H8",
    "parentNo": 9490638933,
    "studentNo": 7672058597,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097203/CSE21Batch/CSE21BatchDSection/e1r2t3y4u5i6o7p8q9w0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BHAVANA VANKADARA",
    "rollNo": "21471A05H9",
    "parentNo": 9502436754,
    "studentNo": 7995213575,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097202/CSE21Batch/CSE21BatchDSection/f2g3h4j5k6l7m8n9b0v1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHALLA VENKATA SAINADH",
    "rollNo": "21471A05I0",
    "parentNo": 9949792889,
    "studentNo": 8121814391,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097202/CSE21Batch/CSE21BatchDSection/z3x4c5v6b7n8m9l0k1j2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHILAKALA VENKATA SAI",
    "rollNo": "21471A05I1",
    "parentNo": 7569880294,
    "studentNo": 9912984574,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097202/CSE21Batch/CSE21BatchDSection/a4s5d6f7g8h9j0k1l2m3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHUNDURU VAISHNAVI",
    "rollNo": "21471A05I2",
    "parentNo": 7330797317,
    "studentNo": 7386226605,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097202/CSE21Batch/CSE21BatchDSection/q5w6e7r8t9y0u1i2o3p4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DEVARAPALLI UMA MAHESWARA RAO",
    "rollNo": "21471A05I3",
    "parentNo": 9908096050,
    "studentNo": 8897668121,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097201/CSE21Batch/CSE21BatchDSection/x6c7v8b9n0m1l2k3j4h5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUDETI SAI KUMAR",
    "rollNo": "21471A05I4",
    "parentNo": 8106474230,
    "studentNo": 8125856938,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097201/CSE21Batch/CSE21BatchDSection/e7r8t9y0u1i2o3p4q5w6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUMMADAM VAMSI KRISHNA",
    "rollNo": "21471A05I5",
    "parentNo": 9704862468,
    "studentNo": 7207317055,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097201/CSE21Batch/CSE21BatchDSection/f8g9h0j1k2l3m4n5b6v7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUNDALA SRAVANI",
    "rollNo": "21471A05I6",
    "parentNo": 9100193465,
    "studentNo": 9603590685,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097201/CSE21Batch/CSE21BatchDSection/z9x0c1v2b3n4m5l6k7j8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GURAZALA SAHITHI",
    "rollNo": "21471A05I7",
    "parentNo": 9642762917,
    "studentNo": 8019964911,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097200/CSE21Batch/CSE21BatchDSection/a0s1d2f3g4h5j6k7l8m9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "INAGANTI DEVI CHARAN",
    "rollNo": "21471A05I8",
    "parentNo": 9701487669,
    "studentNo": 9652477669,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097200/CSE21Batch/CSE21BatchDSection/q1w2e3r4t5y6u7i8o9p0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KAMBHAMPATI DEEPIKA",
    "rollNo": "21471A05I9",
    "parentNo": 9248458488,
    "studentNo": 9391979915,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097200/CSE21Batch/CSE21BatchDSection/x2c3v4b5n6m7l8k9j0h1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KATRU MANIDEEP",
    "rollNo": "21471A05J0",
    "parentNo": 7794911712,
    "studentNo": 6309701801,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097200/CSE21Batch/CSE21BatchDSection/e3r4t5y6u7i8o9p0q1w2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KONCHADA KRISHNA CHAITANYA",
    "rollNo": "21471A05J1",
    "parentNo": 9502968425,
    "studentNo": 7207458114,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097199/CSE21Batch/CSE21BatchDSection/f4g5h6j7k8l9m0n1b2v3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KONDAPALLI SOWJANYA",
    "rollNo": "21471A05J2",
    "parentNo": 7337490977,
    "studentNo": 7995927184,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097199/CSE21Batch/CSE21BatchDSection/z5x6c7v8b9n0m1l2k3j4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KORRAPATI VEERA SAI",
    "rollNo": "21471A05J3",
    "parentNo": 7989307520,
    "studentNo": 8374667074,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097199/CSE21Batch/CSE21BatchDSection/a6s7d8f9g0h1j2k3l4m5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTAMARTHI AKHILA",
    "rollNo": "21471A05J4",
    "parentNo": 9666869413,
    "studentNo": 9676103193,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097199/CSE21Batch/CSE21BatchDSection/q7w8e9r0t1y2u3i4o5p6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTA PRUDHVI RAJ",
    "rollNo": "21471A05J5",
    "parentNo": 9676736189,
    "studentNo": 9948290951,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097198/CSE21Batch/CSE21BatchDSection/x8c9v0b1n2m3l4k5j6h7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTHALANKA PRASANNA",
    "rollNo": "21471A05J6",
    "parentNo": 7989981416,
    "studentNo": 7842472589,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097198/CSE21Batch/CSE21BatchDSection/e9r0t1y2u3i4o5p6q7w8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MADDELA ANUSHA",
    "rollNo": "21471A05J7",
    "parentNo": 9849176932,
    "studentNo": 9494021841,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097198/CSE21Batch/CSE21BatchDSection/f0g1h2j3k4l5m6n7b8v9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANDALA HARSHITHA",
    "rollNo": "21471A05J8",
    "parentNo": 9182741541,
    "studentNo": 9618073574,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097198/CSE21Batch/CSE21BatchDSection/z1x2c3v4b5n6m7l8k9j0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MARRIPATI CHANDRIKA",
    "rollNo": "21471A05J9",
    "parentNo": 9494235227,
    "studentNo": 9494235227,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097197/CSE21Batch/CSE21BatchDSection/a2s3d4f5g6h7j8k9l0m1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MENDU BHANU PRAKASH REDDY",
    "rollNo": "21471A05K0",
    "parentNo": 9441113061,
    "studentNo": 9398864010,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097197/CSE21Batch/CSE21BatchDSection/q3w4e5r6t7y8u9i0o1p2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MUDAM YAKOBU",
    "rollNo": "21471A05K1",
    "parentNo": 9494056254,
    "studentNo": 9948281137,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097197/CSE21Batch/CSE21BatchDSection/x4c5v6b7n8m9l0k1j2h3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PASAM MANASA",
    "rollNo": "21471A05K2",
    "parentNo": 9959648604,
    "studentNo": 7995133379,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097197/CSE21Batch/CSE21BatchDSection/e5r6t7y8u9i0o1p2q3w4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PATNALA MOUNIKA",
    "rollNo": "21471A05K3",
    "parentNo": 9493774844,
    "studentNo": 7075727040,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097196/CSE21Batch/CSE21BatchDSection/f6g7h8j9k0l1m2n3b4v5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "POLA SAHITHI",
    "rollNo": "21471A05K4",
    "parentNo": 9948512530,
    "studentNo": 8074697960,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097196/CSE21Batch/CSE21BatchDSection/z7x8c9v0b1n2m3l4k5j6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "RAJAPETA NAGA SAI RAM CHARAN",
    "rollNo": "21471A05K5",
    "parentNo": 9666068694,
    "studentNo": 9398864010,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097196/CSE21Batch/CSE21BatchDSection/a8s9d0f1g2h3j4k5l6m7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAMPATH KUMAR JINKA",
    "rollNo": "21471A05K6",
    "parentNo": 8919615599,
    "studentNo": 8074987042,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097196/CSE21Batch/CSE21BatchDSection/q9w0e1r2t3y4u5i6o7p8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK GULZAR",
    "rollNo": "21471A05K7",
    "parentNo": 9494347423,
    "studentNo": 9347572709,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097195/CSE21Batch/CSE21BatchDSection/x0c1v2b3n4m5l6k7j8h9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SAIDA",
    "rollNo": "21471A05K8",
    "parentNo": 9866804211,
    "studentNo": 9398038753,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097195/CSE21Batch/CSE21BatchDSection/e1r2t3y4u5i6o7p8q9w0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK NADEEM",
    "rollNo": "21471A05K9",
    "parentNo": 9963498877,
    "studentNo": 7995133379,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097195/CSE21Batch/CSE21BatchDSection/f2g3h4j5k6l7m8n9b0v1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK NAZIR",
    "rollNo": "21471A05L0",
    "parentNo": 9966804211,
    "studentNo": 9398038753,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097195/CSE21Batch/CSE21BatchDSection/z3x4c5v6b7n8m9l0k1j2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SADAF",
    "rollNo": "21471A05L1",
    "parentNo": 8106880295,
    "studentNo": 8919010260,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097194/CSE21Batch/CSE21BatchDSection/a4s5d6f7g8h9j0k1l2m3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SUDIREDI PRUDHVI",
    "rollNo": "21471A05L2",
    "parentNo": 9494347423,
    "studentNo": 7013834629,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097194/CSE21Batch/CSE21BatchDSection/q5w6e7r8t9y0u1i2o3p4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "THUMMALA DURGA PRASAD REDDY",
    "rollNo": "21471A05L3",
    "parentNo": 9492211910,
    "studentNo": 9398934571,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097194/CSE21Batch/CSE21BatchDSection/x6c7v8b9n0m1l2k3j4h5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "UPPARAPALLI HARIKRISHNA",
    "rollNo": "21471A05L4",
    "parentNo": 9441221760,
    "studentNo": 7893817112,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097194/CSE21Batch/CSE21BatchDSection/e7r8t9y0u1i2o3p4q5w6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VALLURU SOWMYA",
    "rollNo": "21471A05L5",
    "parentNo": 9963279172,
    "studentNo": 7702351758,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097193/CSE21Batch/CSE21BatchDSection/f8g9h0j1k2l3m4n5b6v7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VARDHINENI SAI SRINIVASA REDDY",
    "rollNo": "21471A05L6",
    "parentNo": 9492466433,
    "studentNo": 9676612392,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097193/CSE21Batch/CSE21BatchDSection/z9x0c1v2b3n4m5l6k7j8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VASA PAVANI",
    "rollNo": "21471A05L7",
    "parentNo": 8186864522,
    "studentNo": 8186864522,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097193/CSE21Batch/CSE21BatchDSection/a0s1d2f3g4h5j6k7l8m9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VEMULA DURGA PRASAD",
    "rollNo": "21471A05L8",
    "parentNo": 9948836398,
    "studentNo": 9392610694,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097193/CSE21Batch/CSE21BatchDSection/q1w2e3r4t5y6u7i8o9p0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YERRAMSETTY SOWMYA",
    "rollNo": "21471A05L9",
    "parentNo": 8499098680,
    "studentNo": 9347155061,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097192/CSE21Batch/CSE21BatchDSection/x2c3v4b5n6m7l8k9j0h1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YENUMULA MAHESH REDDY",
    "rollNo": "21471A05M0",
    "parentNo": 9704431908,
    "studentNo": 9704735905,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097192/CSE21Batch/CSE21BatchDSection/e3r4t5y6u7i8o9p0q1w2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MOHAMMAD SHAMSUDDIN",
    "rollNo": "21471A05M1",
    "parentNo": 9440016399,
    "studentNo": 7780660803,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097192/CSE21Batch/CSE21BatchDSection/f4g5h6j7k8l9m0n1b2v3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VASA DURGA BHAVANI",
    "rollNo": "21471A05M2",
    "parentNo": 9866804211,
    "studentNo": 9618052761,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097192/CSE21Batch/CSE21BatchDSection/z5x6c7v8b9n0m1l2k3j4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YERRA ANJANEYULU",
    "rollNo": "21471A05M3",
    "parentNo": 9989770670,
    "studentNo": 7780470095,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097232/CSE21Batch/CSE21BatchESection/a6s7d8f9g0h1j2k3l4m5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YERRA NAGENDRA BABU",
    "rollNo": "21471A05M4",
    "parentNo": 9490859769,
    "studentNo": 8179473485,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097231/CSE21Batch/CSE21BatchESection/q7w8e9r0t1y2u3i4o5p6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ANNAM TEJA SRI",
    "rollNo": "21471A05M5",
    "parentNo": 7702471949,
    "studentNo": 9398187082,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097231/CSE21Batch/CSE21BatchESection/x8c9v0b1n2m3l4k5j6h7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BADIGANTI DURGA PRASAD",
    "rollNo": "21471A05M6",
    "parentNo": 8143228982,
    "studentNo": 8341295342,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097231/CSE21Batch/CSE21BatchESection/e9r0t1y2u3i4o5p6q7w8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BODDU NAVEEN KUMAR",
    "rollNo": "21471A05M7",
    "parentNo": 9494045249,
    "studentNo": 8919514259,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097230/CSE21Batch/CSE21BatchESection/f0g1h2j3k4l5m6n7b8v9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHEBROLU AKHIL",
    "rollNo": "21471A05M8",
    "parentNo": 9704831601,
    "studentNo": 7793941601,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097230/CSE21Batch/CSE21BatchESection/z1x2c3v4b5n6m7l8k9j0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHENNUPOINA SANGEETHA",
    "rollNo": "21471A05M9",
    "parentNo": 9553225903,
    "studentNo": 7569060153,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097230/CSE21Batch/CSE21BatchESection/a2s3d4f5g6h7j8k9l0m1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DAIDA SHALINI",
    "rollNo": "21471A05N0",
    "parentNo": 9515434462,
    "studentNo": 8121466114,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097230/CSE21Batch/CSE21BatchESection/q3w4e5r6t7y8u9i0o1p2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DUDEKULA GOUSE PEER",
    "rollNo": "21471A05N1",
    "parentNo": 9849201092,
    "studentNo": 9849201092,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097229/CSE21Batch/CSE21BatchESection/x4c5v6b7n8m9l0k1j2h3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DUNABOYINA RAJESH",
    "rollNo": "21471A05N2",
    "parentNo": 8897131555,
    "studentNo": 7794951864,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097229/CSE21Batch/CSE21BatchESection/e5r6t7y8u9i0o1p2q3w4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUNDALA SRAVANI",
    "rollNo": "21471A05N3",
    "parentNo": 8886988170,
    "studentNo": 8247391167,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097229/CSE21Batch/CSE21BatchESection/f6g7h8j9k0l1m2n3b4v5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUNTUR SIVA NAGA SAI VARSHITHA",
    "rollNo": "21471A05N4",
    "parentNo": 957303152,
    "studentNo": 7675859516,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097229/CSE21Batch/CSE21BatchESection/z7x8c9v0b1n2m3l4k5j6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KAMBHAMPATI GOPI CHAND",
    "rollNo": "21471A05N5",
    "parentNo": 9666872883,
    "studentNo": 8096137414,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097228/CSE21Batch/CSE21BatchESection/a8s9d0f1g2h3j4k5l6m7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KORUPROLU CHANDINI",
    "rollNo": "21471A05N6",
    "parentNo": 9490638933,
    "studentNo": 7672058597,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097228/CSE21Batch/CSE21BatchESection/q9w0e1r2t3y4u5i6o7p8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KONDA LALITHA",
    "rollNo": "21471A05N7",
    "parentNo": 9502436754,
    "studentNo": 7995213575,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097228/CSE21Batch/CSE21BatchESection/x0c1v2b3n4m5l6k7j8h9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KONDAPALLI SOWMYA",
    "rollNo": "21471A05N8",
    "parentNo": 9949792889,
    "studentNo": 8121814391,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097228/CSE21Batch/CSE21BatchESection/e1r2t3y4u5i6o7p8q9w0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MAHAMMAD KHADAR NAWAZ",
    "rollNo": "21471A05N9",
    "parentNo": 7569880294,
    "studentNo": 9912984574,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097227/CSE21Batch/CSE21BatchESection/f2g3h4j5k6l7m8n9b0v1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MAHAMMAD NASHEER",
    "rollNo": "21471A05P0",
    "parentNo": 7330797317,
    "studentNo": 7386226605,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097227/CSE21Batch/CSE21BatchESection/z3x4c5v6b7n8m9l0k1j2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MALLELA HARSHINI",
    "rollNo": "21471A05P1",
    "parentNo": 9908096050,
    "studentNo": 8897668121,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097227/CSE21Batch/CSE21BatchESection/a4s5d6f7g8h9j0k1l2m3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANIKANTA PALLERU",
    "rollNo": "21471A05P2",
    "parentNo": 8106474230,
    "studentNo": 8125856938,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097227/CSE21Batch/CSE21BatchESection/q5w6e7r8t9y0u1i2o3p4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MAYYANA BALAJI",
    "rollNo": "21471A05P3",
    "parentNo": 9704862468,
    "studentNo": 7207317055,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097226/CSE21Batch/CSE21BatchESection/x6c7v8b9n0m1l2k3j4h5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NADIKATTU GUNA SEKHAR",
    "rollNo": "21471A05P4",
    "parentNo": 9100193465,
    "studentNo": 9603590685,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097226/CSE21Batch/CSE21BatchESection/e7r8t9y0u1i2o3p4q5w6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NAIDU NAGA LAKSHMI PRASANNA",
    "rollNo": "21471A05P5",
    "parentNo": 9642762917,
    "studentNo": 8019964911,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097226/CSE21Batch/CSE21BatchESection/f8g9h0j1k2l3m4n5b6v7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PARIMALA PRAVALLIKA",
    "rollNo": "21471A05P6",
    "parentNo": 9701487669,
    "studentNo": 9652477669,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097226/CSE21Batch/CSE21BatchESection/z9x0c1v2b3n4m5l6k7j8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PERAMSETTY SRIJA",
    "rollNo": "21471A05P7",
    "parentNo": 9248458488,
    "studentNo": 9391979915,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097225/CSE21Batch/CSE21BatchESection/a0s1d2f3g4h5j6k7l8m9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PASAM HEMA VINEETHA",
    "rollNo": "21471A05P8",
    "parentNo": 7794911712,
    "studentNo": 6309701801,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097225/CSE21Batch/CSE21BatchESection/q1w2e3r4t5y6u7i8o9p0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PASAM MANASA",
    "rollNo": "21471A05P9",
    "parentNo": 9502968425,
    "studentNo": 7207458114,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097225/CSE21Batch/CSE21BatchESection/x2c3v4b5n6m7l8k9j0h1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "POTULURI RAMYA",
    "rollNo": "21471A05Q0",
    "parentNo": 7337490977,
    "studentNo": 7995927184,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097225/CSE21Batch/CSE21BatchESection/e3r4t5y6u7i8o9p0q1w2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PULAGAM SRI DURGA LAKSHMI PRASANNA",
    "rollNo": "21471A05Q1",
    "parentNo": 7989307520,
    "studentNo": 8374667074,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097224/CSE21Batch/CSE21BatchESection/f4g5h6j7k8l9m0n1b2v3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PUTHANI HIMA BINDU",
    "rollNo": "21471A05Q2",
    "parentNo": 9666869413,
    "studentNo": 9676103193,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097224/CSE21Batch/CSE21BatchESection/z5x6c7v8b9n0m1l2k3j4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK BASHEER AHAMED",
    "rollNo": "21471A05Q3",
    "parentNo": 9676736189,
    "studentNo": 9948290951,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097224/CSE21Batch/CSE21BatchESection/a6s7d8f9g0h1j2k3l4m5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK GOUSE MOHIDDIN",
    "rollNo": "21471A05Q4",
    "parentNo": 7989981416,
    "studentNo": 7842472589,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097224/CSE21Batch/CSE21BatchESection/q7w8e9r0t1y2u3i4o5p6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK HARISHA",
    "rollNo": "21471A05Q5",
    "parentNo": 9849176932,
    "studentNo": 9494021841,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097223/CSE21Batch/CSE21BatchESection/x8c9v0b1n2m3l4k5j6h7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK RIYAZ",
    "rollNo": "21471A05Q6",
    "parentNo": 9182741541,
    "studentNo": 9618073574,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097223/CSE21Batch/CSE21BatchESection/e9r0t1y2u3i4o5p6q7w8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SAIDA",
    "rollNo": "21471A05Q7",
    "parentNo": 9494235227,
    "studentNo": 9494235227,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097223/CSE21Batch/CSE21BatchESection/f0g1h2j3k4l5m6n7b8v9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SHABANA",
    "rollNo": "21471A05Q8",
    "parentNo": 9441113061,
    "studentNo": 9398864010,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097223/CSE21Batch/CSE21BatchESection/z1x2c3v4b5n6m7l8k9j0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "TUMMALAPALLI PAVAN SRI SAI",
    "rollNo": "21471A05Q9",
    "parentNo": 9494056254,
    "studentNo": 9948281137,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097222/CSE21Batch/CSE21BatchESection/a2s3d4f5g6h7j8k9l0m1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "UPPU HIMAJA",
    "rollNo": "21471A05R0",
    "parentNo": 9959648604,
    "studentNo": 7995133379,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097222/CSE21Batch/CSE21BatchESection/q3w4e5r6t7y8u9i0o1p2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VALLURU SOWMYA",
    "rollNo": "21471A05R1",
    "parentNo": 9493774844,
    "studentNo": 7075727040,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097222/CSE21Batch/CSE21BatchESection/x4c5v6b7n8m9l0k1j2h3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VALLURU SOWMYA",
    "rollNo": "21471A05R2",
    "parentNo": 9948512530,
    "studentNo": 8074697960,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097222/CSE21Batch/CSE21BatchESection/e5r6t7y8u9i0o1p2q3w4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VARIKUTI BHANU PRAKASH",
    "rollNo": "21471A05R3",
    "parentNo": 9666068694,
    "studentNo": 9398864010,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097221/CSE21Batch/CSE21BatchESection/f6g7h8j9k0l1m2n3b4v5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VEERAMACHANENI CHINNA BABU",
    "rollNo": "21471A05R4",
    "parentNo": 8919615599,
    "studentNo": 8074987042,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097221/CSE21Batch/CSE21BatchESection/z7x8c9v0b1n2m3l4k5j6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YEDDULA KUSUMA",
    "rollNo": "21471A05R5",
    "parentNo": 9494347423,
    "studentNo": 9347572709,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097221/CSE21Batch/CSE21BatchESection/a8s9d0f1g2h3j4k5l6m7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YERRAMSETTY SOWMYA",
    "rollNo": "21471A05R6",
    "parentNo": 9866804211,
    "studentNo": 9398038753,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097221/CSE21Batch/CSE21BatchESection/q9w0e1r2t3y4u5i6o7p8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "AKKENA TEJASWINI",
    "rollNo": "21471A05R7",
    "parentNo": 9963498877,
    "studentNo": 7995133379,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097259/CSE21Batch/CSE21BatchFSection/x0c1v2b3n4m5l6k7j8h9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHALLA SIVA SAI GANESH",
    "rollNo": "21471A05R8",
    "parentNo": 9966804211,
    "studentNo": 9398038753,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097259/CSE21Batch/CSE21BatchFSection/e1r2t3y4u5i6o7p8q9w0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DUDEKULA GOUSE PEER",
    "rollNo": "21471A05R9",
    "parentNo": 8106880295,
    "studentNo": 8919010260,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097259/CSE21Batch/CSE21BatchFSection/f2g3h4j5k6l7m8n9b0v1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GANTA SOWJANYA",
    "rollNo": "21471A05S0",
    "parentNo": 9494347423,
    "studentNo": 7013834629,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097258/CSE21Batch/CSE21BatchFSection/z3x4c5v6b7n8m9l0k1j2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUNDALA SRAVANI",
    "rollNo": "21471A05S1",
    "parentNo": 9492211910,
    "studentNo": 9398934571,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097258/CSE21Batch/CSE21BatchFSection/a4s5d6f7g8h9j0k1l2m3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "JANGALA NAGA SAI PRASANNA",
    "rollNo": "21471A05S2",
    "parentNo": 9441221760,
    "studentNo": 7893817112,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097258/CSE21Batch/CSE21BatchFSection/q5w6e7r8t9y0u1i2o3p4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "JANGAM VIJAYENDRA",
    "rollNo": "21471A05S3",
    "parentNo": 9963279172,
    "studentNo": 7702351758,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097258/CSE21Batch/CSE21BatchFSection/x6c7v8b9n0m1l2k3j4h5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KAMBHAMPATI DEEPIKA",
    "rollNo": "21471A05S4",
    "parentNo": 9492466433,
    "studentNo": 9676612392,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097257/CSE21Batch/CSE21BatchFSection/e7r8t9y0u1i2o3p4q5w6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KANDULA PRANAY SAI",
    "rollNo": "21471A05S5",
    "parentNo": 8186864522,
    "studentNo": 8186864522,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097257/CSE21Batch/CSE21BatchFSection/f8g9h0j1k2l3m4n5b6v7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KANDULAPATI PARDHU",
    "rollNo": "21471A05S6",
    "parentNo": 9948836398,
    "studentNo": 9392610694,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097257/CSE21Batch/CSE21BatchFSection/z9x0c1v2b3n4m5l6k7j8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KASARANENI MEGHANA",
    "rollNo": "21471A05S7",
    "parentNo": 8499098680,
    "studentNo": 9347155061,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097257/CSE21Batch/CSE21BatchFSection/a0s1d2f3g4h5j6k7l8m9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KATTA SIVAIAH",
    "rollNo": "21471A05S8",
    "parentNo": 9704431908,
    "studentNo": 9704735905,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097256/CSE21Batch/CSE21BatchFSection/q1w2e3r4t5y6u7i8o9p0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOLAGANI VENKATA PAVAN KUMAR",
    "rollNo": "21471A05S9",
    "parentNo": 9440016399,
    "studentNo": 7780660803,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097256/CSE21Batch/CSE21BatchFSection/x2c3v4b5n6m7l8k9j0h1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOPPULA LIKHITHA",
    "rollNo": "21471A05T0",
    "parentNo": 9866804211,
    "studentNo": 9618052761,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097256/CSE21Batch/CSE21BatchFSection/e3r4t5y6u7i8o9p0q1w2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTAMARTHI AKHILA",
    "rollNo": "21471A05T1",
    "parentNo": 9989770670,
    "studentNo": 7780470095,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097256/CSE21Batch/CSE21BatchFSection/f4g5h6j7k8l9m0n1b2v3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTLA BHARGAV",
    "rollNo": "21471A05T2",
    "parentNo": 9490859769,
    "studentNo": 8179473485,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097255/CSE21Batch/CSE21BatchFSection/z5x6c7v8b9n0m1l2k3j4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MEDIKONDA PRUDHVI",
    "rollNo": "21471A05T3",
    "parentNo": 7702471949,
    "studentNo": 9398187082,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097255/CSE21Batch/CSE21BatchFSection/a6s7d8f9g0h1j2k3l4m5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MEKALA PRUDHVI",
    "rollNo": "21471A05T4",
    "parentNo": 8143228982,
    "studentNo": 8341295342,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097255/CSE21Batch/CSE21BatchFSection/q7w8e9r0t1y2u3i4o5p6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NAGIREDDY LEKHYA",
    "rollNo": "21471A05T5",
    "parentNo": 9494045249,
    "studentNo": 8919514259,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097255/CSE21Batch/CSE21BatchFSection/x8c9v0b1n2m3l4k5j6h7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NAGIREDDY PRUDHVI RAJ",
    "rollNo": "21471A05T6",
    "parentNo": 9704831601,
    "studentNo": 7793941601,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097254/CSE21Batch/CSE21BatchFSection/e9r0t1y2u3i4o5p6q7w8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PULAGAM SRI DURGA LAKSHMI PRASANNA",
    "rollNo": "21471A05T7",
    "parentNo": 9553225903,
    "studentNo": 7569060153,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097254/CSE21Batch/CSE21BatchFSection/f0g1h2j3k4l5m6n7b8v9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAINADH REDDY DANDU",
    "rollNo": "21471A05T8",
    "parentNo": 9515434462,
    "studentNo": 8121466114,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097254/CSE21Batch/CSE21BatchFSection/z1x2c3v4b5n6m7l8k9j0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAI NAVEEN KUMAR KUNCHALA",
    "rollNo": "21471A05T9",
    "parentNo": 9849201092,
    "studentNo": 9849201092,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097254/CSE21Batch/CSE21BatchFSection/a2s3d4f5g6h7j8k9l0m1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK GULZAR",
    "rollNo": "21471A05U0",
    "parentNo": 8897131555,
    "studentNo": 7794951864,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097253/CSE21Batch/CSE21BatchFSection/q3w4e5r6t7y8u9i0o1p2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK MOHAMMAD ABU",
    "rollNo": "21471A05U1",
    "parentNo": 8886988170,
    "studentNo": 8247391167,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097253/CSE21Batch/CSE21BatchFSection/x4c5v6b7n8m9l0k1j2h3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SAHITHI",
    "rollNo": "21471A05U2",
    "parentNo": 957303152,
    "studentNo": 7675859516,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097253/CSE21Batch/CSE21BatchFSection/e5r6t7y8u9i0o1p2q3w4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SAMEERA",
    "rollNo": "21471A05U3",
    "parentNo": 9666872883,
    "studentNo": 8096137414,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097253/CSE21Batch/CSE21BatchFSection/f6g7h8j9k0l1m2n3b4v5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK YASIN BASHA",
    "rollNo": "21471A05U4",
    "parentNo": 9490638933,
    "studentNo": 7672058597,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097252/CSE21Batch/CSE21BatchFSection/z7x8c9v0b1n2m3l4k5j6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "THUMMALA DURGA PRASAD REDDY",
    "rollNo": "21471A05U5",
    "parentNo": 9502436754,
    "studentNo": 7995213575,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097252/CSE21Batch/CSE21BatchFSection/a8s9d0f1g2h3j4k5l6m7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VADLAPUDI TEJA",
    "rollNo": "21471A05U6",
    "parentNo": 9949792889,
    "studentNo": 8121814391,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097252/CSE21Batch/CSE21BatchFSection/q9w0e1r2t3y4u5i6o7p8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VASA PAVANI",
    "rollNo": "21471A05U7",
    "parentNo": 7569880294,
    "studentNo": 9912984574,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097252/CSE21Batch/CSE21BatchFSection/x0c1v2b3n4m5l6k7j8h9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VELPULA TEJASWINI",
    "rollNo": "21471A05U8",
    "parentNo": 7330797317,
    "studentNo": 7386226605,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097251/CSE21Batch/CSE21BatchFSection/e1r2t3y4u5i6o7p8q9w0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ADAPALA CHENNAKESAVULU",
    "rollNo": "21471A05U9",
    "parentNo": 9908096050,
    "studentNo": 8897668121,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097251/CSE21Batch/CSE21BatchFSection/f2g3h4j5k6l7m8n9b0v1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "AMBATI MANIKANTA",
    "rollNo": "21471A05V0",
    "parentNo": 8106474230,
    "studentNo": 8125856938,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097251/CSE21Batch/CSE21BatchFSection/z3x4c5v6b7n8m9l0k1j2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ATURI NAGA VEERA PURNIMA",
    "rollNo": "21471A05V1",
    "parentNo": 9704862468,
    "studentNo": 7207317055,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097251/CSE21Batch/CSE21BatchFSection/a4s5d6f7g8h9j0k1l2m3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHERUKURI HIMA VARSHINI",
    "rollNo": "21471A05V2",
    "parentNo": 9100193465,
    "studentNo": 9603590685,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097250/CSE21Batch/CSE21BatchFSection/q5w6e7r8t9y0u1i2o3p4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DASARI VINEETHA",
    "rollNo": "21471A05V3",
    "parentNo": 9642762917,
    "studentNo": 8019964911,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097250/CSE21Batch/CSE21BatchFSection/x6c7v8b9n0m1l2k3j4h5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DORAM VENKATA MANI DEEPIKA",
    "rollNo": "21471A05V4",
    "parentNo": 9701487669,
    "studentNo": 9652477669,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097250/CSE21Batch/CSE21BatchFSection/e7r8t9y0u1i2o3p4q5w6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GATLA HARSHITHA",
    "rollNo": "21471A05V5",
    "parentNo": 9248458488,
    "studentNo": 9391979915,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097250/CSE21Batch/CSE21BatchFSection/f8g9h0j1k2l3m4n5b6v7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GONUGUNTLA SRI SULAKSHMI",
    "rollNo": "21471A05V6",
    "parentNo": 7794911712,
    "studentNo": 6309701801,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097249/CSE21Batch/CSE21BatchFSection/z9x0c1v2b3n4m5l6k7j8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUGULOTHU RAJ KUMAR",
    "rollNo": "21471A05V7",
    "parentNo": 9502968425,
    "studentNo": 7207458114,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097249/CSE21Batch/CSE21BatchFSection/a0s1d2f3g4h5j6k7l8m9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "JASTI CHARAN SAI",
    "rollNo": "21471A05V8",
    "parentNo": 7337490977,
    "studentNo": 7995927184,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097249/CSE21Batch/CSE21BatchFSection/q1w2e3r4t5y6u7i8o9p0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "JEJJU KRISHNA CHANDRA",
    "rollNo": "21471A05V9",
    "parentNo": 7989307520,
    "studentNo": 8374667074,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097249/CSE21Batch/CSE21BatchFSection/x2c3v4b5n6m7l8k9j0h1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KASIREDDY SAI ANISHA",
    "rollNo": "21471A05W0",
    "parentNo": 9666869413,
    "studentNo": 9676103193,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097248/CSE21Batch/CSE21BatchFSection/e3r4t5y6u7i8o9p0q1w2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KUMMARI JAYANTH",
    "rollNo": "21471A05W1",
    "parentNo": 9676736189,
    "studentNo": 9948290951,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097248/CSE21Batch/CSE21BatchFSection/f4g5h6j7k8l9m0n1b2v3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KUNDALAM CHAITHANYA",
    "rollNo": "21471A05W2",
    "parentNo": 7989981416,
    "studentNo": 7842472589,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097248/CSE21Batch/CSE21BatchFSection/z5x6c7v8b9n0m1l2k3j4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANGALA MANVITHA",
    "rollNo": "21471A05W3",
    "parentNo": 9849176932,
    "studentNo": 9494021841,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097248/CSE21Batch/CSE21BatchFSection/a6s7d8f9g0h1j2k3l4m5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MAREEDU NAGA VEERA RAGHAVENDRA KUMAR",
    "rollNo": "21471A05W4",
    "parentNo": 9182741541,
    "studentNo": 9618073574,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097247/CSE21Batch/CSE21BatchFSection/q7w8e9r0t1y2u3i4o5p6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NALLAMOTHU TEJASWINI",
    "rollNo": "21471A05W5",
    "parentNo": 9494235227,
    "studentNo": 9494235227,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097247/CSE21Batch/CSE21BatchFSection/x8c9v0b1n2m3l4k5j6h7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PASALA BALA VEERA SAINADH",
    "rollNo": "21471A05W6",
    "parentNo": 9441113061,
    "studentNo": 9398864010,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097247/CSE21Batch/CSE21BatchFSection/e9r0t1y2u3i4o5p6q7w8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PASAM PAVANI",
    "rollNo": "21471A05W7",
    "parentNo": 9494056254,
    "studentNo": 9948281137,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097247/CSE21Batch/CSE21BatchFSection/f0g1h2j3k4l5m6n7b8v9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PATNALA MOUNIKA",
    "rollNo": "21471A05W8",
    "parentNo": 9959648604,
    "studentNo": 7995133379,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097246/CSE21Batch/CSE21BatchFSection/z1x2c3v4b5n6m7l8k9j0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "POLA SAHITHI",
    "rollNo": "21471A05W9",
    "parentNo": 9493774844,
    "studentNo": 7075727040,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097246/CSE21Batch/CSE21BatchFSection/a2s3d4f5g6h7j8k9l0m1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "POTLURI SRINIVASA REDDY",
    "rollNo": "21471A05X0",
    "parentNo": 9948512530,
    "studentNo": 8074697960,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097246/CSE21Batch/CSE21BatchFSection/q3w4e5r6t7y8u9i0o1p2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PULAKANDAM LIKHITHA",
    "rollNo": "21471A05X1",
    "parentNo": 9666068694,
    "studentNo": 9398864010,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097246/CSE21Batch/CSE21BatchFSection/x4c5v6b7n8m9l0k1j2h3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAINATH REDDY DANDU",
    "rollNo": "21471A05X2",
    "parentNo": 8919615599,
    "studentNo": 8074987042,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097245/CSE21Batch/CSE21BatchFSection/e5r6t7y8u9i0o1p2q3w4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK GULZAR",
    "rollNo": "21471A05X3",
    "parentNo": 9494347423,
    "studentNo": 9347572709,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097245/CSE21Batch/CSE21BatchFSection/f6g7h8j9k0l1m2n3b4v5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK NAZIR",
    "rollNo": "21471A05X4",
    "parentNo": 9866804211,
    "studentNo": 9398038753,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097245/CSE21Batch/CSE21BatchFSection/z7x8c9v0b1n2m3l4k5j6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SAIDA",
    "rollNo": "21471A05X5",
    "parentNo": 9963498877,
    "studentNo": 7995133379,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097245/CSE21Batch/CSE21BatchFSection/a8s9d0f1g2h3j4k5l6m7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "THUMMALA DURGA PRASAD REDDY",
    "rollNo": "21471A05X6",
    "parentNo": 9966804211,
    "studentNo": 9398038753,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097244/CSE21Batch/CSE21BatchFSection/q9w0e1r2t3y4u5i6o7p8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VADLAPUDI TEJA",
    "rollNo": "21471A05X7",
    "parentNo": 8106880295,
    "studentNo": 8919010260,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097244/CSE21Batch/CSE21BatchFSection/x0c1v2b3n4m5l6k7j8h9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VALLURU SOWMYA",
    "rollNo": "21471A05X8",
    "parentNo": 9494347423,
    "studentNo": 7013834629,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097244/CSE21Batch/CSE21BatchFSection/e1r2t3y4u5i6o7p8q9w0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VASA DURGA BHAVANI",
    "rollNo": "21471A05X9",
    "parentNo": 9492211910,
    "studentNo": 9398934571,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097244/CSE21Batch/CSE21BatchFSection/f2g3h4j5k6l7m8n9b0v1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VELPULA TEJASWINI",
    "rollNo": "21471A05Y0",
    "parentNo": 9441221760,
    "studentNo": 7893817112,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097243/CSE21Batch/CSE21BatchFSection/z3x4c5v6b7n8m9l0k1j2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YEDDULA KUSUMA",
    "rollNo": "21471A05Y1",
    "parentNo": 9963279172,
    "studentNo": 7702351758,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097243/CSE21Batch/CSE21BatchFSection/a4s5d6f7g8h9j0k1l2m3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ALLU SRIYA",
    "rollNo": "21471A05Y2",
    "parentNo": 9492466433,
    "studentNo": 9676612392,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097282/CSE21Batch/CSE21BatchGSection/q5w6e7r8t9y0u1i2o3p4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ANUMOLU HARIKA",
    "rollNo": "21471A05Y3",
    "parentNo": 8186864522,
    "studentNo": 8186864522,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097282/CSE21Batch/CSE21BatchGSection/x6c7v8b9n0m1l2k3j4h5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ANUMULA NAGA SAI",
    "rollNo": "21471A05Y4",
    "parentNo": 9948836398,
    "studentNo": 9392610694,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097282/CSE21Batch/CSE21BatchGSection/e7r8t9y0u1i2o3p4q5w6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "ARVA SAINADH REDDY",
    "rollNo": "21471A05Y5",
    "parentNo": 8499098680,
    "studentNo": 9347155061,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097281/CSE21Batch/CSE21BatchGSection/f8g9h0j1k2l3m4n5b6v7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BALAGANI JAHNAVI",
    "rollNo": "21471A05Y6",
    "parentNo": 9704431908,
    "studentNo": 9704735905,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097281/CSE21Batch/CSE21BatchGSection/z9x0c1v2b3n4m5l6k7j8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BANDARU MANIDEEP",
    "rollNo": "21471A05Y7",
    "parentNo": 9440016399,
    "studentNo": 7780660803,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097281/CSE21Batch/CSE21BatchGSection/a0s1d2f3g4h5j6k7l8m9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BODDU SAI PRAVEEN KUMAR",
    "rollNo": "21471A05Y8",
    "parentNo": 9866804211,
    "studentNo": 9618052761,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097281/CSE21Batch/CSE21BatchGSection/q1w2e3r4t5y6u7i8o9p0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOLLINENI NAVYA",
    "rollNo": "21471A05Y9",
    "parentNo": 9989770670,
    "studentNo": 7780470095,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097280/CSE21Batch/CSE21BatchGSection/x2c3v4b5n6m7l8k9j0h1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "BOPPANA SWETHA",
    "rollNo": "21471A05Z0",
    "parentNo": 9490859769,
    "studentNo": 8179473485,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097280/CSE21Batch/CSE21BatchGSection/e3r4t5y6u7i8o9p0q1w2.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "CHALLA TEJASWINI",
    "rollNo": "21471A05Z1",
    "parentNo": 7702471949,
    "studentNo": 9398187082,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097280/CSE21Batch/CSE21BatchGSection/f4g5h6j7k8l9m0n1b2v3.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "DARAPUREDDY SWAPNA",
    "rollNo": "21471A05Z2",
    "parentNo": 8143228982,
    "studentNo": 8341295342,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097280/CSE21Batch/CSE21BatchGSection/z5x6c7v8b9n0m1l2k3j4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GADDAM SAI KRISHNA REDDY",
    "rollNo": "21471A05Z3",
    "parentNo": 9494045249,
    "studentNo": 8919514259,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097279/CSE21Batch/CSE21BatchGSection/a6s7d8f9g0h1j2k3l4m5.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "GUNDU NAGAMANI",
    "rollNo": "21471A05Z4",
    "parentNo": 9704831601,
    "studentNo": 7793941601,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097279/CSE21Batch/CSE21BatchGSection/q7w8e9r0t1y2u3i4o5p6.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "JARUGULLA VENKATA ESWAR SAI",
    "rollNo": "21471A05Z5",
    "parentNo": 9553225903,
    "studentNo": 7569060153,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097279/CSE21Batch/CSE21BatchGSection/x8c9v0b1n2m3l4k5j6h7.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KAMBHAMPATI DEVI SRI",
    "rollNo": "21471A05Z6",
    "parentNo": 9515434462,
    "studentNo": 8121466114,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097279/CSE21Batch/CSE21BatchGSection/e9r0t1y2u3i4o5p6q7w8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KANIGIRI HARIKA",
    "rollNo": "21471A05Z7",
    "parentNo": 9849201092,
    "studentNo": 9849201092,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097278/CSE21Batch/CSE21BatchGSection/f0g1h2j3k4l5m6n7b8v9.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOLA SRIKANTH REDDY",
    "rollNo": "21471A05Z8",
    "parentNo": 8897131555,
    "studentNo": 7794951864,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097278/CSE21Batch/CSE21BatchGSection/z1x2c3v4b5n6m7l8k9j0.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOMALI SAI KUMAR",
    "rollNo": "21471A05Z9",
    "parentNo": 8886988170,
    "studentNo": 8247391167,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097278/CSE21Batch/CSE21BatchGSection/a2s3d4f5g6h7j8k9l0m1.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTHA SRI SNEHA",
    "rollNo": "21471A0501",
    "parentNo": 957303152,
    "studentNo": 7675859516,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097112/CSE21Batch/CSE21BatchASection/slcfiqgxaebp7ut75jlx.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTA SUMANTH KUMAR REDDY",
    "rollNo": "21471A0502",
    "parentNo": 6309261715,
    "studentNo": 8688927285,
    "imageUrl": "",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "KOTHA VARSHITHA",
    "rollNo": "21471A0503",
    "parentNo": 6304431436,
    "studentNo": 6303186622,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097104/CSE21Batch/CSE21BatchASection/qbs03hy2e9a71vud7oxe.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "LOKAM SREE LEKHA",
    "rollNo": "21471A0504",
    "parentNo": 9989276796,
    "studentNo": 7093760074,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097112/CSE21Batch/CSE21BatchASection/s8btluzv4tlgbyycr8ef.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANGALA MANVITHA",
    "rollNo": "21471A0505",
    "parentNo": 9849484852,
    "studentNo": 7207909030,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097112/CSE21Batch/CSE21BatchASection/y1dqlfotbhtksjryqya2.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MADDINENI BHAVYA SREE",
    "rollNo": "21471A0507",
    "parentNo": 9032172458,
    "studentNo": 7981634940,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/daeu0jxxzdvwh3thty4v.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MEKALA PRUDHVI",
    "rollNo": "21471A0508",
    "parentNo": 7013777307,
    "studentNo": 7013777307,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/mfzx81lxytmabkw9cgyc.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANDAPATI KEERTHANA",
    "rollNo": "21471A0509",
    "parentNo": 7995611388,
    "studentNo": 7032212364,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/ztv8c4mxkvjrkahli74a.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MADDALI MANI CHANDANA",
    "rollNo": "21471A0510",
    "parentNo": 9885824193,
    "studentNo": 8008482356,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/cqo9asn4lstkl9dbuax0.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MODUGU SRI CHAKRA",
    "rollNo": "21471A0511",
    "parentNo": 9618347388,
    "studentNo": 7997472931,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/m0dzwdbvfg1p9cv9rlew.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MOHAMMAD MUJAHID",
    "rollNo": "21471A0512",
    "parentNo": 8374682676,
    "studentNo": 8247626375,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097099/CSE21Batch/CSE21BatchASection/gfbi0zwbrvf1qz9sdmx4.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MOHAMMAD UMMER",
    "rollNo": "21471A0513",
    "parentNo": 9494347423,
    "studentNo": 7780543823,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/ou9ynwmxw8fbl25wftu8.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NAGAM SRI HARSHINI",
    "rollNo": "21471A0514",
    "parentNo": 7177377637,
    "studentNo": 9059907192,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/eayeqjnzk2f27bmuefil.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "NANDYALA LOKESH CHOWDARY",
    "rollNo": "21471A0515",
    "parentNo": 7842486859,
    "studentNo": 9160737429,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097098/CSE21Batch/CSE21BatchASection/ezi0lf036lyvzr8wpu0y.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PALLEWADA PAVAN SRI SAI",
    "rollNo": "21471A0516",
    "parentNo": 9972611929,
    "studentNo": 7993974512,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/wvshf9pginru5kenqkdq.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PAMULAPATI SAHITHYA",
    "rollNo": "21471A0517",
    "parentNo": 7672083403,
    "studentNo": 8328018517,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097111/CSE21Batch/CSE21BatchASection/ikag0dd8jvtjfxbvpq23.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "PULAKANDAM LIKHITHA",
    "rollNo": "21471A0518",
    "parentNo": 9989233568,
    "studentNo": 9989233568,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/wg68igpevp8rw1mufc4c.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "RAMINENI SIVA BHAVANI",
    "rollNo": "21471A0519",
    "parentNo": 9030316792,
    "studentNo": 9989113288,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/jafbnm8u9otn1qvrd7dk.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAINATH REDDY DANDU",
    "rollNo": "21471A0520",
    "parentNo": 9182342432,
    "studentNo": 8247433353,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/xdixaew81lzik1fqkfqf.jpg",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAI NAVEEN KUMAR KUNCHALA",
    "rollNo": "21471A0521",
    "parentNo": 9515055642,
    "studentNo": 9182233993,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/ents9drqsvpk6eqiofji.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAI SUMANTH DUBBAKA",
    "rollNo": "21471A0522",
    "parentNo": 9030137688,
    "studentNo": 9398763937,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/vcm5r1nxhq0lndxnbdrn.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SAKHINETI HIMA VARSHINI",
    "rollNo": "21471A0523",
    "parentNo": 9949260659,
    "studentNo": 6305617587,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/l6cgoxvotcb02p46prbz.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK MOHAMMAD IMRAN",
    "rollNo": "21471A0524",
    "parentNo": 8106607586,
    "studentNo": 6305409482,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/s7fipz5uekkflfkzjxjc.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SALAHUDDIN",
    "rollNo": "21471A0525",
    "parentNo": 6301673547,
    "studentNo": 8977443549,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097110/CSE21Batch/CSE21BatchASection/w5xcaax8t4jalrwx7o3i.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "SHAIK SAMREEN",
    "rollNo": "21471A0526",
    "parentNo": 9440452700,
    "studentNo": 9573369415,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/o9yjd14zei0glifuucvs.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "TELUGU SAI AKASH",
    "rollNo": "21471A0527",
    "parentNo": 9949499675,
    "studentNo": 7207241584,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/wqym55pfl4weaazxewfc.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VADLAPUDI TEJA",
    "rollNo": "21471A0528",
    "parentNo": 8185907282,
    "studentNo": 8185907282,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/vbsnaejsacns5ndwxgge.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VAKAPALLI ANITHA",
    "rollNo": "21471A0529",
    "parentNo": 9849439581,
    "studentNo": 7702024231,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/qvfsfnpoj8cmgkkwjjql.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VARIGONDA PRAKASH",
    "rollNo": "21471A0530",
    "parentNo": 9492901193,
    "studentNo": 9347473037,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/i39x2t70kljxeeav5mpt.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VAKKALAGADDA VAISHNAVI",
    "rollNo": "21471A0531",
    "parentNo": 9949364817,
    "studentNo": 9676598569,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/cg15ievq8vv1vgtzarli.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VALLURU SOWMYA",
    "rollNo": "21471A0532",
    "parentNo": 9346897277,
    "studentNo": 9346897227,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097109/CSE21Batch/CSE21BatchASection/cbpatvm2bj0axhf2dhtd.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "VEDULLAPALLI VAMSI",
    "rollNo": "21471A0533",
    "parentNo": 8125435154,
    "studentNo": 8897068361,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/y9ldqtvdsa7boji67oxi.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YENUMULA MAHESH REDDY",
    "rollNo": "21471A0534",
    "parentNo": 9666552265,
    "studentNo": 9849322656,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/jjnyokt8wy2lkxxdbgv8.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YERRA ANJANEYULU",
    "rollNo": "21471A0535",
    "parentNo": 9030755740,
    "studentNo": 8919478774,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/vmwoc53vpaskrljedb4w.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "YOKOLLA PRUDHVI",
    "rollNo": "21471A0537",
    "parentNo": 7286044867,
    "studentNo": 7286044867,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/mwvkvllknrnofoltnmyq.png",
    "department": "CSE",
    "batch": "2021"
  },
  {
    "name": "MANGAMURU SRIKANTH",
    "rollNo": "21471A0538",
    "parentNo": 9963279172,
    "studentNo": 7702351758,
    "imageUrl": "https://res.cloudinary.com/dfl09yw03/image/upload/v1723097108/CSE21Batch/CSE21BatchASection/znrh56xkulbbsw2wxnol.png",
    "department": "CSE",
    "batch": "2021"
  }
];
