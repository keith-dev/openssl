### Generated automatically from Makefile.in by Configure.

##
## Makefile for OpenSSL
##

VERSION=1.1.0-pre2
MAJOR=1
MINOR=1.0
SHLIB_VERSION_NUMBER=1.1
SHLIB_VERSION_HISTORY=
SHLIB_MAJOR=1
SHLIB_MINOR=1
SHLIB_EXT=
PLATFORM=dist
OPTIONS= no-crypto-mdebug no-ec_nistp_64_gcc_128 no-jpake no-md2 no-rc5 no-sctp no-shared no-ssl-trace no-store no-unit-test no-zlib no-zlib-dynamic static-engine
CONFIGURE_ARGS=dist
SHLIB_TARGET=

# HERE indicates where this Makefile lives.  This can be used to indicate
# where sub-Makefiles are expected to be.  Currently has very limited usage,
# and should probably not be bothered with at all.
HERE=.

# INSTALL_PREFIX is for package builders so that they can configure
# for, say, /usr/ and yet have everything installed to /tmp/somedir/usr/.
# Normally it is left empty.
INSTALL_PREFIX=
INSTALLTOP=/usr/local/ssl

# Do not edit this manually. Use Configure --openssldir=DIR to change this!
OPENSSLDIR=/usr/local/ssl

# NO_IDEA - Define to build without the IDEA algorithm
# NO_RC4  - Define to build without the RC4 algorithm
# NO_RC2  - Define to build without the RC2 algorithm
# THREADS - Define when building with threads, you will probably also need any
#           system defines as well, i.e. _REENTRANT for Solaris 2.[34]
# TERMIO  - Define the termio terminal subsystem, needed if sgtty is missing.
# TERMIOS - Define the termios terminal subsystem, Silicon Graphics.
# LONGCRYPT - Define to use HPUX 10.x's long password modification to crypt(3).
# DEVRANDOM - Give this the value of the 'random device' if your OS supports
#           one.  32 bytes will be read from this when the random
#           number generator is initalised.
# SSL_FORBID_ENULL - define if you want the server to be not able to use the
#           NULL encryption ciphers.
#
# LOCK_DEBUG - turns on lots of lock debug output :-)
# REF_CHECK - turn on some xyz_free() assertions.
# REF_PRINT - prints some stuff on structure free.
# MFUNC - Make all Malloc/Free/Realloc calls call
#       CRYPTO_malloc/CRYPTO_free/CRYPTO_realloc which can be setup to
#       call application defined callbacks via CRYPTO_set_mem_functions()
# MD5_ASM needs to be defined to use the x86 assembler for MD5
# SHA1_ASM needs to be defined to use the x86 assembler for SHA1
# RMD160_ASM needs to be defined to use the x86 assembler for RIPEMD160
# Do not define B_ENDIAN or L_ENDIAN if 'unsigned long' == 8.  It must
# equal 4.
# PKCS1_CHECK - pkcs1 tests.

CC= cc
CFLAG= -O
DEPFLAG= -DOPENSSL_NO_CRYPTO_MDEBUG -DOPENSSL_NO_EC_NISTP_64_GCC_128 -DOPENSSL_NO_JPAKE -DOPENSSL_NO_MD2 -DOPENSSL_NO_RC5 -DOPENSSL_NO_SCTP -DOPENSSL_NO_SSL_TRACE -DOPENSSL_NO_STORE -DOPENSSL_NO_UNIT_TEST
PEX_LIBS= 
EX_LIBS= 
EXE_EXT= 
ARFLAGS= 
AR= ar $(ARFLAGS) r
RANLIB= /usr/bin/ranlib
NM= nm
PERL= /usr/bin/perl
#RM= echo --
RM= rm -f
TAR= tar
TARFLAGS= --no-recursion
MAKEDEPPROG=makedepend
LIBDIR=lib

# We let the C compiler driver to take care of .s files. This is done in
# order to be excused from maintaining a separate set of architecture
# dependent assembler flags. E.g. if you throw -mcpu=ultrasparc at SPARC
# gcc, then the driver will automatically translate it to -xarch=v8plus
# and pass it down to assembler.
AS=$(CC) -c
ASFLAG=$(CFLAG)

# For x86 assembler: Set PROCESSOR to 386 if you want to support
# the 80386.
PROCESSOR= 

