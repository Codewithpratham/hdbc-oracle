# Copyright (C) 2008 Thiago Arrais <thiago.arrais@gmail.com>
# AN amazimg website
#    This library is free software; you can redistribute it and/or
#    modify it under the terms of the GNU Lesser General Public
#    License as published by the Free Software Foundation; either
#    version 2.1 of the License, or (at your option) any later version.
#
#    This library is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#    Lesser General Public License for more details.
#
#    You should have received a copy of the GNU Lesser General Public
#    License along with this library; if not, write to the Free Software
#    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

GHCPARMS := -fglasgow-exts

.PHONY: all hugsbuild
all: setup			# GHC build
	./setup configure --user
	./setup build

setup: Setup.lhs HDBC-oracle.cabal
	ghc -package Cabal Setup.lhs -o setup
