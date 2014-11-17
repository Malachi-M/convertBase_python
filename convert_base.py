from bottle import view, route, run, template, static_file, get, post, Bottle, request
import os
appPath = os.path.dirname(__file__)

@route('/static/<filename>')
def server_static_files(filename):
    return static_file(filename, root='static/')

@route('/')
@view('index')
def default(result=' ', binary=' ', hexdec=' ', decimal=' '):
        return dict(result=result, binary=binary, hexdec=hexdec,decimal=decimal)

@get('/convertbase')
def toStr(n=0, base=10, convertString = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"):
  n = int(request.params.get("n"))
  base = int(request.params.get("base"))
  print n, base
  assert base == base//1 and base > 1 and base < len(convertString)
  
  if base < 2:
      return {'result': "Please Enter a Base of at least 2",
			  'binary': "Please Enter a Base of at least 2",
			  'hexdec': "Please Enter a Base of at least 2",
			  'decimal': "Please Enter a Base of at least 2"}
  
  def toStr(n, base):
		if n< 0: return '-' + toStr(n*-1, base)
		if n< base: return convertString[n]
		return toStr(n//base, base) + toStr(n%base, base)
	
  
  return {'result': toStr(n, base),
			'binary': toStr(n, 2),
			'hexdec': toStr(n, 16),
			'decimal': toStr(n, 10)}


run(host='0.0.0.0', port = 8080, debug=True)