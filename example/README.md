# Examples

## Writes
- [write_example.dart](write_example.dart) - How to write data to InfluxDB 

## Queries
- [query_example.dart](query_example.dart) - How to query data into `Stream` and `CSV string`
- [query_lines_example.dart](query_lines_example.dart) - How to query data into `CSV Stream`
- [parameterized_query_example.dart](parameterized_query_example.dart) - How to use parameterized Flux queries

## Management API
- [create_bucket_example.dart](create_bucket_example.dart) - How to create Buckets
- [management_api_example.dart](management_api_example.dart) - How to create, list and delete Organization

## Others
- [delete_data_example.dart](delete_data_example.dart) - How to delete data from InfluxDB by client
- [main.dart](main.dart) - How to write, query and delete data from InfluxDB
- [invokable_scripts.dart](invokable_scripts.dart) - How to use Invokable scripts Cloud API to create custom endpoints that query data
- [record_row_example.dart](record_row_example.dart) - How to use `FluxRecord.row`(List) instead of `FluxRecord.values`(Map), in case of duplicity column names