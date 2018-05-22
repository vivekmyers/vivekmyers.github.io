from sys import *;

html = '''
<body>
<h1>Queries:</h1>
<p>{arg}</p>
</body>
'''.format(
	arg=argv[1],
)

print(html)
