

//
// Created by mask on 2017/4/25.
//


#include <jni.h>
#include "demo.h"


/*
 * Class:     myapplication_mask_com_myapplication_MainActivity
 * Method:    FromNative
 * Signature: ()Ljava/lang/String;
 */
                JNIEXPORT jstring JNICALL Java_myapplication_mask_com_myapplication_MainActivity_FromNative
                        (JNIEnv *env, jclass clazz)
{
    return (*env) ->NewStringUTF(env,"Hello from JNI!");
}
