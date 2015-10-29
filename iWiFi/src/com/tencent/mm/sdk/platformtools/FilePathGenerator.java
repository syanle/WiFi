// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import com.tencent.mm.algorithm.MD5;
import java.io.File;
import java.io.IOException;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Util, FilesCopy

public class FilePathGenerator
{
    public static final class DIR_HASH_TYPE extends Enum
    {

        public static final DIR_HASH_TYPE ALL_MD5;
        public static final DIR_HASH_TYPE HEAD_2_BYTE;
        private static final DIR_HASH_TYPE x[];

        public static DIR_HASH_TYPE valueOf(String s)
        {
            return (DIR_HASH_TYPE)Enum.valueOf(com/tencent/mm/sdk/platformtools/FilePathGenerator$DIR_HASH_TYPE, s);
        }

        public static DIR_HASH_TYPE[] values()
        {
            return (DIR_HASH_TYPE[])x.clone();
        }

        static 
        {
            HEAD_2_BYTE = new DIR_HASH_TYPE("HEAD_2_BYTE", 0);
            ALL_MD5 = new DIR_HASH_TYPE("ALL_MD5", 1);
            x = (new DIR_HASH_TYPE[] {
                HEAD_2_BYTE, ALL_MD5
            });
        }

        private DIR_HASH_TYPE(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String ANDROID_DIR_SEP = "/";
    public static final int HASH_TYPE_ALL_MD5 = 2;
    public static final int HASH_TYPE_HEAD_2_BYTE = 1;
    public static final String NO_MEDIA_FILENAME = ".nomedia";

    public FilePathGenerator()
    {
    }

    private static String b(String s)
    {
        while (Util.isNullOrNil(s) || s.length() <= 4) 
        {
            return null;
        }
        return (new StringBuilder()).append(s.substring(0, 2)).append("/").append(s.substring(2, 4)).append("/").toString();
    }

    private static boolean c(String s)
    {
        boolean flag;
        File file = new File(s);
        if (file.exists())
        {
            break MISSING_BLOCK_LABEL_62;
        }
        file.mkdirs();
        s = new File((new StringBuilder()).append(s).append(".nomedia").toString());
        flag = s.exists();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        s.createNewFile();
_L2:
        return true;
        s;
        try
        {
            s.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String defGenPathWithOld(String s, String s1, String s2, String s3, String s4, int i)
    {
        String s5 = (new StringBuilder()).append(s).append(s2).append(s3).append(s4).toString();
        s1 = genPath(s1, s2, s3, s4, i);
        if (Util.isNullOrNil(s5) || Util.isNullOrNil(s1))
        {
            s = null;
        } else
        {
            s2 = new File(s1);
            s3 = new File(s5);
            s = s1;
            if (!s2.exists())
            {
                s = s1;
                if (s3.exists())
                {
                    FilesCopy.copy(s5, s1, false);
                    return s1;
                }
            }
        }
        return s;
    }

    public static String genPath(String s, String s1, String s2, String s3, int i)
    {
        if (!Util.isNullOrNil(s) && s.endsWith("/"))
        {
            String s4 = "";
            if (i == 1)
            {
                s4 = b(s2);
            } else
            if (i == 2)
            {
                if (Util.isNullOrNil(s2))
                {
                    s4 = null;
                } else
                {
                    s4 = b(MD5.getMessageDigest(s2.getBytes()));
                }
            }
            if (!Util.isNullOrNil(s4))
            {
                s = (new StringBuilder()).append(s).append(s4).toString();
                if (c(s))
                {
                    return (new StringBuilder()).append(s).append(Util.nullAsNil(s1)).append(s2).append(Util.nullAsNil(s3)).toString();
                }
            }
        }
        return null;
    }
}
