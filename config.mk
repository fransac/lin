# Output directory.
ROOT = out

# The pack program.
PACK = pack

# Toolchain.
ARCH = $$(uname -m)
CC = $(ARCH)-linux-musl-cc
GZ = gzip
LEX = lex
YACC = yacc
