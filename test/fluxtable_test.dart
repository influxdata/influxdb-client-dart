import 'package:influxdb_client/api.dart';
import 'package:collection/collection.dart';

import 'package:test/test.dart';

void main() {
  group('FluxTableMeta', () {
    test('escape', () {
      var c1 = FluxColumn('long', 1);
      c1.group = true;
      c1.defaultValue = 1;
      c1.label = 'a';

      var c2 = FluxColumn('long', 2);
      c2.label = 'b';
      var columns = [c1, c2];

      var meta = FluxTableMetaData(0);
      meta.columns = columns;

      var record = meta.toObject(['', '', '', '']);
      var mapEq = MapEquality();
      expect(mapEq.equals(record, {'a': 1, 'b': null}), true);
      expect(record.tableIndex, 0);
    });
  });
}
