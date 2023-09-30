#!/bash/bin

# variables
path=hdfs/data/data1
name_of_directory=data1

# conditions
if [ -d $path/$name_of_directory ];then
  echo "There is ${name_of_directory} Directory Exists!"
else
  echo "${name_of_directory} Directory Not Exists!"
  mkdir $path/$name_of_directory
  exit 1
fi
