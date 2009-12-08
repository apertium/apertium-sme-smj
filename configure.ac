#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.


AC_PREREQ(2.52)

AC_INIT([apertium-sme-smj], [0.1.0], [giellalinda@users.sourceforge.net])
AM_INIT_AUTOMAKE([apertium-sme-smj], [0.1.0], no-define)
AC_PROG_LN_S
AC_PROG_AWK
AC_CONFIG_HEADER([config])

AC_DEFUN([PKG_CHECK_LTTOOLBOX], [
  LTTOOLBOX_VER=0
  PKG_CHECK_MODULES(LTTOOLBOX, lttoolbox-3.1 >= 3.1.0,
  [
    LTTOOLBOX_VER=31
  ],
  [
    PKG_CHECK_MODULES(LTTOOLBOX, lttoolbox-3.2 >= 3.2.0)
    LTTOOLBOX_VER=32
  ])
  AC_SUBST(LTTOOLBOX_VER)
])

AC_DEFUN([PKG_CHECK_APERTIUM], [
  APERTIUM_VER=0
  PKG_CHECK_MODULES(APERTIUM, apertium-3.1 >= 3.1.0,
  [
    APERTIUM_VER=31
  ],
  [
    PKG_CHECK_MODULES(APERTIUM, apertium-3.2 >= 3.2.0)
    APERTIUM_VER=32
  ])
  AC_SUBST(APERTIUM_VER)
])

PKG_CHECK_LTTOOLBOX
PKG_CHECK_APERTIUM

APERTIUM_VER=30

AC_SUBST(APERTIUM_VER)

AC_PATH_PROG(CGCOMP, cg-comp, no)
if test x$ac_cv_path_CGCOMP = x
then
  AC_MSG_ERROR([You don't have cg-comp installed.])
fi
if test x$ac_cv_path_CGPROC = xno
then
  AC_MSG_ERROR([You don't have cg-comp installed.])
fi

AC_PATH_PROG(CGPROC, cg-proc, no)
if test x$ac_cv_path_CGPROC = x
then
  AC_MSG_ERROR([You don't have cg-proc installed.])
fi
if test x$ac_cv_path_CGPROC = xno
then
  AC_MSG_ERROR([You don't have cg-proc installed.])
fi


AC_OUTPUT([Makefile])
