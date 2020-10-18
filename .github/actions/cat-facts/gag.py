# first: mkdir user && cd user && cp /path/to/get_gists.py .
# python3 get_gists.py user
import requests,time
import sys
from subprocess import call
from pprint import pprint

user = "0xecho"
file_name = sys.argv[1] if len(sys.argv)>1 else 'opt_'+time.strftime('%s')

r = requests.get('https://api.github.com/users/{0}/gists'.format(user))


with open(file_name, 'w+') as f:
	for i in r.json():
		# call(['git', 'clone', i['git_pull_url']])
		for file in i['files'].values():
			# call(['git', 'clone', i['git_pull_url']])
			resp = requests.get(file['raw_url'])
			txt_data = resp.text
			if txt_data.endswith('--------\\n'):
				txt_data = txt_data[:10]
			f.write(txt_data)
			f.write('\n')