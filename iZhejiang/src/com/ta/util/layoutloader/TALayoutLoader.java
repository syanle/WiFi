// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.layoutloader;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.ta.exception.TANoSuchNameLayoutException;
import java.lang.reflect.Field;

// Referenced classes of package com.ta.util.layoutloader:
//            TAILayoutLoader

public class TALayoutLoader
    implements TAILayoutLoader
{

    private static TALayoutLoader instance;
    private Context mContext;

    private TALayoutLoader(Context context)
    {
        mContext = context;
    }

    public static TALayoutLoader getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new TALayoutLoader(context);
        }
        return instance;
    }

    public int getLayoutID(String s)
        throws android.content.pm.PackageManager.NameNotFoundException, ClassNotFoundException, IllegalArgumentException, IllegalAccessException, TANoSuchNameLayoutException
    {
        int i = readResID("layout", s);
        if (i == 0)
        {
            throw new TANoSuchNameLayoutException();
        } else
        {
            return i;
        }
    }

    public Class readResClass(Class class1, String s)
    {
        Class aclass[];
        int i;
        aclass = class1.getDeclaredClasses();
        i = 0;
_L6:
        if (i < aclass.length) goto _L2; else goto _L1
_L1:
        class1 = null;
_L4:
        return class1;
_L2:
        Class class2;
        class2 = aclass[i];
        Log.v("TAReadSystemRes", class2.getName());
        class1 = class2;
        if (class2.getName().equalsIgnoreCase(s)) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public int readResID(Class class1, String s)
        throws IllegalArgumentException, IllegalAccessException
    {
        Field afield[] = class1.getDeclaredFields();
        int i = 0;
        do
        {
            if (i >= afield.length)
            {
                return 0;
            }
            if (afield[i].getName().equalsIgnoreCase(s))
            {
                return afield[i].getInt(class1);
            }
            i++;
        } while (true);
    }

    public int readResID(String s, String s1)
        throws android.content.pm.PackageManager.NameNotFoundException, ClassNotFoundException, IllegalArgumentException, IllegalAccessException
    {
        String s2 = mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0).packageName;
        if (s2 == null || s2.equalsIgnoreCase(""))
        {
            throw new android.content.pm.PackageManager.NameNotFoundException("\u6CA1\u6709\u83B7\u53D6\u5230\u7CFB\u7EDF\u5305\u540D\uFF01");
        }
        s2 = (new StringBuilder(String.valueOf(s2))).append(".R").toString();
        s = readResClass(Class.forName(s2), (new StringBuilder(String.valueOf(s2))).append("$").append(s).toString());
        if (s == null)
        {
            throw new android.content.pm.PackageManager.NameNotFoundException("\u6CA1\u53D1\u73B0\u8D44\u6E90\u5305\u540D\uFF01");
        } else
        {
            return readResID(((Class) (s)), s1);
        }
    }
}
