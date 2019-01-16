if [[ $# -ne 3 ]]
then
  echo -e "Script to create N files of x size\n"
  echo "Usage: ./nfiles <target_dir> <num_files> <file_size>"
  echo "example: ./nfiles /tmp 100 1M"
  echo "Running the same directory will overwrite the existing files in that directory."
  echo  "The tool create files starting with 'file' as the filename , example: file1, file2"
  exit 1
fi

target_dir="$1"
num_files=$2
file_size=$3

for i in `seq 1 $num_files`
do 
  echo "creating file : ${target_dir}/file$i ..."
  dd if=/dev/urandom of="${target_dir}/file$i" bs=$file_size count=1 iflag=fullblock> /dev/null 2>&1
  if [[ $? -ne 0 ]]
  then
    echo "error while creating file : ${target_dir}/file$i ... exiting"
    exit 1
  fi
done
