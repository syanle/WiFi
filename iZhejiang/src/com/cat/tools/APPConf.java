// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;

import android.os.Environment;
import java.io.File;

public class APPConf
{

    public static String FirstFolder;
    public static String PHOTO_AFTERCUT_PATH = "aftercut.jpg";
    public static String PHOTO_BEFORECUT_PATH = "beforecut.jpg";
    public static String PHOTO_FILE_NAME = "photo_user.jpg";
    public static final String PHOTO_SAVE2_PATH;
    public static final String PHOTO_SAVE_PATH;
    public static String SecondPictureFolder;

    public APPConf()
    {
    }

    static 
    {
        FirstFolder = "AWifi";
        SecondPictureFolder = "Picture";
        PHOTO_SAVE_PATH = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(File.separator).append(FirstFolder).append(File.separator).toString();
        PHOTO_SAVE2_PATH = (new StringBuilder(String.valueOf(PHOTO_SAVE_PATH))).append(SecondPictureFolder).append(File.separator).toString();
    }
}
