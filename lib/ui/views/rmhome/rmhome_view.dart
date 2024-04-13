import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rammandir2/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'rmhome_viewmodel.dart';

class RmhomeView extends StackedView<RmhomeViewModel> {
  const RmhomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RmhomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(125, 244, 195, 48),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 196, 48),
        title: Text(
          'जय श्री राम',
          style: GoogleFonts.yatraOne(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
          child: Column(
            children: [
              verticalSpaceSmall,
              Text(
                'All Chapters:',
                style: GoogleFonts.josefinSans(fontWeight: FontWeight.bold),
              ),
              verticalSpaceSmall,
              _buildPSummary(),
              verticalSpaceSmall,
              Text(
                'History:',
                style: GoogleFonts.josefinSans(fontWeight: FontWeight.bold),
              ),
              verticalSpaceSmall,
              _buildAncientHistory(),
              verticalSpaceSmall,
              _buildModernHistory(),
              verticalSpaceSmall,
              Text(
                'Architecture:',
                style: GoogleFonts.josefinSans(fontWeight: FontWeight.bold),
              ),
              verticalSpaceSmall,
              _buildArchitecture(),
              verticalSpaceSmall,
              Text(
                'Construction:',
                style: GoogleFonts.josefinSans(fontWeight: FontWeight.bold),
              ),
              verticalSpaceSmall,
              _buildConstruction(),
              verticalSpaceSmall,
              _buildConstruction2(),
              verticalSpaceSmall,
              Text(
                'Controversies:',
                style: GoogleFonts.josefinSans(fontWeight: FontWeight.bold),
              ),
              verticalSpaceSmall,
              _buildControversies1(),
              verticalSpaceSmall,
              _buildControversies2(),
              verticalSpaceSmall,
              _buildControversies3(),
              verticalSpaceSmall,
              _buildControversies4(),
              verticalSpaceSmall,
              _buildControversies5(),
              verticalSpaceSmall,
            ],
          ),
        ),
      ),
    );
  }

  @override
  RmhomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RmhomeViewModel();
}

Widget _buildPSummary() {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: ExpansionTile(
        title: Text(
          'Summary',
          style: GoogleFonts.josefinSans(),
        ),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://static.theprint.in/wp-content/uploads/2023/12/Ram-Temple.jpg'),
                          fit: BoxFit.cover)),
                ),
                verticalSpaceSmall,
                Text(
                  'The Ram Mandir is a Hindu temple under construction in Ayodhya, Uttar Pradesh, India. It is located at the site of Ram Janmabhoomi, the hypothesized birthplace of Rama, a principal deity of Hinduism.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'The site is the former location of the Babri Masjid which was built in 16th century CE after the demolition of an existing non-Islamic structure. The idols of Rama and Sita were placed in the mosque in 1949, before it was attacked and demolished in 1992.In 2019, the Supreme Court of India delivered the verdict to give the disputed land to Hindus for construction of a temple, while Muslims would be given land elsewhere to construct a mosque.The court referenced a report from the Archaeological Survey of India (ASI) as evidence suggesting the presence of a structure beneath the demolished Babri Masjid, that was found to be non-Islamic.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'The bhumi pujan (transl. ground breaking ceremony) for the commencement of the construction of Ram Mandir was performed on 5 August 2020, by Prime Minister Narendra Modi.The temple, currently under construction, is being supervised by the Shri Ram Janmabhoomi Teerth Kshetra Trust. The inauguration of the temple is scheduled for 22 January 2024.',
                  style: GoogleFonts.josefinSans(),
                )
              ],
            ),
          ),
        ]),
  );
}

