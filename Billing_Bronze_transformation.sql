CREATE OR REFRESH STREAMING TABLE hospital_analysis.default.bronze_hospital_billing AS
SELECT *,
       _metadata.file_name AS source_file,
       current_timestamp() AS loaded_at
FROM STREAM read_files('/Volumes/hospital_analysis/default/hospital_volume/',
                       format => 'csv', header => true);
