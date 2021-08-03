import 'package:flutter/material.dart';
class TC extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Terms and Conditions"),
          backgroundColor: Colors.black,
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
              width: 40,
            ),
            Center(
              child: Text("Terms & Conditions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('1. Information Collection and Use while using our Service',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Text('We do not collect any personal identifying information. Any information stored on our systems, is stored anonymously and cannot be linked to any specific user.\n'
                  'In some cases, we may ask you to provide us with certain personally basic identifiable information that can be used only to contact or identify you.\n'
              'Our services essence is scanning various handwritings in order to convert them to text. We do not share these scans with any third party, and do not use them other than providing and improving the services or internal statistical purposes. In some cases we store scans in our servers for the sole purpose of improving the service. These scans cannot be linked to any specific user.\n'
              'We make our best endeavors to protect this information, and to disconnect it from any personal or identifiable attachments. '
                  'However, we cannot, and will not,be responsible for any unintentional disclosure of it. '
                  'You are required to review all information included in your handwritings before uploading it to the service. In order to comply with our policy, of not storing any personal information linked to specific user, you are requested not to scan any personal and/or sensitive and/or confidential and/or identifying information. '
                  'You hereby declare and agree that all the content of your scans on this Service upholds such terms. Since we cannot control or monitor the handwritings received by our system, we urge you not to upload any sensitive and/or personal and/or confidential information (of you or of others, and/or any other information that you do not want others to review or that is most likely that others will not want it to be revealed, and/or any information that harm others or infringe their rights. You hereby declare and agree that all the information you shall provide and/or upload on the Service upholds such terms.\n'),
            ) ,
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('2. Exception for European Union                                       ',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('In case  we will identify that a specific scan was received from a resident of the European Union we will not store this scan, even for the purpose of improving the Service, and even not anonymously.\n ',),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('3. Log Data                                                                            ',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('We may also receive information that your browser sends whenever you visit our Service or when you access the Service or when you access the Service by or through a mobile device ("Log Data"). '
                  "This Log Data may include information such as your computer's Internet Protocol('IP') address, browser type, browser version, the pages of our Service that you visit, the time spent on those pages and other statistics. "
                  "When you access the Service by or through a mobile device, this Log Data may include information such as the type of mobile device you use, your mobile device unique ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browser you use and other statistics. In addition, we may use third party services such as Google Analytics that collect, monitor and analyze this type of information in order to increase our Service's functionality and for our internal statistical use. "
                  "These third party services providers have their own privacy policies addressing how they use such information. We will not use or share this information with anyone except as described in this Privacy Policy.\n"),
            ) ,
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('4. Cookies or Data Files                                                                          ',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Cookies or data files are files with small amount of data, which may include an anonymous unique identifier. Cookies or data files are sent to your browser from a website and store on your computer's hard drive. We use cookies or data files for ongoing, proper operation of the Service, including the collection of statistical data on the use of the Service, verification of details "
                  ",customisation of the services to your personal preference and for information security purpose. "
                  "They are also used so that it won't be necessary for you to enter your details everytime you are revisiting parts of the Services which require registration. "
                  "You can instruct your browser to reuse all cookies or to indicate when a cookie is being sent. However you do not accept cookies, you may not be able to use some portion of our Service. "
                  "Some of the cookies or data files expire when you close the browser, while others are saved on your computer's hard disk or device memory.\n"),
            ) ,
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('5. Service Providers                                                                 ',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("We may employ third party companies and individuals to facilitate our Service, to provide the Service, to provide the Service on our behalf, to perform Service-related services or to assist us in "
                  "analysing how our service is used. These third parties have access to your scanned handwritings only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.\n"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('6. Compliance with Laws                                                                 ',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("We will disclose your Personal Information where required to do so by law or subpoena, or if we believe that such action is necessary to comply with the law "
                  "and the reasonable requests or law enforcement or to protect the security or integrity of our Service.\n"),
            ) ,
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('7. Security                                                                             ',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("The security of your Personal Information is important to us, and in order to maintain the confidentiality of the information provided by you when using the service,"
                  "we use advanced data encryption technologies. However, no method of transmission over the internet, or method of electronic storage is 100% secure. "
                  "While we strive to use commercially acceptable means to protect your personal Information, we cannot guarantee that our Service will be completely immune "
                  "to unauthorized access to the information on the Services.\n "),
            ) ,
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('8. Right to Review Information                                                                             ',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("You are allowed to review your personal information stored in our database (if any). If you find that information to be incorrect,"
                  "incomplete or not up-to-date, you may approach us and request that the information be corrected or deleted within 30 days. "
                  "In such a case, we will delete any personal information linked to you. We will continue to legally store information required for the purpose of ,managing our business, including "
                  "the documentation of commercial and other activities you performed in the Services, but this information will no longer be used for contacting you.\n"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('9. International Transfer                                                                             ',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Your information, including personal information, may be transferred to- and maintained on- computers located outside of your state, province, country, or other governmental jurisdiction where the data protection laws may differ from those from your jurisdiction. Please know that we transfer the information, including personal information, to our servers around the world (most likely in Israel or in the USA) and process it there. Your consent to this privacy policy followed by your submission of such information represents your agreement to that transfer.\n"),
              ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Text('10. Third Party Advertisements                                                                             ',style: TextStyle(fontWeight: FontWeight.bold),),
        ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("If any advertisements are shown in the service, then they are received from the computers of those companies. For the purpose of managing advertisements, these companies use cookies or other files with a unique identifier, which are included in the internet pages, and which are intended to assist the collection of information about the views and use of the services. The information collected is not used to personally identify you, but it is only intended to customize the advertisements you are shown in accordance with your fields of interest. The use of cookies and other files made by these companies is subject to their privacy policies, and not to this company's privacy policy. If you wish to review the privacy policies of Companies advertising on the services, you can do this through their websites or applications.\n"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text('11. Link to Other Sites                                                                             ',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Our service may contain links to other sites that are not operated by us. If you click on a third-party link, you will be directed to that third-party site. We strongly advise you to review the privacy policy of every site you visit. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.\n"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("12. Children's Privacy                                                                             ",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Our service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. If you are a parent or guardian and you are aware that your Children has provided us with personal information, please contact us. If we became aware that we have collected personal information from a child under age 13 without verification of parental consent, we take steps to remove that information from our servers.\n"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("13. Changes to this Privacy Policy                                                                             ",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("We may update our privacy policy from time to time. We will notify you of any changes by posting the new privacy policy on this page. You are advised to review this privacy policy periodically for any changes. Changes to this privacy policy are effective when they are posted on this page.\n"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("14. Contact Us                                                                             ",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("If you have any question about this Privacy Policy, please contact us at akshaygupta20021407@gmail.com\n\n\n\n\n\n\n\n\n\n"),
            ),
          ],
        ),
      ),
    );
  }
}
