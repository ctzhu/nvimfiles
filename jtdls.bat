ECHO off
set server="????"
set version="????"
set data="????"
java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044 ^
 -Declipse.application=org.eclipse.jdt.ls.core.id1 ^
 -Dosgi.bundles.defaultStartLevel=4 ^
 -Declipse.product=org.eclipse.jdt.ls.core.product ^
 -Dlog.level=ALL ^
 -noverify ^
 -Xmx1G ^
 -jar %server%/plugins/org.eclipse.equinox.launcher_%version%.jar ^
 -configuration %server%/config_win -data %data% %*