Widget _buildAncientHistory() {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: ExpansionTile(
        title: Text(
          'Ancient and Medieval',
          style: GoogleFonts.josefinSans(),
        ),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIeEvoMVDs4lpXwccWOJ2nxVYAsFGynkafZw'),
                          fit: BoxFit.cover)),
                ),
                verticalSpaceSmall,
                Text(
                  'Rama, an incarnation of Vishnu, is a Hindu deity. According to the ancient Indian epic, Ramayana, Rama was born in Ayodhya.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'In the 16th century, the temple was attacked and destroyed by Babur in his series of temple raids across northern India. Later, the Mughals constructed a mosque, the Babri Masjid, which is believed to be the site of the Ram Janmabhoomi, the birthplace of Rama. The earliest record of the mosque may be traced back to 1767, in the Latin book Descriptio Indiae, authored by the Jesuit missionary Joseph Tiefenthaler. According to him, the mosque was constructed by destroying the Ramkot temple, believed to be the fortress of Rama in Ayodhya, and the Bedi, where the birthplace of Rama is situated.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'The first instance of religious violence was documented in 1853. In December 1858, the British administration prohibited Hindus from conducting puja (rituals) at the contested site. A platform was created for conducting rituals outside the mosque',
                  style: GoogleFonts.josefinSans(),
                )
              ],
            ),
          ),
        ]),
  );
}

Widget _buildModernHistory() {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: ExpansionTile(
        title: Text(
          'Modern',
          style: GoogleFonts.josefinSans(),
        ),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://swarajya.gumlet.io/swarajya/2020-08/bfc54327-1c31-4480-9e5b-fe589faff092/EekLzZ4UMAACUH5.jpg?w=640&q=75&auto=format,compress&format=webp'),
                          fit: BoxFit.cover)),
                ),
                verticalSpaceSmall,
                Text(
                  'The murtis (transl. sacred images) of Rama and Sita were installed inside the Babri Masjid on the night of 22–23 December 1949 and the devotees began to gather from the next day.[8][25] By 1950, the state took control of the mosque under section 145 CrPC and allowed Hindus, not Muslims, to perform their worship at the site.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'In the 1980s, the Vishwa Hindu Parishad (VHP), belonging to the Hindu nationalist family, Sangh Parivar, launched a new movement to reclaim the site for Hindus and to erect a temple dedicated to the infant Rama (Ram Lalla) at this spot. The VHP began to collect funds and bricks with "Jai Shri Ram" written on them. Later, the government under Prime Minister Rajiv Gandhi gave the VHP permission for Shilanyas (transl. the foundation stone ceremony) to proceed, with the then Home Minister, Buta Singh, formally conveying the permission to the VHP leader, Ashok Singhal. Initially, the Government of India and Government of Uttar Pradesh had agreed that the shilanyas would be conducted outside of the disputed site. However, on 9 November 1989, a group of VHP leaders and Sadhus laid the foundation stone by digging a 200-litre (7-cubic-foot) pit adjacent to the disputed land. The singhdwar (transl. main entrance) of the sanctum sanctorum was constructed there. The VHP then laid the foundations of a temple on the land adjacent to the disputed mosque. On 6 December 1992, the VHP and the Bharatiya Janata Party organised a rally at the site involving 150,000 volunteers, known as karsevaks. The rally turned violent, the crowd overwhelmed the security forces and tore down the mosque.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'On 5 July 2005, five terrorists attacked the makeshift Ram temple at the site of the destroyed Babri Masjid in Ayodhya. All five were shot dead in the ensuing encounter with the Central Reserve Police Force (CRPF), while one civilian died in the grenade attack that the attackers launched to breach the cordoned wall. The CRPF suffered three casualties, two of whom were seriously injured with multiple gunshot wounds.',
                  style: GoogleFonts.josefinSans(),
                )
              ],
            ),
          ),
        ]),
  );
}

