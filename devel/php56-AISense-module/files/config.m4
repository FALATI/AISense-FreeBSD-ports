PHP_ARG_ENABLE(AISense, whether to enable AISense support,
[ --enable-AISense   Enable AISense support])

PHP_SUBST(AISENSE_SHARED_LIBADD)
PHP_ADD_LIBRARY_WITH_PATH(netgraph, /usr/lib, AISENSE_SHARED_LIBADD)
PHP_ADD_LIBRARY_WITH_PATH(vici, /usr/local/lib/ipsec, AISENSE_SHARED_LIBADD)
if test "$PHP_AISENSE" = "yes"; then
  AC_DEFINE(HAVE_PFSENSE, 1, [Whether you have AISense])
  PHP_NEW_EXTENSION(AISense, AISense.c dummynet.c, $ext_shared)
fi
