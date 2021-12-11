set FLASK_APP=./PythonWs/index.py
pipenv --venv > tmpFile 
set /p V_ENV_DIR= < tmpFile 
del tmpFile 
echo %V_ENV_DIR%
set PATH=%PATH%;%V_ENV_DIR%\Scripts\
call activate.bat
flask run -h 0.0.0.0