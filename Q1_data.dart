Set<String> office1 = {'Shop 128,Shyam Complex,Parasnagar,Ahmedabad'};
Set<String> residence1 = {'B-18,Vraj App.,Parasnagar, Ahmedabad'};
Map<Set, Set> address1 = {office1: residence1};
List<int> id1 = [1, 2];
var total1 = details1.values.reduce((a, b) => a+b);
Map<String, double> details1 = {'book': 500, 'chair': 9500};
Map<List, Map> products1 = {id1: details1};
Map<Map, double> orders1 = {products1: total1};
Map<Map<Set, Set>, Map<Map, double>> data1 = {address1: orders1};

Set<String> office2 = {'402, Aman Akash, Bopal, Ahmedabad'};
Set<String> residence2 = {'O-1301, Iskon Heights, Bopal, Ahmedabad'};
Map<Set, Set> address2 = {office2: residence2};
List<int> id2 = [1, 2];
var total2 = details2.values.reduce((a, b) => a+b);
Map<String, double> details2 = {'accessories': 999, 'laptop': 49999};
Map<List, Map> products2 = {id2: details2};
Map<Map, double> orders2 = {products2: total2};
Map<Map, Map> data2 = {address2: orders2};

Set<String> office3 = {'16, Palak Enclave, Satellite, Ahmedabad'};
Set<String> residence3 = {'22, Bhagvan Bhuvan Soc., Satellite, Ahmedabad'};
Map<Set, Set> address3 = {office3: residence3};
List<int> id3 = [1, 2, 3];
var total3 = details3.values.reduce((a, b) => a+b);
Map<String, double> details3 = {'Earphones': 399, 'Mobile': 11999, 'Case': 499};
Map<List, Map> products3 = {id3: details3};
Map<Map, double> orders3 = {products3: total3};
Map<Map, Map> data3 = {address3: orders3};

Set<String> office4 = {'204, Sachin Tower, Vejalpur, Ahmedabad'};
Set<String> residence4 = {'99, Vrundavan Soc., Vejalpur, Ahmedabad'};
Map<Set, Set> address4 = {office4: residence4};
List<int> id4 = [1, 2];
var total4 = details4.values.reduce((a, b) => a+b);
Map<String, double> details4 = {'tablet': 29999, 'tools': 799};
Map<List, Map> products4 = {id4: details4};
Map<Map, double> orders4 = {products4: total4};
Map<Map, Map> data4 = {address4: orders4};

Set<String> office5 = {'304, Galaxy Tower, Rakhiyal, Ahmedabad'};
Set<String> residence5 = {'B/506, Aparna Appt., Vastral, Ahmedabad'};
Map<Set, Set> address5 = {office5: residence5};
List<int> id5 = [1, 2];
var total5 = details5.values.reduce((a, b) => a+b);
Map<String, double> details5 = {'calculator': 599, 'charger': 249};
Map<List, Map> products5 = {id5: details5};
Map<Map, double> orders5 = {products5: total5};
Map<Map, Map> data5 = {address5: orders5};