# CPUID module collects small commonly used assembler snippets
CPUID_OBJ= mem_clr.o
BN_ASM= bn_asm.o
EC_ASM= 
DES_ENC= des_enc.o fcrypt_b.o
AES_ENC= aes_core.o aes_cbc.o
BF_ENC= bf_enc.o
CAST_ENC= c_enc.o
RC4_ENC= rc4_enc.o rc4_skey.o
RC5_ENC= rc5_enc.o
MD5_ASM_OBJ= 
SHA1_ASM_OBJ= 
RMD160_ASM_OBJ= 
WP_ASM_OBJ= wp_block.o
CMLL_ENC= camellia.o cmll_misc.o cmll_cbc.o
MODES_ASM_OBJ= 
ENGINES_ASM_OBJ= 
CHACHA_ENC= chacha_enc.o
POLY1305_ASM_OBJ= 
PERLASM_SCHEME= 

# Zlib stuff
ZLIB_INCLUDE=
LIBZLIB=

# This is the location of fipscanister.o and friends.
# The FIPS module build will place it $(INSTALLTOP)/lib
# but since $(INSTALLTOP) can only take the default value
# when the module is built it will be in /usr/local/ssl/lib
# $(INSTALLTOP) for this build may be different so hard
# code the path.

FIPSLIBDIR=/usr/local/ssl/fips-2.0/lib/

# The location of the library which contains fipscanister.o
# normally it will be libcrypto. If not compiling in FIPS mode
# at all this is empty making it a useful test for a FIPS compile.

FIPSCANLIB=

# Shared library base address. Currently only used on Windows.
#

BASEADDR=0xFB00000

DIRS=   crypto ssl engines apps test tools
ENGDIRS= ccgost
SHLIBDIRS= crypto ssl
INSTALL_SUBS= engines apps tools

# dirs in crypto to build
SDIRS=  \
	objects \
	md4 md5 sha mdc2 hmac ripemd whrlpool poly1305 \
	des aes rc2 rc4 idea bf cast camellia seed chacha modes \
	bn ec rsa dsa dh dso engine \
	buffer bio stack lhash rand err \
	evp asn1 pem x509 x509v3 conf txt_db pkcs7 pkcs12 comp ocsp ui \
	cms pqueue ts srp cmac ct async
# keep in mind that the above list is adjusted by ./Configure
# according to no-xxx arguments...

# tests to perform.  "alltests" is a special word indicating that all tests
# should be performed.
TESTS = alltests

MAKEFILE= Makefile

MANDIR=$(OPENSSLDIR)/man
MAN1=1
MAN3=3
MANSUFFIX=
HTMLSUFFIX=html
HTMLDIR=$(OPENSSLDIR)/html
SHELL=/bin/sh

TOP=    .
LIBS=   libcrypto.a libssl.a
SHARED_CRYPTO=libcrypto$(SHLIB_EXT)
SHARED_SSL=libssl$(SHLIB_EXT)
SHARED_LIBS=
SHARED_LIBS_LINK_EXTS=
SHARED_LDFLAGS=

GENERAL=        Makefile
BASENAME=       openssl
NAME=           $(BASENAME)-$(VERSION)
TARFILE=        ../$(NAME).tar
HEADER=         e_os.h

