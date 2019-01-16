# bulk_file_creation
More often than not,  we need a tool that helps create "given number of file" and "given size of files" in a "given directory" on a file storage or a filesystem. Here is a quick basic script that helps you do that.

Usage:

./nfile.sh
Script to create N files of x size
Usage: ./nfiles <target_dir> <num_files> <file_size>
example: ./nfiles /tmp 100 1M
Running the same directory will overwrite the existing files in that directory.
The tool create files starting with 'file' as the filename , example: file1, file2,

Note: this utility is a script and is using /dev/urandom so the performance and time creation will be likewise. 
It should not be used performance benchmarking but more for capasity creation required for tests.
