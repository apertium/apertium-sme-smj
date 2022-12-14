#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.


AC_PREREQ(2.52)

AC_INIT([Apertium Northern Saami-Lule Saami], [0.5.1], [trondtr@users.sourceforge.net], [apertium-sme-smj], [https://wiki.apertium.org/wiki/Apertium-sme-smj])
AM_INIT_AUTOMAKE

AC_PROG_LN_S
AC_PROG_AWK

m4_define([required_apertium_version], [3.3.0])
PKG_CHECK_MODULES(APERTIUM, apertium >= required_apertium_version, [], [PKG_CHECK_MODULES(APERTIUM, apertium-3.2 >= required_apertium_version)])

PKG_CHECK_MODULES(HFST, hfst >= 3.16.0)
PKG_CHECK_MODULES(CG3, cg3 >= 1.3.6)
PKG_CHECK_MODULES(APERTIUM_LEX_TOOLS, apertium-lex-tools >= 0.4.0)
PKG_CHECK_MODULES(APERTIUM_RECURSIVE, apertium-recursive >= 1.1.2)
PKG_CHECK_MODULES(APERTIUM_SEPARABLE, apertium-separable >= 0.5.0)

AC_PATH_PROG([CGRELABEL], [cg-relabel], [false], [$PATH$PATH_SEPARATOR$with_cg_relabel/bin])
AS_IF([test x$CGRELABEL = xfalse], [AC_MSG_ERROR([You don't have cg-relabel installed; please upgrade your vislcg3])])

AC_PATH_PROGS(ZCAT, [gzcat zcat], [false])
AS_IF([test x$ZCAT = xfalse], [AC_MSG_ERROR([You don't have zcat nor gzcat installed])])

m4_ifdef([AP_CHECK_LING],[],[AC_MSG_ERROR([AP_CHECK_LING not defined, is apertium.m4 in ACLOCAL_PATH? See: https://wiki.apertium.org/wiki/Installation_troubleshooting])])

AP_CHECK_LING([1], [giella-sme])
AP_CHECK_LING([2], [giella-smj])

PKG_CHECK_MODULES(REGTEST, apertium-regtest >= 0.0.1, [],
                  [AC_MSG_WARN([Running tests requires apertium-regtest])])

AP_MKINCLUDE

AC_OUTPUT([Makefile])
