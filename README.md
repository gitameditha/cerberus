# Problem Statement 1
## Automation Test using RobotFramework

This automation test script using RobotFramework. For Web Testing we used builtin library `Selenium Library`

### Setup
#### Install RobotFramework
Since RobotFramework based on Python, make sure it already installed.
On this project using `python 3.7.3`

#### Initiate Virtual Environment
```bash
virtualenv -p python3 env
```

#### Activate Virtual Environment
```bash
source env/bin/activate
```
#### Install Library Dependencies
Run this script for install RobotFramework and libraries
```bash
pip install -r requirement.txt
```
### Usage
Run this script for running test based on 'Test Case Name'
```bash
robot -t "[TEST CASE NAME]" [PATH TO TEST FILE NAME]
```

Run this script for running all test on suite
```bash
robot [PATH TO TEST FILE NAME]
```
e.g : `robot web/tests/`

After finished, it will generate `Output File`, `Log File` and `Report File`.
You can access the Log report by open file `log.html` on browser

# Problem Statement 2
This automation test using `python 3.7.3` script with `request` and `json` libraries.

### Setup
#### Initiate Virtual Environment
```bash
virtualenv -p python3 env
```

#### Activate Virtual Environment
```bash
source env/bin/activate
```
#### Install Library Dependencies
Run this script for install RobotFramework and libraries
```bash
pip install -r requirement.txt
```
### Usage
Run this script for running test
```bash
python compare_files.py ${PATH_TO_FILE_A} ${PATH_TO_FILE_B}
```
e.g : `python scripts/compare_files.py files/sample_c.txt files/sample_d.txt`

It will be error if we not input two files on the argument. Also will error if we set the wrong path file (File Not Found).
