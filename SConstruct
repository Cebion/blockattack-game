import os
# Option      #
opts = Options(args = ARGUMENTS)
opts.Add('destdir', 'Staging area to install BlockAttack to.  Useful for packagers.', '')
opts.Add('prefix', 'Destination directory', '/usr/local')
opts.Add('sharedir', 'Directory to use to store data file', '$prefix/share/blockattack')
opts.Add('bindir', 'Directory to use to store data file', '$prefix/bin')
opts.Add('mandir', 'Directory to use to store data file', '$prefix/share/man')
opts.Add('CXXFLAGS', 'C++ flags', "-std=c++11")


print "Warning: scons is absolutely unsupported for building Block Attack - Rise of the blocks"

# Copy Build Environment #
env = Environment(options = opts)
if 'PATH' in os.environ:
	env.Append(PATH = os.environ['PATH'])
if 'CXX' in os.environ:
	env.Append(CXX = os.environ['CXX'])
Export("env")
SConsignFile()

# Sources #
SConscript('source/code/SConscript')

# game materials (sharefiles)
SConscript('Game/SConscript')

# manpage
SConscript('man/SConscript')
# icons menu
env.Install ('$destdir/$prefix/share/pixmaps/',['blockattack32.xpm','blockattack64.xpm'])
env.Alias('install', ['$destdir/$prefix/share/pixmaps/'])

env.Install ('$destdir/$prefix/share/applications/',['blockattack.desktop'])
env.Alias('install', ['$destdir/$prefix/share/applications'])
