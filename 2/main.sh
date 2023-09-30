#!/bash/bin

# variables
path=hdfs/data/data1
name_of_directory=data1

# conditions
if [ -d $path/$name_of_directory ];then
  echo "There is ${name_of_directory} Directory Exists!"
  filename_excel=daily_market_price.xlsx
  source_dir=local/data/market
  target_dir=$path
  cp $source_dir/$filename_excel $target_dir
  echo "File Moved Successfully"
else
  echo "${name_of_directory} Directory Not Exists!"
  mkdir $path/$name_of_directory
  exit 1
fi
