#define USE_SOCKETS
#include "e_os.h"

/* BEGIN BIO_ADDRINFO/BIO_ADDR stuff. */

#ifndef OPENSSL_NO_SOCK
/*
 * Throughout this file and b_addr.c, the existence of the macro
 * AI_PASSIVE is used to detect the availability of struct addrinfo,
 * getnameinfo() and getaddrinfo().  If that macro doesn't exist,
 * we use our own implementation instead.
 */

/*
 * It's imperative that these macros get defined before openssl/bio.h gets
 * included.  Otherwise, the AI_PASSIVE hack will not work properly.
 * For clarity, we check for internal/cryptlib.h since it's a common header
 * that also includes bio.h.
 */
# ifdef HEADER_CRYPTLIB_H
#  error internal/cryptlib.h included before bio_lcl.h
# endif
# ifdef HEADER_BIO_H
#  error openssl/bio.h included before bio_lcl.h
# endif

/*
 * Undefine AF_UNIX on systems that define it but don't support it.
 */
# if defined(OPENSSL_SYS_WINDOWS) || defined(OPENSSL_SYS_VMS)
#  undef AF_UNIX
# endif

# ifdef AI_PASSIVE
#  define bio_addrinfo_st addrinfo
#  define bai_family      ai_family
#  define bai_socktype    ai_socktype
#  define bai_protocol    ai_protocol
#  define bai_addrlen     ai_addrlen
#  define bai_addr        ai_addr
#  define bai_next        ai_next
# else
struct bio_addrinfo_st {
    int bai_family;
    int bai_socktype;
    int bai_protocol;
    size_t bai_addrlen;
    struct sockaddr *bai_addr;
    struct bio_addrinfo_st *bai_next;
};
# endif

union bio_addr_st {
    struct sockaddr sa;
# ifdef AF_INET6
    struct sockaddr_in6 sin6;
# endif
    struct sockaddr_in sin;
# ifdef AF_UNIX
    struct sockaddr_un sun;
# endif
};
#endif

/* END BIO_ADDRINFO/BIO_ADDR stuff. */

#include "internal/cryptlib.h"
#include <openssl/bio.h>

#ifndef OPENSSL_NO_SOCK
# ifdef OPENSSL_SYS_VMS
typedef unsigned int socklen_t;
# endif

int BIO_ADDR_make(BIO_ADDR *ap, const struct sockaddr *sa);
const struct sockaddr *BIO_ADDR_sockaddr(const BIO_ADDR *ap);
struct sockaddr *BIO_ADDR_sockaddr_noconst(BIO_ADDR *ap);
socklen_t BIO_ADDR_sockaddr_size(const BIO_ADDR *ap);
socklen_t BIO_ADDRINFO_sockaddr_size(const BIO_ADDRINFO *bai);
const struct sockaddr *BIO_ADDRINFO_sockaddr(const BIO_ADDRINFO *bai);
#endif

#if BIO_FLAGS_UPLINK==0
/* Shortcut UPLINK calls on most platforms... */
# define UP_stdin        stdin
# define UP_stdout       stdout
# define UP_stderr       stderr
# define UP_fprintf      fprintf
# define UP_fgets        fgets
# define UP_fread        fread
# define UP_fwrite       fwrite
# undef  UP_fsetmod
# define UP_feof         feof
# define UP_fclose       fclose

# define UP_fopen        fopen
# define UP_fseek        fseek
# define UP_ftell        ftell
# define UP_fflush       fflush
# define UP_ferror       ferror
# ifdef _WIN32
#  define UP_fileno       _fileno
#  define UP_open         _open
#  define UP_read         _read
#  define UP_write        _write
#  define UP_lseek        _lseek
#  define UP_close        _close
# else
#  define UP_fileno       fileno
#  define UP_open         open
#  define UP_read         read
#  define UP_write        write
#  define UP_lseek        lseek
#  define UP_close        close
# endif

#endif

