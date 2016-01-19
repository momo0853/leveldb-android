#----------------------------------------------------
# Author: momo0853@live.com
# Time  : Tue Jan 19 14:18:13 CST 2016
#----------------------------------------------------

# This is an automatically generated file, in order to reduce repetitive work.
# Android.mk: For more details, please see "http://developer.android.com/ndk/guides/android_mk.html".
# Application.mk: For more details, please see "http://developer.android.com/ndk/guides/application_mk.html".
# Can identify the suffix for .c .cc .cpp and .a .so.


LOCAL_PATH := $(call my-dir)

#---------- static module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := leveldb_util
LOCAL_ARM_MODULE := arm

LOCAL_CFLAGS := -DLEVELDB_PLATFORM_POSIX -DOS_ANDROID
LOCAL_EXPORT_CFLAGS := $(LOCAL_CFLAGS)
LOCAL_SRC_FILES := \
    util/histogram.cc \
    util/env_posix.cc \
    util/logging.cc \
    util/hash.cc \
    util/crc32c.cc \
    util/cache.cc \
    util/status.cc \
    util/bloom.cc \
    util/env.cc \
    util/coding.cc \
    util/options.cc \
    util/comparator.cc \
    util/filter_policy.cc \
    util/arena.cc

# add port impl to leveldb_util
LOCAL_SRC_FILES += port/port_posix.cc

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/include

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

include $(BUILD_STATIC_LIBRARY)


#---------- static module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := leveldb_table
LOCAL_ARM_MODULE := arm

LOCAL_SRC_FILES := \
    table/block_builder.cc \
    table/two_level_iterator.cc \
    table/filter_block.cc \
    table/format.cc \
    table/block.cc \
    table/iterator.cc \
    table/table_builder.cc \
    table/table.cc \
    table/merger.cc

LOCAL_STATIC_LIBRARIES := leveldb_util

include $(BUILD_STATIC_LIBRARY)


#---------- shared module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := leveldb
LOCAL_ARM_MODULE := arm

LOCAL_SRC_FILES := \
    db/version_set.cc \
    db/log_reader.cc \
    db/dbformat.cc \
    db/version_edit.cc \
    db/db_impl.cc \
    db/leveldb_main.cc \
    db/table_cache.cc \
    db/c.cc \
    db/memtable.cc \
    db/dumpfile.cc \
    db/log_writer.cc \
    db/db_iter.cc \
    db/filename.cc \
    db/builder.cc \
    db/repair.cc \
    db/write_batch.cc

LOCAL_LDLIBS  := -llog

LOCAL_STATIC_LIBRARIES := leveldb_util leveldb_table

include $(BUILD_SHARED_LIBRARY)


