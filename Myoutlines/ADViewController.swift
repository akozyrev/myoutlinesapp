//
//  ADViewController.swift
//  Myoutlines
//
//  Created by Maya Frai on 7/13/17.
//  Copyright © 2017 Maya Frai. All rights reserved.
//

import UIKit


class ADViewController: UIViewController, UITextViewDelegate {

    var cell: Cell!
    var infoText: UITextView!
    var thirdText: UITextView!
    var credText: UITextView!
    var privacyText: UITextView!
    var termsText: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
                
        view.backgroundColor = .white
        
        self.automaticallyAdjustsScrollViewInsets = false
        self.navigationController?.navigationBar.tintColor = UIColor(red: 78/255.0, green: 221/255.0, blue: 200/255.0, alpha: 1.0)


        self.title = cell.name
        addBodyText()
    }
        
    func addBodyText() {
        if (cell.name == "Info") {
            infoText = UITextView(frame: CGRect(x: 10, y: navigationController!.navigationBar.frame.maxY+10, width: view.frame.width-20, height: tabBarController!.tabBar.frame.minY-80))
            infoText.text = "Thank you for downloading my app!" + "\n" + "\n" + "For those of you who have used myoutlines.com before, thank you for continuing to support the site by using this app to study the material. I added more subjects based on popular demand to include material for AP Spanish, AP Stats, AP Economics, and AP Computer Science. Every semester, I will add more outlines and subjects to the app, so keep your eyes open for app store updates! This app is a thank you to both new and returning users. I wish you all the best of luck!" + "\n" + "\n" + "\n" + "\n" + "If you have any questions, comments, or need advice, feel free to email me at mfraioutlines@gmail.com."  + "\n" + "For more information, visit www.myoutlines.com" + "\n" + "\n" + "\n" + "Copyright © 2017 Maya Frai." + "\n" + "All rights reserved." + "\n" + "Version 1.0"
            infoText.textAlignment = .center
            infoText.font = UIFont(name: "Avenir-Medium", size: 15)
            infoText.textColor = .black
            infoText.textContainer.lineBreakMode = .byWordWrapping
            infoText.clipsToBounds = true
            infoText.showsVerticalScrollIndicator = true
            infoText.isScrollEnabled = true
            infoText.isEditable = false
            view.addSubview(infoText)
        }
        
        if (cell.name == "Third Party Software") {
            thirdText = UITextView(frame: CGRect(x: 10, y: navigationController!.navigationBar.frame.maxY+10, width: view.frame.width-20, height: tabBarController!.tabBar.frame.minY-80))
            thirdText.text = "This application uses Open Source components. You can find the source code of their open source projects along with license information below. I acknowledge and have great respect for these developers for their contributions to open source." + "\n" + "\n" + "DGElasticPullToRefresh" + "\n" + "Copyright (c) 2015 Danil Gontovnik" + "\n" + "The MIT License (MIT)" + "\n" + "\n" + "\n" + "RevealingSplashView" + "\n" + "Copyright (c) 2016 Chris Jimenez" + "\n" + "The MIT License (MIT)" + "\n" + "\n" + "\n" + "PMAlertController" + "\n" + "Copyright (c) 2016 Paolo Musolino" + "\n" + "The MIT License (MIT)" + "\n" + "\n" + "\n" + "SwipeCellKit" + "\n" + "Copyright (c) 2017 Jeremy Koch" + "\n" + "The MIT License (MIT)" + "\n"
            
            thirdText.textAlignment = .center
            thirdText.font = UIFont(name: "Avenir-Medium", size: 15)
            thirdText.textColor = .black
            thirdText.textContainer.lineBreakMode = .byWordWrapping
            thirdText.clipsToBounds = true
            thirdText.showsVerticalScrollIndicator = true
            thirdText.isScrollEnabled = true
            thirdText.isEditable = false
            view.addSubview(thirdText)
        }
        if (cell.name == "Credits") {
            credText = UITextView(frame: CGRect(x: 10, y: navigationController!.navigationBar.frame.maxY+10, width: view.frame.width-20, height: tabBarController!.tabBar.frame.minY-80))
            credText.text = "My outlines are all based on study guides, online resources, and textbooks. My outlines are provided as study material to help students learn dense topics covered in AP courses. A list of sources for my outlines and study guides are listed below." + "\n" + "\n" + "U.S. History:" + "\n" + "American History: Connecting with the Past by Alan Brinkley" + "\n" + "Princeton Review's APUSH Study Guide" + "\n" + "\n" + "Economics:" + "\n" + "Principles of Microeconomics by N. Gregory Mankiw" + "\n" + "Principles of Macroeconomics by N. Gregory Mankiw" + "\n" + "\n" + "Computer Science:" + "\n" + "Data Structures and Abstractions with Java (4th Edition) by Frank M. Carrano" + "\n" + "Think Python by Allen B. Downey" + "\n" + "Original teaching material by Cornell CS Faculty: D. Gries and W. White" + "\n" + "\n" + "European History:" + "\n" + "Giant EHAP Review Outline: www.historyteacher.net" + "\n" + "Susanna's Horace Greeley AP Euro Review" + "\n" + "Princeton Review's AP European Study Guide" + "\n" + "The Western Heritage 8th Edition by Donald Kagan" + "\n" + "\n" + "Biology:" + "\n" + "AP Edition Biology 7th Edition by Campbell and Reece" + "\n" + "Princeton Review's AP Biology Study Guide" + "\n" + "\n" + "Spanish:" + "\n" + "MAS by Ana María Pérez-Gironés" + "\n" + "Spanish exercises: http://studyspanish.com" + "\n" + "\n" + "Statistics:" + "\n" + "Essentials of Statistics by Mario F. Triola" + "\n" + "Icons:" + "\n" + "Many thanks to Icons8 and FlatIcon for app illustrations"
            credText.textAlignment = .center
            credText.font = UIFont(name: "Avenir-Medium", size: 15)
            credText.textColor = .black
            credText.textContainer.lineBreakMode = .byWordWrapping
            credText.clipsToBounds = true
            credText.showsVerticalScrollIndicator = true
            credText.isScrollEnabled = true
            credText.isEditable = false
            view.addSubview(credText)

        }
        
        if (cell.name == "Privacy Policy") {
            privacyText = UITextView(frame: CGRect(x: 10, y: navigationController!.navigationBar.frame.maxY+10, width: view.frame.width-20, height: tabBarController!.tabBar.frame.minY-80))
            privacyText.text = "Myoutlines Privacy Policy" + "\n" + "This privacy policy has been compiled to better serve those who are concerned with how their 'Personally Identifiable Information' (PII) is being used online. PII, as described in US privacy law and information security, is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. Please read our privacy policy carefully to get a clear understanding of how we collect, use, protect or otherwise handle your Personally Identifiable Information in accordance with our website." + "\n" + "What personal information do we collect from the people that visit our blog, website or app? We do not collect information from visitors of our site. or other details to help you with your experience." + "\n" + "When do we collect information? We collect information from you when you or enter information on our site. Provide us with feedback on our products or services Open the app" + "\n" + "How do we use your information? We may use the information we collect from you when you register, make a purchase, sign up for our newsletter, respond to a survey or marketing communication, surf the website, or use certain other site features in the following ways:" + "\n" + "• To improve our website in order to better serve you." + "\n" + "• To allow us to better service you in responding to your customer service requests." + "\n" + "How do we protect your information? We do not use vulnerability scanning and/or scanning to PCI standards. We use regular Malware Scanning. We do not use an SSL certificate" + "\n" + "• We only provide articles and information. We never ask for personal or private information like names, email addresses, or credit card numbers." + "\n" + "Do we use 'cookies'? We do not use cookies for tracking purposes You can choose to have your computer warn you each time a cookie is being sent, or you can choose to turn off all cookies. You do this through your browser settings. Since browser is a little different, look at your browser's Help Menu to learn the correct way to modify your cookies. If you turn cookies off, Some of the features that make your site experience more efficient may not function properly.that make your site experience more efficient and may not function properly." + "\n" + "Third-party disclosure: We do not sell, trade, or otherwise transfer to outside parties your Personally Identifiable Information." + "\n" + "Third-party links: We do not include or offer third-party products or services on our website." + "\n" + "Google: Google's advertising requirements can be summed up by Google's Advertising Principles. They are put in place to provide a positive experience for users. https://support.google.com/adwordspolicy/answer/1316548?hl=en. We use Google AdSense Advertising on our website. Google, as a third-party vendor, uses cookies to serve ads on our site. Google's use of the DART cookie enables it to serve ads to our users based on previous visits to our site and other sites on the Internet. Users may opt-out of the use of the DART cookie by visiting the Google Ad and Content Network privacy policy." + "\n" + "We have implemented the following:" + "\n" + "We, along with third-party vendors such as Google use first-party cookies (such as the Google Analytics cookies) and third-party cookies (such as the DoubleClick cookie) or other third-party identifiers together to compile data regarding user interactions with ad impressions and other ad service functions as they relate to our website." + "\n" + "Opting out:" + "\n" + "Users can set preferences for how Google advertises to you using the Google Ad Settings page. Alternatively, you can opt out by visiting the Network Advertising Initiative Opt Out page or by using the Google Analytics Opt Out Browser add on." + "\n" + "California Online Privacy Protection Act" + "\n" + "CalOPPA is the first state law in the nation to require commercial websites and online services to post a privacy policy. The law's reach stretches well beyond California to require any person or company in the United States (and conceivably the world) that operates websites collecting Personally Identifiable Information from California consumers to post a conspicuous privacy policy on its website stating exactly the information being collected and those individuals or companies with whom it is being shared. - See more at: http://consumercal.org/california-online-privacy-protection-act-caloppa/#sthash.0FdRbT51.dpuf" + "\n" + "According to CalOPPA, we agree to the following:" + "\n" + "Users can visit our site anonymously. Once this privacy policy is created, we will add a link to it on our home page or as a minimum, on the first significant page after entering our website. Our Privacy Policy link includes the word 'Privacy' and can easily be found on the page specified above." + "\n" + "You will be notified of any Privacy Policy changes:" + "\n" + "• On our Privacy Policy Page" + "\n" + "Can change your personal information:" + "\n" + "• By emailing us" + "\n" + "How does our site handle Do Not Track signals?" + "\n" + "We honor Do Not Track signals and Do Not Track, plant cookies, or use advertising when a Do Not Track (DNT) browser mechanism is in place." + "\n" + "Does our site allow third-party behavioral tracking. It's also important to note that we do not allow third-party behavioral tracking" + "\n" + "COPPA (Children Online Privacy Protection Act)" + "\n" + "When it comes to the collection of personal information from children under the age of 13 years old, the Children's Online Privacy Protection Act (COPPA) puts parents in control. The Federal Trade Commission, United States' consumer protection agency, enforces the COPPA Rule, which spells out what operators of websites and online services must do to protect children's privacy and safety online." + "\n" + "We do not specifically market to children under the age of 13 years old. Do we let third-parties, including ad networks or plug-ins collect PII from children under 13?" + "\n" + "Fair Information Practices: The Fair Information Practices Principles form the backbone of privacy law in the United States and the concepts they include have played a significant role in the development of data protection laws around the globe. Understanding the Fair Information Practice Principles and how they should be implemented is critical to comply with the various privacy laws that protect personal information. In order to be in line with Fair Information Practices we will take the following responsive action, should a data breach occur:" + "\n" + "We will notify you via email" + "\n" + "• Within 1 business day" + "\n" + "We also agree to the Individual Redress Principle which requires that individuals have the right to legally pursue enforceable rights against data collectors and processors who fail to adhere to the law. This principle requires not only that individuals have enforceable rights against data users, but also that individuals have recourse to courts or government agencies to investigate and/or prosecute non-compliance by data processors." + "\n" + "CAN SPAM Act: The CAN-SPAM Act is a law that sets the rules for commercial email, establishes requirements for commercial messages, gives recipients the right to have emails stopped from being sent to them, and spells out tough penalties for violations." + "\n" + "We collect your email address in order to:" + "\n" + "To be in accordance with CANSPAM, we agree to the following:" + "\n" + "• Not use false or misleading subjects or email addresses." + "\n" + "• Identify the message as an advertisement in some reasonable way." + "\n" + "• Include the physical address of our business or site headquarters." + "\n" + "• Monitor third-party email marketing services for compliance, if one is used." + "\n" + "• Honor opt-out/unsubscribe requests quickly." + "\n" + "• Allow users to unsubscribe by using the link at the bottom of each email." + "\n" + "If at any time you would like to unsubscribe from receiving future emails, you can email us at mfraioutlines@gmail.com and we will promptly remove you from ALL correspondence." + "\n" + "\n" + "Contacting Us: If there are any questions regarding this privacy policy, you may contact us using the information below." + "\n" + "MyOutlines" + "\n" + "36 NE 1st Street, Miami Beach, FL 33132, USA" + "\n" + "mfraioutlines@gmail.com" + "\n" + "Last Edited on 2017-07-01"
            privacyText.textAlignment = .justified
            privacyText.font = UIFont(name: "Avenir-Medium", size: 15)
            privacyText.textColor = .black
            privacyText.textContainer.lineBreakMode = .byWordWrapping
            privacyText.clipsToBounds = true
            privacyText.showsVerticalScrollIndicator = true
            privacyText.isScrollEnabled = true
            privacyText.isEditable = false
            view.addSubview(privacyText)
        
        }
        
        if (cell.name == "Terms and Conditions") {
            termsText = UITextView(frame: CGRect(x: 10, y: navigationController!.navigationBar.frame.maxY+10, width: view.frame.width-20, height: tabBarController!.tabBar.frame.minY-80))
            termsText.text = "1. INTRODUCTION: Welcome to MyOutlines. This App is published by or on behalf of MyOutlines.com, a website registered in the United States. By downloading or otherwise accessing the App you agree to be bound by the following terms and conditions and our privacy policy. If you have any queries about the App or these Terms, you can contact Us by any of the means set out in paragraph 11 of these Terms. If you do not agree with these Terms, you should stop using the App immediately." + "\n" + "Note: My outlines are made to help you. Using them for cheating defeats the purpose. Use them to your advantage, not as a tool for copying and plagiarizing." + "\n" + "2. GENERAL RULES RELATING TO CONDUCT: The App is made available for your own, personal use. The App must not be used for any commercial purpose whatsoever or for any illegal or unauthorised purpose. When you use the App you must comply with all applicable US laws and with any applicable international laws, including the local laws in your country of residence (together referred to as “Applicable Laws”). You agree that when using the App you will comply with all Applicable Laws and these Terms. In particular, but without limitation, you agree not to:" + "\n" + "(a) Use the App in any unlawful manner or in a manner which promotes or encourages illegal activity including (without limitation) copyright infringement; or" + "\n" + "(b) Attempt to gain unauthorised access to the App or any networks, servers or computer systems connected to the App; or" + "\n" + "(c) Modify, adapt, translate or reverse engineer any part of the App or re-format or frame any portion of the pages comprising the App, save to the extent expressly permitted by these Terms or by law." + "\n" + "You agree to indemnify MyOutlines in full and on demand from and against any loss, damage, costs or expenses which they suffer or incur directly or indirectly as a result of your use of the App otherwise than in accordance with these Terms or Applicable Laws." + "\n" + "3. CONTENT: The copyright in all material contained on, in, or available through the App including all information, data, text, and images, the selection and arrangement thereof, and all source code, software compilations and other material is owned by or licensed to MyOutlines. All rights are reserved. You can view or print extracts of the Material for your own personal use but you cannot otherwise copy, edit, vary, reproduce, publish, display, distribute, store, transmit, commercially exploit, disseminate in any form whatsoever or use the Material without MyOutline's' express permission. The trademarks, service marks, and logos (“Trade Marks“) contained on or in the App are owned by MyOutlines. You cannot use, copy, edit, vary, reproduce, publish, display, distribute, store, transmit, commercially exploit or disseminate the Trade Marks without the prior written consent of MyOutlines." + "\n" + "4. LINK TO THIRD PARTIES: The App may contain links to websites operated by third parties (“Third Party Websites“). MyOutlines may monetise some of these links through the use of third party affiliate programmes. Notwithstanding such affiliate programmes, MyOutlines does not have any influence or control over any such Third Party Websites and, unless otherwise stated, is not responsible for and does not endorse any Third Party Websites or their availability or contents." + "\n" + "5. MYOUTLINES PRIVACY POLICY: We take your privacy very seriously. MyOutlines will only use your personal information in accordance with the terms of our privacy policy. By using the App you acknowledge and agree that you have read and accept the terms of our app privacy policy and these Terms." + "\n" + "6. DISCLAIMER / LIABILITY: USE OF THE APP IS AT YOUR OWN RISK. THE APP IS PROVIDED ON AN “AS IS” BASIS. TO THE MAXIMUM EXTENT PERMITTED BY LAW: (A) MYOUTLINES DISCLAIMS ALL LIABILITY WHATSOEVER, WHETHER ARISING IN CONTRACT, TORT (INCLUDING NEGLIGENCE) OR OTHERWISE IN RELATION TO THE APP; AND (B) ALL IMPLIED WARRANTIES, TERMS AND CONDITIONS RELATING TO THE APP (WHETHER IMPLIED BY STATUE, COMMON LAW OR OTHERWISE), INCLUDING (WITHOUT LIMITATION) ANY WARRANTY, TERM OR CONDITION AS TO ACCURACY, COMPLETENESS, SATISFACTORY QUALITY, PERFORMANCE, FITNESS FOR PURPOSE OR ANY SPECIAL PURPOSE, AVAILABILITY, NON INFRINGEMENT, INFORMATION ACCURACY, INTEROPERABILITY, QUIET ENJOYMENT AND TITLE ARE, AS BETWEEN MYOUTLINES AND YOU, HEREBY EXCLUDED. IN PARTICULAR, BUT WITHOUT PREJUDICE TO THE FOREGOING, WE ACCEPT NO RESPONSIBILITY FOR ANY TECHNICAL FAILURE OF THE INTERNET AND/OR THE APP; OR ANY DAMAGE OR INJURY TO USERS OR THEIR EQUIPMENT AS A RESULT OF OR RELATING TO THEIR USE OF THE APP. YOUR STATUTORY RIGHTS ARE NOT AFFECTED." + "\n" + "MyOutlines will not be liable, in contract, tort (including, without limitation, negligence), under statute or otherwise, as a result of or in connection with the App, for any: (i) economic loss (including, without limitation, loss of revenues, profits, contracts, business or anticipated savings); or (ii) loss of goodwill or reputation; or (iii) special or indirect or consequential loss." + "\n" + "IF MYOUTLINES IS LIABLE TO YOU DIRECTLY OR INDIRECTLY IN RELATION TO THE APP, THAT LIABILITY (HOWSOEVER ARISING) SHALL BE LIMITED TO: (A) FIFTY POUNDS STERLING (£50.00); OR (B) THE SUMS PAID BY YOU UPON PURCHASING THE APP, OR ANY IN-APP SPEND, INCLUDING SUBSCRIPTIONS, WHICHEVER IS GREATER." + "\n" + "Nothing in these Terms shall be construed as excluding or limiting the liability of Myoutlines for death or personal injury caused by its negligence or for any other liability which cannot be excluded by English law." + "\n" + "7. SERVICE SUSPENSION: MyOutlines reserves the right to suspend or cease providing any services relating to the apps published by it, with or without notice, and shall have no liability or responsibility to you in any manner whatsoever if it chooses to do so." + "\n" + "8. ADVERTISERS IN THE APP: We accept no responsibility for adverts contained within the App. If you agree to purchase goods and/or services from any third party who advertises in the App, you do so at your own risk. The advertiser, not MyOutlines, is responsible for such goods and/or services and if you have any queries or complaints in relation to them, your only recourse is against the advertiser." + "\n" + "9. COMPETITIONS: If you take part in any competition which is run in or through the App (“Competition“), you agree to be bound by the rules of that competition and any other rules specified by MyOutlines from time to time (“Competition Rules“) and by the decisions of MyOutlines, which are final in all matters relating to the Competition. MyOutlines reserves the right to disqualify any entrant and/or winner in its absolute discretion without notice in accordance with the Competition Rules." + "\n" + "10. IN-APP VOUCHER CODES: Any in-app voucher codes issued by MyOutlines may only be used in accordance with our Terms and Conditions for in-app voucher codes." + "\n" + "11. GENERAL: These Terms (as amended from time to time) constitute the entire agreement between you and MyOutlines concerning your use of the App." + "\n" + "MyOutlines reserves the right to update these Terms from time to time. If it does so, the updated version will be effective immediately, and the current Terms are available through a link in the App to this page. You are responsible for regularly reviewing these Terms so that you are aware of any changes to them and you will be bound by the new policy upon your continued use of the App. No other variation to these Terms shall be effective unless in writing and signed by an authorised representative on behalf of Myoutlines." + "\n" + "These Terms shall be governed by and construed in accordance with US law and you agree to submit to the exclusive jurisdiction of the US Courts." + "\n" + "If any provision(s) of these Terms is held by a court of competent jurisdiction to be invalid or unenforceable, then such provision(s) shall be construed, as nearly as possible, to reflect the intentions of the parties (as reflected in the provision(s)) and all other provisions shall remain in full force and effect. Myoutline's' failure to exercise or enforce any right or provision of these Terms shall not constitute a waiver of such right or provision unless acknowledged and agreed to by MyOutlines in writing. Unless otherwise expressly stated, nothing in the Terms shall create any rights or any other benefits whether pursuant to the Contracts (Rights of Third Parties) Act 1999 or otherwise in favour of any person other than you, MyOutlines." + "\n" + "12. CONTACT US: You can contact MyOutlines ate mfraioutlines@gmail.com."
            termsText.textAlignment = .justified
            termsText.font = UIFont(name: "Avenir-Medium", size: 15)
            termsText.textColor = .black
            termsText.textContainer.lineBreakMode = .byWordWrapping
            termsText.clipsToBounds = true
            termsText.showsVerticalScrollIndicator = true
            termsText.isScrollEnabled = true
            termsText.isEditable = false
            view.addSubview(termsText)
        
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
