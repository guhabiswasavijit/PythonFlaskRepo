set FLASK_APP=./PythonWs/index.py
pipenv --venv > tmpFile 
set /p V_ENV_DIR= < tmpFile 
del tmpFile 
echo %V_ENV_DIR%
set PYTHONPATH=%PYTHONPATH%;%V_ENV_DIR%\Scripts\;./PythonWs/
echo %PYTHONPATH%
call activate.bat
pipenv install flask
pipenv install subprocess
pipenv install --dev pytest
pipenv lock
flask run -h 0.0.0.0