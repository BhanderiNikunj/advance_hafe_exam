import 'package:adavance_hafe_exam/Screen/Corona/Contorllor/CoronaControllor.dart';
import 'package:adavance_hafe_exam/Screen/Corona/Model/CoronaModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoronaScreen extends StatefulWidget {
  const CoronaScreen({Key? key}) : super(key: key);

  @override
  State<CoronaScreen> createState() => _CoronaScreenState();
}

class _CoronaScreenState extends State<CoronaScreen> {
  CoronaContorllor coronaContorllor = Get.put(
    CoronaContorllor(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: FutureBuilder(
          future: coronaContorllor.ApiCall(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else if (snapshot.hasData) {
              CoronaModel? c1 = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 280,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white),
                        color: Colors.white30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Country Name :- ${c1.countriesStat[index].countryName}",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Country Cases :- ${c1.countriesStat[index].cases}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Country Deaths :- ${c1.countriesStat[index].deaths}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Total Recovered :- ${c1.countriesStat[index].totalRecovered}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Serious Critical :- ${c1.countriesStat[index].seriousCritical}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Active Cases :- ${c1.countriesStat[index].activeCases}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Total Cases Per 1m Population :- ${c1.countriesStat[index].testsPer1MPopulation}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: c1!.countriesStat.length,
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
