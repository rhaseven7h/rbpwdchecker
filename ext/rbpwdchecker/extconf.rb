require 'mkmf'

dir_config("rbpwdchecker")

have_library('crack')

create_makefile("rbpwdchecker")