Widget _buildArchitecture() {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: ExpansionTile(
        title: Text(
          'Deity',
          style: GoogleFonts.josefinSans(),
        ),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://swarajya.gumlet.io/swarajya/2020-08/bfc54327-1c31-4480-9e5b-fe589faff092/EekLzZ4UMAACUH5.jpg?w=640&q=75&auto=format,compress&format=webp'),
                          fit: BoxFit.cover)),
                ),
                verticalSpaceSmall,
                Text(
                  'The original design for Ram Mandir was devised in 1988 by the Sompura family of Ahmedabad. The Sompuras have contributed to the design of over 100 temples worldwide for at least 15 generations, including the Somnath temple.The chief architect of the temple was Chandrakant Sompura, assisted by his two sons, Nikhil Sompura and Ashish Sompura, who are also architects.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'The construction work will be accomplished with 600,000 cu ft (17,000 m3) of sandstone from Baansi in Rajasthan. There will be no use of iron in the construction of the temple, and the fusing of the stone blocks will require ten thousand copper plates. In a culturally significant move, Thailand is also symbolically contributing to the inauguration of the Ram Mandir, by sending soil to the Ram Janmabhoomi, building on their prior gesture of sending water from two rivers in Thailand to honour the temple.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'Ram Lalla Virajman, the infant form of Rama, an avatar of Vishnu, is the presiding deity of the temple.Ram Lallas dress was stitched by tailors Bhagwat Prasad and Shankar Lal, a fourth generation tailor to Ramas idol.Ram Lalla was a litigant in the court case over the disputed site in 1989, being considered a "juristic person" by the law.He was represented by Triloki Nath Pandey, a senior VHP leader who was considered Ram Lallas closest human friend. According to the temple trust, the final blueprint includes temples dedicated to Surya, Ganesha, Shiva, Durga, Vishnu and Brahma in the temple grounds.Two idols of Ram Lalla (one of them being 5 years old) will be placed in the sanctum of the temple.',
                  style: GoogleFonts.josefinSans(),
                )
              ],
            ),
          ),
        ]),
  );
}

Widget _buildConstruction() {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: ExpansionTile(
        title: Text(
          'Bhumi Pujan ceremony',
          style: GoogleFonts.josefinSans(),
        ),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://ichef.bbci.co.uk/news/800/cpsprodpb/13D82/production/_113828218_8e0ff55c-e5c7-4cd9-a061-9fa9b213a65a.jpg'),
                          fit: BoxFit.cover)),
                ),
                verticalSpaceSmall,
                Text(
                  'The temple construction officially started again after a Bhumi-Pujan (transl. ground breaking ceremony) on 5 August 2020. The three-day long Vedic ritual was held ahead of the groundbreaking ceremony, which revolved around the installation of a 40 kg (88 pounds) silver brick as the foundation stone by Prime Minister Narendra Modi.[2] On the day before on 4 August, the Ramarchan Puja (transl. Puja of Shri Rams feet) was performed, in order to invite all the major deities into the temple.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'On the occasion of the Bhoomi Poojan, soil and holy water were collected from several religious places across India, such as the Triveni Sangam of the rivers Ganga, Yamuna, and Saraswati at Prayagraj, as well as the Kaveri river in its orgin at Talakaveri in Karnataka and the Kamakhya Temple in Assam.Soil was also sent from various Hindu temples, Gurudwaras and Jain temples across the nation, as well as from the four pilgrimage locations of Char Dham, to bless the temple.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'On 5 August, Prime Minister Narendra Modi offered prayers at the Hanuman Garhi Temple in Ayodhya to seek blessings of Lord Hanuman for the days events.The groundbreaking ceremony of Ram Mandir took place following this. The Chief Minister of Uttar Pradesh, Yogi Adityanath, Chief of Rashtriya Swayamsevak Sangh (RSS), Mohan Bhagwat, Chief of the Ram Janmabhoomi Nyas and Shri Ram Janmabhoomi Teerth Kshetra, Nritya Gopal Das and PM Narendra Modi gave speeches',
                  style: GoogleFonts.josefinSans(),
                )
              ],
            ),
          ),
        ]),
  );
}

