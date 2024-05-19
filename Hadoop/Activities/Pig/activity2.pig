--Load the input file from the HDFS
inputFile = LOAD 'hdfs://user/roshni/input.txt' AS (line:chararray);
--Tokenize the line to get words(MAP)
words = FOREACH inputFile GENERATE FLATTEN(TOKENIZE(line)) AS word;
--Group words by word(MAP)
grpd = GROUP words BY word;
--Count the total number of words(REDUCE)
totalCount = FOREACH grpd GENERATE $0 AS word, COUNT($1) AS wordCount;
--Remove the old result folder
rmf hdfs:///user/roshni/PigOutput1;
--Store the result in the HDFS
STORE totalCount INTO 'hdfs:///user/roshni/PigOutput1';