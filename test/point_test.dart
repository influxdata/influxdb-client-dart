import 'package:influxdb_client/api.dart';
import 'commons_test.dart';

import 'package:test/test.dart';

void main() {
  group('PointTest', () {
    test('escape', () {
      var point = Point.measurement('h2 o')
          .addTag('location', 'europe')
          .addTag('', 'warn')
          .addField('level', 2);
      expect(point.toLineProtocol(WritePrecision.ns),
          'h2\\ o,location=europe level=2i');

      point = Point.measurement('h2=o')
          .addTag('location', 'europe')
          .addTag('', 'warn')
          .addField('level', 2);

      expect(point.toLineProtocol(WritePrecision.ns),
          'h2=o,location=europe level=2i');

      point = Point.measurement('h2,o')
          .addTag('location', 'europe')
          .addTag('', 'warn')
          .addField('level', 2);

      expect(point.toLineProtocol(WritePrecision.ns),
          'h2\\,o,location=europe level=2i');
    });

    test('fieldTypes', () {
      var point = Point.measurement('h2o')
          .addTag('loc1', 'europe')
          .addTag('loc2', 'america')
          .addField('int', 1)
          .addField('double', 2.2)
          .addField('bigInt', BigInt.from(8))
          .addField('boolFalse', false)
          .addField('boolTrue', true)
          .addField('string', 'string value');

      var expected = 'h2o,loc1=europe,loc2=america bigInt=8,boolFalse=false,'
          'boolTrue=true,double=2.2,int=1i,string="string value"';
      expect(point.toLineProtocol(WritePrecision.ns), expected);
    });

    test('time', () {
      var point = Point.measurement('h2o')
          .addTag('location', 'europe')
          .addField('level', 2)
          .time(123);
      expect(point.toLineProtocol(WritePrecision.ns),
          'h2o,location=europe level=2i 123');

      var date = 9007199254740991;

      point = Point.measurement('h2o')
          .addTag('location', 'europe')
          .addField('level', 2)
          .time(date);

      expect(point.toLineProtocol(WritePrecision.ns),
          'h2o,location=europe level=2i 9007199254740991');

      var time = DateTime.parse('2020-06-22T10:26:03.800123456Z');

      point = Point.measurement('h2o')
          .addTag('location', 'europe')
          .addField('level', 2)
          .time(time);

      final nsPrecision =
          isWeb ? '1592821563800000000' : '1592821563800123000';
      expect(point.toLineProtocol(WritePrecision.ns),
          'h2o,location=europe level=2i $nsPrecision');

      point = Point.measurement('h2o')
          .addTag('location', 'europe')
          .addField('level', 2)
          .time(time);

      final usPrecision = isWeb ? '1592821563800000' : '1592821563800123';
      expect(point.toLineProtocol(WritePrecision.us),
          'h2o,location=europe level=2i $usPrecision');

      point = Point.measurement('h2o')
          .addTag('location', 'europe')
          .addField('level', 2)
          .time(time);

      expect(point.toLineProtocol(WritePrecision.ms),
          'h2o,location=europe level=2i 1592821563800');

      point = Point.measurement('h2o')
          .addTag('location', 'europe')
          .addField('level', 2)
          .time(time);

      expect(point.toLineProtocol(WritePrecision.s),
          'h2o,location=europe level=2i 1592821564');
    });

    test('fieldEscape', () {
      var point = Point.measurement('h2o')
          .addTag('location', 'europe')
          .addField('level', 'string esc\\ape value');

      expect(point.toLineProtocol(WritePrecision.ns),
          'h2o,location=europe level="string esc\\\\ape value"');

      point = Point.measurement('h2o')
          .addTag('location', 'europe')
          .addField('level', 'string esc"ape value');

      expect(point.toLineProtocol(WritePrecision.ns),
          'h2o,location=europe level="string esc\\"ape value"');
    });
  });
}
