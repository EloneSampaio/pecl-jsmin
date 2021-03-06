dnl
dnl $Id$
dnl

PHP_ARG_ENABLE(jsmin, whether to enable jsmin support,
[  --enable-jsmin           Enable jsmin support])

if test "$PHP_JSMIN" != "no"; then
  AC_HEADER_STDC
  PHP_NEW_EXTENSION(jsmin, utf8.c php_jsmin.c jsmin.c, $ext_shared)
  PHP_INSTALL_HEADERS([ext/jsmin], [php_jsmin.h])
  PHP_SUBST(JSMIN_SHARED_LIBADD)
fi
