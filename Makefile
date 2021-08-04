# Copyright (C) Simon Wright <simon@pushface.org>.

# This package is free software; you can redistribute it and/or
# modify it under terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2, or
# (at your option) any later version. This package is distributed in
# the hope that it will be useful, but WITHOUT ANY WARRANTY; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE. See the GNU General Public License for more
# details. You should have received a copy of the GNU General Public
# License distributed with this package; see file COPYING.  If not,
# write to the Free Software Foundation, 59 Temple Place - Suite
# 330, Boston, MA 02111-1307, USA.

# Compute the prefix of the current GNAT installation
prefix ?= $(realpath $(dir $(shell which gnatls))..)

# Work out where to install the GPR
debian = $(and $(wildcard /etc/debian_version),$(filter $(prefix),/usr))
GPR_INSTALL_SUBDIR = $(if $(debian),share/ada/adainclude,lib/gnat)

GPRBUILD ?= gprbuild
GPRCLEAN ?= gprclean

# 'make' to make the XIA libraries for use with XIA.gpr.
# 'make install' to install the XIA libraries with your GNAT (override
# the location by "make install prefix=/where/ever")

libs:: lib-static-stamp
libs:: lib-relocatable-stamp

lib-static-stamp: force
	$(GPRBUILD) -p -P XIA -XLIBRARY_TYPE=static
	touch $@

lib-relocatable-stamp: force
	$(GPRBUILD) -p -P XIA -XLIBRARY_TYPE=relocatable
	touch $@

install:: install-static
install:: install-relocatable

install-static: lib-static-stamp
	gprinstall					\
	  -f						\
	  --prefix=$(prefix)				\
	  -P XIA.gpr					\
	  --install-name=xia				\
	  --project-subdir=$(GPR_INSTALL_SUBDIR)	\
	  -XLIBRARY_TYPE=static				\
	  --mode=dev					\
	  --create-missing-dirs				\
	  --build-var=LIBRARY_TYPE			\
	  --build-name=static

install-relocatable: lib-relocatable-stamp
	gprinstall					\
	  -f						\
	  --prefix=$(prefix)				\
	  -P XIA.gpr					\
	  --install-name=xia				\
	  --project-subdir=$(GPR_INSTALL_SUBDIR)	\
	  -XLIBRARY_TYPE=relocatable			\
	  --mode=dev					\
	  --create-missing-dirs				\
	  --build-var=LIBRARY_TYPE			\
	  --build-name=relocatable

.PHONY: doc force install libs		\
  install-static install-relocatable
