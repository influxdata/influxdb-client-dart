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

    test('parseDuplicateColumnNames', () async {
      var csv =
          '#datatype,string,long,dateTime:RFC3339,dateTime:RFC3339,dateTime:'
          'RFC3339,string,string,double$defaultEol'
          '#group,false,false,true,true,false,true,true,false$defaultEol'
          '#default,_result,,,,,,,$defaultEol '
          ',result,table,_start,_stop,_time,_measurement,location,result$defaultEol'
          ',,0,2022-09-13T06:14:40.469404272Z,2022-09-13T06:24:40.469404272Z,'
          '2022-09-13T06:24:33.746Z,my_measurement,Prague,25.3$defaultEol'
          ',,0,2022-09-13T06:14:40.469404272Z,2022-09-13T06:24:40.469404272Z,'
          '2022-09-13T06:24:39.299Z,my_measurement,Prague,25.3$defaultEol'
          ',,0,2022-09-13T06:14:40.469404272Z,2022-09-13T06:24:40.469404272Z,'
          '2022-09-13T06:24:40.454Z,my_measurement,Prague,25.3$defaultEol';

      var records = await Stream<String>.value(csv)
          .transform(CsvToListConverter())
          .transform(FluxTransformer(responseMode: FluxResponseMode.onlyNames))
          .toList();
      print(records.join("\n"));
      expect(records.length, 3);
      expect(records[0].values.length, 7);
      expect(records[0].row.length, 8);
      expect(records[0].row[7], 25.3);
    });
  });
}
