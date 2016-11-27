import os

"""
Parse a .puz file
"""
class PuzParser:
	def __init__(self, filePath):
		self.puzFilePath = filePath

	def run(self):
		puzFileName, puzFileExtension = os.path.splitext(self.puzFilePath)
		if puzFileExtension == '.puz':
			print('Running the parser on {}'.format(self.puzFilePath))
			with open(self.puzFilePath, 'rb') as puzFile:
				contents = puzFile.read()
				print(contents)
			return 0
		else:
			print('{} is not a .puz file.  Exiting.'.format(self.puzFilePath))
			return 1