# Directories created on install if they don't exist.
INSTALLDIRS=	\
		$(INSTALL_PREFIX)$(INSTALLTOP)/bin \
		$(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR) \
		$(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/engines \
		$(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/pkgconfig \
		$(INSTALL_PREFIX)$(INSTALLTOP)/include/openssl \
		$(INSTALL_PREFIX)$(OPENSSLDIR)/misc \
		$(INSTALL_PREFIX)$(OPENSSLDIR)/certs \
		$(INSTALL_PREFIX)$(OPENSSLDIR)/private

all: Makefile build_all

# as we stick to -e, CLEARENV ensures that local variables in lower
# Makefiles remain local and variable. $${VAR+VAR} is tribute to Korn
# shell, which [annoyingly enough] terminates unset with error if VAR
# is not present:-( TOP= && unset TOP is tribute to HP-UX /bin/sh,
# which terminates unset with error if no variable was present:-(
CLEARENV=	TOP= && unset TOP $${LIB+LIB} $${LIBS+LIBS}	\
		$${INCLUDE+INCLUDE} $${INCLUDES+INCLUDES}	\
		$${DIR+DIR} $${DIRS+DIRS} $${SRC+SRC}		\
		$${LIBSRC+LIBSRC} $${LIBOBJ+LIBOBJ} $${ALL+ALL}	\
		$${HEADER+HEADER}				\
		$${GENERAL+GENERAL} $${CFLAGS+CFLAGS}		\
		$${ASFLAGS+ASFLAGS} $${AFLAGS+AFLAGS}		\
		$${LDCMD+LDCMD} $${LDFLAGS+LDFLAGS} $${SCRIPTS+SCRIPTS}	\
		$${SHAREDCMD+SHAREDCMD} $${SHAREDFLAGS+SHAREDFLAGS}	\
		$${SHARED_LIB+SHARED_LIB} $${LIBEXTRAS+LIBEXTRAS}

# LC_ALL=C ensures that error [and other] messages are delivered in
# same language for uniform treatment.
BUILDENV=	LC_ALL=C PLATFORM='$(PLATFORM)' PROCESSOR='$(PROCESSOR)'\
		CC='$(CC)' CFLAG='$(CFLAG)' 			\
		AS='$(CC)' ASFLAG='$(CFLAG) -c'			\
		AR='$(AR)' NM='$(NM)' RANLIB='$(RANLIB)'	\
		CROSS_COMPILE='$(CROSS_COMPILE)'	\
		PERL='$(PERL)' ENGDIRS='$(ENGDIRS)'		\
		SDIRS='$(SDIRS)' LIBRPATH='$(INSTALLTOP)/$(LIBDIR)'	\
		INSTALL_PREFIX='$(INSTALL_PREFIX)'		\
		INSTALLTOP='$(INSTALLTOP)' OPENSSLDIR='$(OPENSSLDIR)'	\
		LIBDIR='$(LIBDIR)'				\
		MAKEDEPEND='$$$${TOP}/util/domd $$$${TOP} -MD $(MAKEDEPPROG)' \
		DEPFLAG='$(DEPFLAG)'                    	\
		MAKEDEPPROG='$(MAKEDEPPROG)'			\
		SHARED_LDFLAGS='$(SHARED_LDFLAGS)'		\
		ZLIB_INCLUDE='$(ZLIB_INCLUDE)' LIBZLIB='$(LIBZLIB)'	\
		EXE_EXT='$(EXE_EXT)' SHARED_LIBS='$(SHARED_LIBS)'	\
		SHLIB_EXT='$(SHLIB_EXT)' SHLIB_TARGET='$(SHLIB_TARGET)'	\
		PEX_LIBS='$(PEX_LIBS)' EX_LIBS='$(EX_LIBS)'	\
		CPUID_OBJ='$(CPUID_OBJ)' BN_ASM='$(BN_ASM)'	\
		EC_ASM='$(EC_ASM)' DES_ENC='$(DES_ENC)'		\
		AES_ENC='$(AES_ENC)' CMLL_ENC='$(CMLL_ENC)'	\
		BF_ENC='$(BF_ENC)' CAST_ENC='$(CAST_ENC)'	\
		RC4_ENC='$(RC4_ENC)' RC5_ENC='$(RC5_ENC)'	\
		SHA1_ASM_OBJ='$(SHA1_ASM_OBJ)'			\
		MD5_ASM_OBJ='$(MD5_ASM_OBJ)'			\
		RMD160_ASM_OBJ='$(RMD160_ASM_OBJ)'		\
		WP_ASM_OBJ='$(WP_ASM_OBJ)'			\
		MODES_ASM_OBJ='$(MODES_ASM_OBJ)'		\
		ENGINES_ASM_OBJ='$(ENGINES_ASM_OBJ)'		\
		CHACHA_ENC='$(CHACHA_ENC)'			\
		POLY1305_ASM_OBJ='$(POLY1305_ASM_OBJ)'		\
		PERLASM_SCHEME='$(PERLASM_SCHEME)'		\
		FIPSLIBDIR='${FIPSLIBDIR}'			\
		FIPSCANLIB="$${FIPSCANLIB:-$(FIPSCANLIB)}"	\
		THIS=$${THIS:-$@} MAKEFILE=Makefile MAKEOVERRIDES=
# MAKEOVERRIDES= effectively "equalizes" GNU-ish and SysV-ish make flavors,
# which in turn eliminates ambiguities in variable treatment with -e.

# BUILD_CMD is a generic macro to build a given target in a given
# subdirectory.  The target must be given through the shell variable
# `target' and the subdirectory to build in must be given through `dir'.
# This macro shouldn't be used directly, use RECURSIVE_BUILD_CMD or
# BUILD_ONE_CMD instead.
#
# RECURSIVE_BUILD_CMD is a macro to build a given target in all
# subdirectories defined in $(DIRS).  It requires that the target
# is given through the shell variable `target'.
#
# BUILD_ONE_CMD is a macro to build a given target in a given
# subdirectory if that subdirectory is part of $(DIRS).  It requires
# exactly the same shell variables as BUILD_CMD.
BUILD_CMD=  if [ -d "$$dir" ]; then \
	    (	cd $$dir && echo "making $$target in $$dir..." && \
		$(CLEARENV) && $(MAKE) -e $(BUILDENV) TOP=.. DIR=$$dir $$target \
	    ) || exit 1; \
	    fi
RECURSIVE_BUILD_CMD=for dir in $(DIRS); do $(BUILD_CMD); done
BUILD_ONE_CMD=\
	if expr " $(DIRS) " : ".* $$dir " >/dev/null 2>&1; then \
		$(BUILD_CMD); \
	fi

reflect:
	@[ -n "$(THIS)" ] && $(CLEARENV) && $(MAKE) $(THIS) -e $(BUILDENV)

sub_all: build_all

build_all: build_libs build_apps build_tests build_tools

build_libs: build_libcrypto build_libssl openssl.pc

build_libcrypto: build_crypto build_engines libcrypto.pc
build_libssl: build_ssl libssl.pc

build_crypto:
	@dir=crypto; target=all; $(BUILD_ONE_CMD)
build_ssl: build_crypto
	@dir=ssl; target=all; $(BUILD_ONE_CMD)
build_engines: build_crypto
	@dir=engines; target=all; AS='$(CC) -c'; export AS; $(BUILD_ONE_CMD)

build_apps: build_libs
	@dir=apps; target=all; $(BUILD_ONE_CMD)
build_tests: build_libs
	@dir=test; target=all; $(BUILD_ONE_CMD)
build_tools: build_libs
	@dir=tools; target=all; $(BUILD_ONE_CMD)

all_testapps: build_libs build_testapps
build_testapps:
	@dir=crypto; target=testapps; $(BUILD_ONE_CMD)

libcrypto$(SHLIB_EXT): libcrypto.a
	@if [ "$(SHLIB_TARGET)" != "" ]; then \
		if [ "$(FIPSCANLIB)" = "libcrypto" ]; then \
			FIPSLD_CC="$(CC)"; CC=fips/fipsld; \
			export CC FIPSLD_CC; \
		fi; \
		$(MAKE) -e SHLIBDIRS=crypto CC="$${CC:-$(CC)}" build-shared; \
	else \
		echo "There's no support for shared libraries on this platform" >&2; \
		exit 1; \
	fi

libssl$(SHLIB_EXT): libcrypto$(SHLIB_EXT) libssl.a
	@if [ "$(SHLIB_TARGET)" != "" ]; then \
		$(MAKE) SHLIBDIRS=ssl SHLIBDEPS='-lcrypto' build-shared; \
	else \
		echo "There's no support for shared libraries on this platform" >&2; \
		exit 1; \
	fi

clean-shared:
	@set -e; for i in $(SHLIBDIRS); do \
		if [ -n "$(SHARED_LIBS_LINK_EXTS)" ]; then \
			tmp="$(SHARED_LIBS_LINK_EXTS)"; \
			for j in $${tmp:-x}; do \
				( set -x; rm -f lib$$i$$j ); \
			done; \
		fi; \
		( set -x; rm -f lib$$i$(SHLIB_EXT) ); \
		if expr "$(PLATFORM)" : "Cygwin" >/dev/null; then \
			( set -x; rm -f cyg$$i$(SHLIB_EXT) lib$$i$(SHLIB_EXT).a ); \
		fi; \
	done

link-shared:
	@ set -e; for i in $(SHLIBDIRS); do \
		$(MAKE) -f $(HERE)/Makefile.shared -e $(BUILDENV) \
			LIBNAME=$$i LIBVERSION=$(SHLIB_MAJOR).$(SHLIB_MINOR) \
			LIBCOMPATVERSIONS=";$(SHLIB_VERSION_HISTORY)" \
			symlink.$(SHLIB_TARGET); \
		libs="$$libs -l$$i"; \
	done

build-shared: do_$(SHLIB_TARGET) link-shared

do_$(SHLIB_TARGET):
	@ set -e; libs='-L. $(SHLIBDEPS)'; for i in $(SHLIBDIRS); do \
		$(CLEARENV) && $(MAKE) -f Makefile.shared -e $(BUILDENV) \
			LIBNAME=$$i LIBVERSION=$(SHLIB_MAJOR).$(SHLIB_MINOR) \
			LIBCOMPATVERSIONS=";$(SHLIB_VERSION_HISTORY)" \
			LIBDEPS="$$libs $(EX_LIBS)" \
			link_a.$(SHLIB_TARGET); \
		libs="-l$$i $$libs"; \
	done

libcrypto.pc: Makefile
	@ ( echo 'prefix=$(INSTALLTOP)'; \
	    echo 'exec_prefix=$${prefix}'; \
	    echo 'libdir=$${exec_prefix}/$(LIBDIR)'; \
	    echo 'includedir=$${prefix}/include'; \
	    echo ''; \
	    echo 'Name: OpenSSL-libcrypto'; \
	    echo 'Description: OpenSSL cryptography library'; \
	    echo 'Version: '$(VERSION); \
	    echo 'Requires: '; \
	    echo 'Libs: -L$${libdir} -lcrypto'; \
	    echo 'Libs.private: $(EX_LIBS)'; \
	    echo 'Cflags: -I$${includedir}' ) > libcrypto.pc

libssl.pc: Makefile
	@ ( echo 'prefix=$(INSTALLTOP)'; \
	    echo 'exec_prefix=$${prefix}'; \
	    echo 'libdir=$${exec_prefix}/$(LIBDIR)'; \
	    echo 'includedir=$${prefix}/include'; \
	    echo ''; \
	    echo 'Name: OpenSSL-libssl'; \
	    echo 'Description: Secure Sockets Layer and cryptography libraries'; \
	    echo 'Version: '$(VERSION); \
	    echo 'Requires.private: libcrypto'; \
	    echo 'Libs: -L$${libdir} -lssl'; \
	    echo 'Libs.private: $(EX_LIBS)'; \
	    echo 'Cflags: -I$${includedir}' ) > libssl.pc

openssl.pc: Makefile
	@ ( echo 'prefix=$(INSTALLTOP)'; \
	    echo 'exec_prefix=$${prefix}'; \
	    echo 'libdir=$${exec_prefix}/$(LIBDIR)'; \
	    echo 'includedir=$${prefix}/include'; \
	    echo ''; \
	    echo 'Name: OpenSSL'; \
	    echo 'Description: Secure Sockets Layer and cryptography libraries and tools'; \
	    echo 'Version: '$(VERSION); \
	    echo 'Requires: libssl libcrypto' ) > openssl.pc

Makefile: Makefile.in Configure config
	@echo "Makefile is older than Makefile.in, Configure or config."
	@echo "Reconfigure the source tree (via './config' or 'perl Configure'), please."
	@false

libclean:
	rm -f *.map *.so *.so.* *.dylib *.dll engines/*.so engines/*.dll engines/*.dylib *.a engines/*.a */lib */*/lib

clean:	libclean
	rm -f */*/*.o */*.o *.o core a.out fluff rehash.time testlog make.log cctest cctest.c
	rm -rf *.bak certs/.0
	@set -e; target=clean; $(RECURSIVE_BUILD_CMD)
	rm -f $(LIBS) tags TAGS
	rm -f openssl.pc libssl.pc libcrypto.pc
	rm -f speed.* .pure
	rm -f $(TARFILE)

makefile.one: files
	$(PERL) util/mk1mf.pl >makefile.one; \
	sh util/do_ms.sh

files:
	$(PERL) $(TOP)/util/files.pl Makefile > $(TOP)/MINFO
	@set -e; target=files; $(RECURSIVE_BUILD_CMD)

gentests:
	@(cd test && echo "generating dummy tests (if needed)..." && \
	$(CLEARENV) && $(MAKE) -e $(BUILDENV) TESTS='$(TESTS)' OPENSSL_DEBUG_MEMORY=on generate );

dclean:
	@set -e; target=dclean; $(RECURSIVE_BUILD_CMD)

rehash: rehash.time
rehash.time: certs build_apps
	@if [ -z "$(CROSS_COMPILE)" ]; then \
		(OPENSSL="`pwd`/util/opensslwrap.sh"; \
		[ -x "apps/openssl.exe" ] && OPENSSL="apps/openssl.exe" || :; \
		OPENSSL_DEBUG_MEMORY=on; OPENSSL_CONF=/dev/null ; \
		export OPENSSL OPENSSL_DEBUG_MEMORY OPENSSL_CONF; \
		$$OPENSSL rehash certs/demo \
		|| $(PERL) tools/c_rehash certs/demo) && \
		touch rehash.time; \
	else :; fi

test:   tests

test_ordinals:
	TOP=$(TOP) PERL=$(PERL) $(PERL) test/run_tests.pl test_ordinals

tests: rehash
	@(cd test && echo "testing..." && \
	$(CLEARENV) && $(MAKE) -e $(BUILDENV) TOP=.. TESTS='$(TESTS)' OPENSSL_DEBUG_MEMORY=on OPENSSL_CONF=../apps/openssl.cnf tests );
	@if [ -z "$(CROSS_COMPILE)" ]; then \
		OPENSSL_CONF=apps/openssl.cnf util/opensslwrap.sh version -a; \
	fi

list-tests:
	@(cd test && \
	        $(CLEARENV) && $(MAKE) -e $(BUILDENV) TOP=.. list-tests)

report:
	@$(PERL) util/selftest.pl

update: errors util/libeay.num util/ssleay.num TABLE test_ordinals
	@set -e; target=update; $(RECURSIVE_BUILD_CMD)

depend:
	@set -e; target=depend; $(RECURSIVE_BUILD_CMD)

lint:
	@set -e; target=lint; $(RECURSIVE_BUILD_CMD)

tags TAGS: FORCE
	rm -f TAGS tags
	-ctags -R .
	-etags `find . -name '*.[ch]' -o -name '*.pm'`

FORCE:

errors:
	$(PERL) util/ck_errf.pl -strict */*.c */*/*.c
	$(PERL) util/mkerr.pl -recurse -write
	(cd engines; $(MAKE) PERL=$(PERL) errors)
	(cd crypto/ct; $(MAKE) PERL=$(PERL) errors)

util/libeay.num::
	$(PERL) util/mkdef.pl crypto update

util/ssleay.num::
	$(PERL) util/mkdef.pl ssl update

TABLE: Configure Configurations/*.conf
	(echo 'Output of `Configure TABLE'"':"; \
	$(PERL) Configure TABLE) > TABLE

# Build distribution tar-file. As the list of files returned by "find" is
# pretty long, on several platforms a "too many arguments" error or similar
# would occur. Therefore the list of files is temporarily stored into a file
# and read directly, requiring GNU-Tar. Call "make TAR=gtar dist" if the normal
# tar does not support the --files-from option.
TAR_COMMAND=$(TAR) $(TARFLAGS) --files-from $(TARFILE).list \
	                       --owner 0 --group 0 \
			       --transform 's|^|$(NAME)/|' \
			       -cvf -

$(TARFILE).list:
	find * \! -name STATUS \! -name TABLE \! -name '*.o' \! -name '*.a' \
	       \! -name '*.so' \! -name '*.so.*'  \! -name 'openssl' \
	       \! -name '*test' \! -name '.#*' \! -name '*~' \!	-type l \
	    | sort > $(TARFILE).list

tar: $(TARFILE).list
	find . -type d -print | xargs chmod 755
	find . -type f -print | xargs chmod a+r
	find . -type f -perm -0100 -print | xargs chmod a+x
	$(TAR_COMMAND) | gzip --best > $(TARFILE).gz
	rm -f $(TARFILE).list
	ls -l $(TARFILE).gz

tar-snap: $(TARFILE).list
	$(TAR_COMMAND) > $(TARFILE)
	rm -f $(TARFILE).list
	ls -l $(TARFILE)

dist:   
	$(PERL) Configure dist
	@$(MAKE) SDIRS='$(SDIRS)' clean
	@$(MAKE) TAR='$(TAR)' TARFLAGS='$(TARFLAGS)' $(DISTTARVARS) tar

install: all install_docs install_sw

uninstall: uninstall_sw uninstall_docs

install_sw:
	@$(PERL) $(TOP)/util/mkdir-p.pl $(INSTALLDIRS)
	@set -e; for i in include/openssl/*.h; do \
	(cp $$i $(INSTALL_PREFIX)$(INSTALLTOP)/$$i; \
	chmod 644 $(INSTALL_PREFIX)$(INSTALLTOP)/$$i ); \
	done;
	@set -e; target=install; for dir in $(INSTALL_SUBS); do $(BUILD_CMD); done
	@set -e; liblist="$(LIBS)"; for i in $$liblist ;\
	do \
		if [ -f "$$i" ]; then \
		(       echo installing $$i; \
			cp $$i $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i.new; \
			$(RANLIB) $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i.new; \
			chmod 644 $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i.new; \
			mv -f $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i.new $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i ); \
		fi; \
	done;
	@set -e; if [ -n "$(SHARED_LIBS)" ]; then \
		tmp="$(SHARED_LIBS)"; \
		for i in $${tmp:-x}; \
		do \
			if [ -f "$$i" -o -f "$$i.a" ]; then \
			(       echo installing $$i; \
				if expr "$(PLATFORM)" : "Cygwin" >/dev/null; then \
					c=`echo $$i | sed 's/^lib\(.*\)\.dll\.a/cyg\1-$(SHLIB_VERSION_NUMBER).dll/'`; \
					cp $$c $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$c.new; \
					chmod 755 $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$c.new; \
					mv -f $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$c.new $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$c; \
					cp $$i $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i.new; \
					chmod 644 $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i.new; \
					mv -f $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i.new $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i; \
				else \
					cp $$i $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i.new; \
					chmod 555 $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i.new; \
					mv -f $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i.new $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i; \
				fi ); \
				if expr $(PLATFORM) : 'mingw' > /dev/null; then \
				(	case $$i in \
						*crypto*) i=libeay32.dll;; \
						*ssl*)    i=ssleay32.dll;; \
					esac; \
					echo installing $$i; \
					cp $$i $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$i.new; \
					chmod 755 $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$i.new; \
					mv -f $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$i.new $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$i ); \
				fi; \
			fi; \
		done; \
		(	here="`pwd`"; \
			cd $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR); \
			$(MAKE) -f $$here/Makefile HERE="$$here" link-shared ); \
		if [ "$(INSTALLTOP)" != "/usr" ]; then \
			echo 'OpenSSL shared libraries have been installed in:'; \
			echo '  $(INSTALLTOP)'; \
		fi; \
	fi
	cp libcrypto.pc $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/pkgconfig
	chmod 644 $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/pkgconfig/libcrypto.pc
	cp libssl.pc $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/pkgconfig
	chmod 644 $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/pkgconfig/libssl.pc
	cp openssl.pc $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/pkgconfig
	chmod 644 $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/pkgconfig/openssl.pc

uninstall_sw:
	cd include/openssl && files=* && cd $(INSTALL_PREFIX)$(INSTALLTOP)/include/openssl && $(RM) $$files
	@for i in $(LIBS) ;\
	do \
		test -f "$$i" && \
		echo $(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i && \
		$(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i; \
	done;
	@if [ -n "$(SHARED_LIBS)" ]; then \
		tmp="$(SHARED_LIBS)"; \
		for i in $${tmp:-x}; \
		do \
			if [ -f "$$i" -o -f "$$i.a" ]; then \
				if expr "$(PLATFORM)" : "Cygwin" >/dev/null; then \
					c=`echo $$i | sed 's/^lib\(.*\)\.dll\.a/cyg\1-$(SHLIB_VERSION_NUMBER).dll/'`; \
					echo $(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$c; \
					$(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$c; \
					echo $(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i; \
					$(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i; \
				else \
					echo $(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i; \
					$(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/$$i; \
				fi; \
				if expr $(PLATFORM) : 'mingw' > /dev/null; then \
					case $$i in \
						*crypto*) i=libeay32.dll;; \
						*ssl*)    i=ssleay32.dll;; \
					esac; \
					echo $(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$i; \
					$(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/bin/$$i; \
				fi; \
			fi; \
		done; \
	fi
	$(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/pkgconfig/libcrypto.pc
	$(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/pkgconfig/libssl.pc
	$(RM) $(INSTALL_PREFIX)$(INSTALLTOP)/$(LIBDIR)/pkgconfig/openssl.pc
	@target=uninstall; $(RECURSIVE_BUILD_CMD)

install_html_docs:
	here="`pwd`"; \
	filecase=; \
	case "$(PLATFORM)" in DJGPP|Cygwin*|mingw*|darwin*-*-cc) \
		filecase=-i; \
	esac; \
	for subdir in apps crypto ssl; do \
		$(PERL) $(TOP)/util/mkdir-p $(INSTALL_PREFIX)$(HTMLDIR)/$$subdir; \
		for i in doc/$$subdir/*.pod; do \
			fn=`basename $$i .pod`; \
			echo "installing html/$$fn.$(HTMLSUFFIX)"; \
			cat $$i \
			| sed -r 's/L<([^)]*)(\([0-9]\))?\|([^)]*)(\([0-9]\))?>/L<\1|\3>/g' \
			| pod2html --podroot=doc --htmlroot=.. --podpath=$$subdir:apps:crypto:ssl \
			| sed -r 's/<!DOCTYPE.*//g' \
			> $(INSTALL_PREFIX)$(HTMLDIR)/$$subdir/$$fn.$(HTMLSUFFIX); \
			$(PERL) util/extract-names.pl < $$i | \
				grep -v $$filecase "^$$fn\$$" | \
				(cd $(INSTALL_PREFIX)$(HTMLDIR)/$$subdir; \
				 while read n; do \
					PLATFORM=$(PLATFORM) $$here/util/point.sh $$fn.$(HTMLSUFFIX) "$$n".$(HTMLSUFFIX); \
				 done); \
		done; \
	done

uninstall_html_docs:
	here="`pwd`"; \
	filecase=; \
	case "$(PLATFORM)" in DJGPP|Cygwin*|mingw*|darwin*-*-cc) \
		filecase=-i; \
	esac; \
	for subdir in apps crypto ssl; do \
		for i in doc/$$subdir/*.pod; do \
			fn=`basename $$i .pod`; \
			$(RM) $(INSTALL_PREFIX)$(HTMLDIR)/$$subdir/$$fn.$(HTMLSUFFIX); \
			$(PERL) util/extract-names.pl < $$i | \
				grep -v $$filecase "^$$fn\$$" | \
				while read n; do \
					$(RM) $(INSTALL_PREFIX)$(HTMLDIR)/$$subdir/"$$n".$(HTMLSUFFIX); \
				done; \
		done; \
	done

install_docs:
	@$(PERL) $(TOP)/util/mkdir-p.pl \
		$(INSTALL_PREFIX)$(MANDIR)/man1 \
		$(INSTALL_PREFIX)$(MANDIR)/man3 \
		$(INSTALL_PREFIX)$(MANDIR)/man5 \
		$(INSTALL_PREFIX)$(MANDIR)/man7
	here="`pwd`"; \
	filecase=; \
	case "$(PLATFORM)" in DJGPP|Cygwin*|mingw*|darwin*-*-cc) \
		filecase=-i; \
	esac; \
	set -e; for i in doc/apps/*.pod; do \
		fn=`basename $$i .pod`; \
		sec=`$(PERL) util/extract-section.pl 1 < $$i`; \
		echo "installing man$$sec/$$fn.$${sec}$(MANSUFFIX)"; \
		(cd `$(PERL) util/dirname.pl $$i`; \
		pod2man \
			--section=$$sec --center=OpenSSL \
			--release=$(VERSION) `basename $$i`) \
			>  $(INSTALL_PREFIX)$(MANDIR)/man$$sec/$$fn.$${sec}$(MANSUFFIX); \
		$(PERL) util/extract-names.pl < $$i | \
			(grep -v $$filecase "^$$fn\$$"; true) | \
			(grep -v "[	]"; true) | \
			(cd $(INSTALL_PREFIX)$(MANDIR)/man$$sec/; \
			 while read n; do \
				PLATFORM=$(PLATFORM) $$here/util/point.sh $$fn.$${sec}$(MANSUFFIX) "$$n".$${sec}$(MANSUFFIX); \
			 done); \
	done; \
	set -e; for i in doc/crypto/*.pod doc/ssl/*.pod; do \
		fn=`basename $$i .pod`; \
		sec=`$(PERL) util/extract-section.pl 3 < $$i`; \
		echo "installing man$$sec/$$fn.$${sec}$(MANSUFFIX)"; \
		(cd `$(PERL) util/dirname.pl $$i`; \
		pod2man \
			--section=$$sec --center=OpenSSL \
			--release=$(VERSION) `basename $$i`) \
			>  $(INSTALL_PREFIX)$(MANDIR)/man$$sec/$$fn.$${sec}$(MANSUFFIX); \
		$(PERL) util/extract-names.pl < $$i | \
			(grep -v $$filecase "^$$fn\$$"; true) | \
			(grep -v "[	]"; true) | \
			(cd $(INSTALL_PREFIX)$(MANDIR)/man$$sec/; \
			 while read n; do \
				PLATFORM=$(PLATFORM) $$here/util/point.sh $$fn.$${sec}$(MANSUFFIX) "$$n".$${sec}$(MANSUFFIX); \
			 done); \
	done

uninstall_docs:
	@here="`pwd`"; \
	filecase=; \
	case "$(PLATFORM)" in DJGPP|Cygwin*|mingw*) \
		filecase=-i; \
	esac; \
	for i in doc/apps/*.pod; do \
		fn=`basename $$i .pod`; \
		sec=`$(PERL) util/extract-section.pl 1 < $$i`; \
		echo $(RM) $(INSTALL_PREFIX)$(MANDIR)/man$$sec/$$fn.$${sec}$(MANSUFFIX); \
		$(RM) $(INSTALL_PREFIX)$(MANDIR)/man$$sec/$$fn.$${sec}$(MANSUFFIX); \
		$(PERL) util/extract-names.pl < $$i | \
			(grep -v $$filecase "^$$fn\$$"; true) | \
			(grep -v "[	]"; true) | \
			while read n; do \
				echo $(RM) $(INSTALL_PREFIX)$(MANDIR)/man$$sec/"$$n".$${sec}$(MANSUFFIX); \
				$(RM) $(INSTALL_PREFIX)$(MANDIR)/man$$sec/"$$n".$${sec}$(MANSUFFIX); \
			done; \
	done; \
	for i in doc/crypto/*.pod doc/ssl/*.pod; do \
		fn=`basename $$i .pod`; \
		sec=`$(PERL) util/extract-section.pl 3 < $$i`; \
		echo $(RM) $(INSTALL_PREFIX)$(MANDIR)/man$$sec/$$fn.$${sec}$(MANSUFFIX); \
		$(RM) $(INSTALL_PREFIX)$(MANDIR)/man$$sec/$$fn.$${sec}$(MANSUFFIX); \
		$(PERL) util/extract-names.pl < $$i | \
			(grep -v $$filecase "^$$fn\$$"; true) | \
			(grep -v "[	]"; true) | \
			while read n; do \
				echo $(RM) $(INSTALL_PREFIX)$(MANDIR)/man$$sec/"$$n".$${sec}$(MANSUFFIX); \
				$(RM) $(INSTALL_PREFIX)$(MANDIR)/man$$sec/"$$n".$${sec}$(MANSUFFIX); \
			done; \
	done

# DO NOT DELETE THIS LINE -- make depend depends on it.