Widget _buildConstruction2() {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: ExpansionTile(
        title: Text(
          '2021–present',
          style: GoogleFonts.josefinSans(),
        ),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://ichef.bbci.co.uk/news/800/cpsprodpb/13D82/production/_113828218_8e0ff55c-e5c7-4cd9-a061-9fa9b213a65a.jpg'),
                          fit: BoxFit.cover)),
                ),
                verticalSpaceSmall,
                Text(
                  'The temple trust decided to launch a nationwide "mass contact and contribution campaign" aimed at reaching 55–600 million people. Voluntary donations of ₹1 (1.3¢ US) and higher were accepted. On 1 January 2021, former President Ram Nath Kovind made the first contribution towards the construction of the Ram Mandir by donating more than ₹5 lakh (US\$6,300). Several leaders and notable personalities across the nation followed this. By April 2021, around ₹5,000 crore (US630 million) was collected from donations across India.Nearly 150,000 VHP activists participated in collecting donations. The temple trust also received donations from the members of the Muslim and Christian communities.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'In August 2021, a viewing location was created for the public to observe the construction works in the temple site. Following the groundbreaking ceremony, up to 40 feet (12 m) of debris were removed and the remaining earth compacted.The foundation was made using roller-compacted concrete. A total of 47–48 layers, each layer one foot high, were completed by mid-September 2021. Due to electricity supply issues in Mirzapur, the cutting of the sandstone was slowed down. In the beginning of 2022, a video was released by the temple trust, showing the planned construction of the temple in 3D along with other related information.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'In January 2023, two 60 million-year-old Shaligram rocks, 26 tonnes and 14 tonnes respectively, were sent from the Gandaki river in Nepal. These rocks were used to carve the idol of Ram Lalla in the sanctum sanctorum. As of May 2023, according to the Shri Ram Janmabhoomi Teerth Kshetra Trust, 70% of the groundwork had been completed and 40% of the roof work had been completed. As of December 2023, the entire base, along with the six smaller temples that will surround the main temple, which consists the sanctum sanctorum, are almost completed and is on track to be completed by 22 January 2024',
                  style: GoogleFonts.josefinSans(),
                )
              ],
            ),
          ),
        ]),
  );
}

Widget _buildControversies1() {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: ExpansionTile(
        title: Text(
          'Alleged donation scam',
          style: GoogleFonts.josefinSans(),
        ),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIeEvoMVDs4lpXwccWOJ2nxVYAsFGynkafZw'),
                          fit: BoxFit.cover)),
                ),
                verticalSpaceSmall,
                Text(
                  'In 2015, Hindu Mahasabha, among the leading organisation involved in the Ram Mandir issue, alleged BJP affiliate Vishwa Hindu Parishad (VHP) of carrying out donation scam of over ₹1,400 crore (US\$180 million) over the construction of the temple. VHP has denied this allegation',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'IIn 2019, Nirmohi Akhara accused VHP of carrying out ₹1,400 crore (US\$180 million) scam over the temple. Former Chief Ministers of Karnataka, H. D. Kumaraswamy and Siddaramaiah, the current Chief Minister of Karnataka, strongly questioned the methods of fund collection. After failing to raise the desired amount, the headmistress of Rashtriya Swayamsevak Sangh school experienced bullying, and was subsequently suspended',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
              ],
            ),
          ),
        ]),
  );
}

