import 'package:csv/csv.dart';
import 'package:influxdb_client/api.dart';
import 'package:test/test.dart';

var withoutMetadata =
    ',result,table,_start,_stop,_field,_measurement,host,region,_value2,value1,value_str$defaultEol' +
        ',,0,1677-09-21T00:12:43.145224192Z,2018-07-16T11:21:02.547596934Z,free,mem,A,west,121,11,test$defaultEol' +
        ',,1,1677-09-21T00:12:43.145224192Z,2018-07-16T11:21:02.547596934Z,free,mem,A,west,121,11,test$defaultEol';

void main() {
  group('FluxTransformer', () {
    test('parseWithoutDatatype', () async {
      var records = await Stream<String>.value(withoutMetadata)
          .transform(CsvToListConverter())
          .transform(FluxTransformer(responseMode: FluxResponseMode.onlyNames))
          .toList();
      print(records);
      expect(records.length, 2);
      expect(records[0].values.length, 11);
      expect(records[0]['table'], 0);
      expect(records[0]['value1'], 11);
      expect(records[0]['region'], 'west');
    });
  });
}
