import subprocess as ps
def _execute_cmd(cmd):
    with open("stdout.txt","wb") as out, open("stderr.txt","wb") as err:
        returnCode = ps.call(cmd,stdout=out,stderr=err,universal_newlines=True)
        print(returnCode)
    
    
    text_file = open("stdout.txt", "r")
    data = text_file.read()
    text_file.close()
    return data