Widget _buildControversies2() {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: ExpansionTile(
        title: Text(
          'Sidelining of the major activists',
          style: GoogleFonts.josefinSans(),
        ),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIeEvoMVDs4lpXwccWOJ2nxVYAsFGynkafZw'),
                          fit: BoxFit.cover)),
                ),
                verticalSpaceSmall,
                Text(
                  'In 2017, Hindu Mahasabha criticised BJP, Bajrang Dal and other Sangh Parivar organisations for hijacking the Ram Mandir despite having no involvement in its long battle.National vice-president of Hindu Mahasabha, Pandit Ashok Sharma added that his organisation pursued the fight but it was "later hijacked by BJP and its other saffron affiliates"',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'In 2020, Pramod Joshi, national spokesperson of Hindu Mahasabha, said that the real credit of Ram Mandir belongs to Hindu Mahasabha but "Hindu Mahasabha has been kept away from the bhoomi pujan of the Ram temple and in reality, we should have performed the bhoomi pujan of the temple". He added that the committee for the temple was formed at the BJP\'s central office and Hindu Mahasabha was sidelined',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
              ],
            ),
          ),
        ]),
  );
}

Widget _buildControversies3() {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: ExpansionTile(
        title: Text(
          'Temple\'s construction',
          style: GoogleFonts.josefinSans(),
        ),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIeEvoMVDs4lpXwccWOJ2nxVYAsFGynkafZw'),
                          fit: BoxFit.cover)),
                ),
                verticalSpaceSmall,
                Text(
                  'A number of Hindutva proponents including online social media influencers, have raised objection over the temple\'s construction with regards to its design and involvement of the Muslims. They find Islamic motifs in the Ram Mandir. Champat Rai, the general secretary of the Ram Mandir trust, responded to these concerns by saying that temple is being sculpted by the experts and there could be no question about their religion.',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
              ],
            ),
          ),
        ]),
  );
}

Widget _buildControversies4() {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: ExpansionTile(
        title: Text(
          'Politicisation of the temple',
          style: GoogleFonts.josefinSans(),
        ),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIeEvoMVDs4lpXwccWOJ2nxVYAsFGynkafZw'),
                          fit: BoxFit.cover)),
                ),
                verticalSpaceSmall,
                Text(
                  'In 2020, Nirmohi Akhara national spokesperson Mahant Sitaram Das criticised the BJP\'s decision to lay the foundation of the temple by Narendra Modi and said that the work of the temple should be done only by the religious priests.[18] Hindu Mahasabha National vice-president Pandit Ashok Sharma said that the BJP "got the entire thing politicised"',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'A number of opposition parties as well as BJP members have criticised the BJP for politicising the temple and using it for gaining political mileage.Congress President Mallikarjun Kharge had questioned the authority of Home Minister Amit Shah after he declared the opening date of the temple. BJP leader Subramanian Swamy questioned Modi\'s involvement in Ram Mandir\'s inauguration. Congress MP Shashi Tharoor has criticised the Indian media for diverting attention from critical governance issues by overly focusing on the temple.',
                  style: GoogleFonts.josefinSans(),
                ),
              ],
            ),
          ),
        ]),
  );
}

Widget _buildControversies5() {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: ExpansionTile(
        title: Text(
          'Reactions to Bhumi-pujan ceremony',
          style: GoogleFonts.josefinSans(),
        ),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIeEvoMVDs4lpXwccWOJ2nxVYAsFGynkafZw'),
                          fit: BoxFit.cover)),
                ),
                verticalSpaceSmall,
                Text(
                  'Some priests and religious leaders such as Swaroopanand Saraswati complained stated that the 5 August was not a ritually auspicious date. They also complained that the ceremony did not follow proper ritual procedures. They also and that the function did not include a havan.In this respect, writer and activist Arundhati Roy, a noted critic of PM Modi, pointed out that the chosen date marked one year since the revocation of the special status of Jammu and Kashmir.Pakistan made an official statement through its foreign office criticising India for commencing construction of the temple, due to the history of the site.[112] On the contrary, various Indian political leaders praised the groundbreaking ceremony',
                  style: GoogleFonts.josefinSans(),
                ),
                verticalSpaceTiny,
                Text(
                  'The four Shankaracharyas, the highest gurus of Advaita Vedanta, would not be part of the ceremony to inaugurate the Ram Temple.',
                  style: GoogleFonts.josefinSans(),
                ),
              ],
            ),
          ),
        ]),
  );
}
