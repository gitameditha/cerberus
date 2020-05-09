# Cerberus
### Terminology
<br>
<p align="center">
  <img src="https://mitosmythgreekhome.files.wordpress.com/2019/07/cerberus.jpg?w=1222" width="300">
</p>

In Greek mythology, Cerberus is a multi-headed dog that guards the gates of the Underworld to prevent the dead from leaving

In this project terms, Cerberus is the repository for the testing framework of three main platform Web Browser, Mobile Apps (Android) and API

This automation test script using RobotFramework. For Web Testing we used builtin library `Selenium Library`, for Mobile Apps Testing we used builtin library `Appium Library`, and for API Testing we used builtin library `Request Library`

## Setup
### Install RobotFramework
Since RobotFramework based on Python, make sure it already installed.
On this project using `python 3.7.3`

### Initiate Virtual Environment
```bash
virtualenv -p python3 env
```

### Activate Virtual Environment
```bash
source env/bin/activate
```
### Install Library Dependencies
Run this script for install RobotFramework and libraries
```bash
pip install -r requirement.txt
```
## Usage
Run this script for running test based on 'Test Case Name'
```bash
robot -t "[TEST CASE NAME]" [PATH TO TEST FILE NAME]
```

Run this script for running all test on suite
```bash
robot [PATH TO TEST FILE NAME]
```
e.g : `robot api/tests/` or `robot android/tests/` or `robot web/tests/`

After finished, it will generate `Output File`, `Log File` and `Report File`.

## Report
You can access the Log report by open file `log.html` on browser
