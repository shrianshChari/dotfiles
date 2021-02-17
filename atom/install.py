import os
import json

atom_packages = open('./atom/package-list.json').read()
atom_packages = json.loads(atom_packages)

for i in atom_packages["package-list"]:
    os.system('apm install ' +  i)
    # print('apm install ' +  i)
