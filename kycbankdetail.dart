// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
// import 'package:toggle_switch/toggle_switch'; 
final _formkey = GlobalKey<FormState>();





class KYCbankdetail extends StatefulWidget {
  const KYCbankdetail({super.key});

  @override
  State<KYCbankdetail> createState() => _KYCbankdetailState();
}

class _KYCbankdetailState extends State<KYCbankdetail> {
    
  List<bool> isSelected = [true,false];

int _selectedIndex=0;

void _onItemTapped(int index){
  setState(() {
    _selectedIndex =index;
  });
}

  @override
  Widget build(BuildContext context) {
final screenWidth = MediaQuery.of(context).size.width;
final screenHeight = MediaQuery.of(context).size.height;


    return Scaffold(   
      body: SingleChildScrollView(
         
    
        child: SafeArea(child: Column(
          
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                  Expanded(
                    flex: 0,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.black87,
                      onPressed: () async {},
                    ),
                  ),
                  SizedBox(width: 70,),

                              Expanded(
                                flex: 4,
                              
                                child: RichText(
                                       
                                              text: TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: 'KYC',
                                                    style: GoogleFonts.commissioner(
                                                      
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 24,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'Document ',
                                                    style: GoogleFonts.commissioner(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 24,
                                                      color: const Color.fromRGBO(187, 118, 193, 1),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                              ),
                const SizedBox(width: 100,),
            
             
                ],
              ), 
              SizedBox(height: 50,),
              Column(
                children: [
         
              SizedBox(height: 32),
                  Center(
                    
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.3),spreadRadius: 1,blurRadius: 1,offset: const Offset( 0,3))]),
                      
                      child: ToggleSwitch(
                        initialLabelIndex: 0,
                        minHeight: 50.0,
                        cornerRadius: 5,
                        minWidth: 175.0,
                        activeBgColor: const [Color.fromRGBO(157, 118, 193, 1)],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.white,
                        inactiveFgColor: const Color.fromRGBO(157, 118, 193, 1),
                        customTextStyles: const [TextStyle(fontSize: 14.0)],
                        
                        
                        centerText: true,
                        totalSwitches: 2,
                        labels: const ['ID Proof', 'Bank Details'],
                        onToggle: (index) {},
                      ),
                    ),
                  ),
                    
                  
                ],
              ),
              SizedBox(
                height: 60,
              ),
              
      // ============================================1     
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0,12.0,32.0,12.0),
                child: Form(
                   key: _formkey,
                  child: Column(
                    
                    
                    children:<Widget> [
                      const
                      
            
                      SizedBox(height: 14,
                      ),
                       Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        
                        children: [
                          Text(
                            "Account Number",style: TextStyle(
                              color: Colors.purple,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20,)
                        ],
                      ),
                    ),
                  
                    
                   
                  
           TextFormField(
            
            decoration: InputDecoration(
            
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                
                
              )
            ),
            keyboardType: TextInputType.number,
            autofillHints: [AutofillHints.creditCardNumber],
            validator: (value) {
              if(value==null || value.isEmpty){
                return'please enter the account no';
              }
              return null;
            },
          ),
                    SizedBox(height: 30,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        
                        children: [
                          Text(
                            "IFSCCode",style: TextStyle(
                              color: Colors.purple,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                       SizedBox(height: 20,)

                        ],
                      ),
                    ),
                      
                    

           TextFormField(
            
            decoration: InputDecoration(
            
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                
                
              )
            ),
            keyboardType: TextInputType.number,
            autofillHints: [AutofillHints.creditCardNumber],
            validator: (value) {
              if(value==null || value.isEmpty){
                return'please enter the IFSCcode';
              }
              return null;
            },
          ),
                    SizedBox(height: 30,),

 Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        
                        children: [
                          Text(
                            "Branch",style: TextStyle(
                              color: Colors.purple,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                                                    SizedBox(height: 20,)

                        ],
                      ),
                    ),
           TextFormField(
            
            decoration: InputDecoration(
            
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                
                
              )
            ),
            keyboardType: TextInputType.number,
            autofillHints: [AutofillHints.creditCardNumber],
            validator: (value) {
              if(value==null || value.isEmpty){
                return'please enter the Branch';
              }
              return null;
            },
          ),
          SizedBox(height: 50,),
                   
                  

        
       
    
                  
                
              
        
         


         //===========================================2      
             
      
               Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Color.fromARGB(255, 150, 90, 206),
                      minimumSize: const Size(157, 40),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()){
    
    
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('process data')),
                        );
                      }
                  
                    },
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
    
        
         ],
         ),
         
        )
        )
       ]
       
    ),),),
    bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(157, 118, 193, 1),
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromRGBO(250, 252, 251, 0.957),
          onTap: _onItemTapped,
          unselectedItemColor: const Color.fromRGBO(241, 244, 245, 0.792),
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'myjob'),
            const BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'wallet'),
            const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          ],
        ),
    );

  }
}

 