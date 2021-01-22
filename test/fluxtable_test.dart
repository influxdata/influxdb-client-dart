import 'package:influxdb_client/api.dart';
import 'package:collection/collection.dart';

import 'package:test/test.dart';

void main() {
  group('FluxTableMeta', () {
    test('escape', () {
      var columns = [
        FluxColumn(
            label: 'a',
            dataType: 'long',
            group: true,
            defaultValue: 1,
            index: 1),
        FluxColumn(label: 'b', index: 2)
      ];

      var subject = FluxTableMetaData(0);
      subject.columns = columns;

      var record = subject.toObject(['', '', '', '']);
      var mapEq = MapEquality();
      expect(mapEq.equals(record, {'a': 1, 'b': null}), true);
      expect(record.tableIndex, 0);
    });
  });
}
