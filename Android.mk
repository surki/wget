
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

# $(ALLOCA) $(OPIE_OBJ) $(GETOPT_OBJ) $(NTLM_OBJ) $(MD5_OBJ)  $(SSL_OBJ)

LOCAL_SRC_FILES :=	src/cmpt.c	\
					src/connect.c \
					src/convert.c \
					src/cookies.c \
					src/ftp.c \
					src/ftp-basic.c \
					src/ftp-ls.c \
					src/hash.c	\
					src/host.c	\
					src/html-parse.c \
					src/html-url.c	\
					src/http.c	\
					src/init.c	\
					src/log.c \
					src/main.c	\
					src/netrc.c \
					src/progress.c	\
					src/ptimer.c \
					src/recur.c \
					src/res.c \
					src/retr.c	\
					src/safe-ctype.c \
					src/snprintf.c	\
					src/spider.c \
					src/url.c \
					src/utils.c \
					src/version.c \
					src/xmalloc.c \
					src/gen-md5.c

LOCAL_CFLAGS :=	-DHAVE_CONFIG_H -DANDROID_CHANGES

LOCAL_C_INCLUDES :=	$(LOCAL_PATH)/src \
					external/openssl/include

LOCAL_SHARED_LIBRARIES := libcrypto libssl

LOCAL_MODULE:= wget

LOCAL_MODULE_CLASS := EXECUTABLES

include $(BUILD_EXECUTABLE)
