// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

// Referenced classes of package com.mob.tools.utils:
//            Ln

public class SharePrefrenceHelper
{

    private static SharePrefrenceHelper instance;
    private Context context;
    private SharedPreferences prefrence;

    private SharePrefrenceHelper(Context context1)
    {
        context = context1.getApplicationContext();
    }

    public static SharePrefrenceHelper getInstance(Context context1)
    {
        if (instance == null)
        {
            instance = new SharePrefrenceHelper(context1);
        }
        return instance;
    }

    public Object get(String s)
    {
        s = getString(s);
        if (TextUtils.isEmpty(s))
        {
            return null;
        }
        Object obj;
        try
        {
            s = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(s, 2)));
            obj = s.readObject();
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
            return null;
        }
        return obj;
    }

    public boolean getBoolean(String s)
    {
        return prefrence.getBoolean(s, false);
    }

    public float getFloat(String s)
    {
        return prefrence.getFloat(s, 0.0F);
    }

    public int getInt(String s)
    {
        return prefrence.getInt(s, 0);
    }

    public long getLong(String s)
    {
        return prefrence.getLong(s, 0L);
    }

    public String getString(String s)
    {
        return prefrence.getString(s, "");
    }

    public void open(String s)
    {
        open(s, 0);
    }

    public void open(String s, int i)
    {
        s = (new StringBuilder()).append(s).append("_").append(i).toString();
        prefrence = context.getSharedPreferences(s, 0);
    }

    public void put(String s, Object obj)
    {
        if (obj == null)
        {
            return;
        }
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
            objectoutputstream.writeObject(obj);
            objectoutputstream.flush();
            objectoutputstream.close();
            putString(s, Base64.encodeToString(bytearrayoutputstream.toByteArray(), 2));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
        }
    }

    public void putBoolean(String s, Boolean boolean1)
    {
        android.content.SharedPreferences.Editor editor = prefrence.edit();
        editor.putBoolean(s, boolean1.booleanValue());
        editor.commit();
    }

    public void putFloat(String s, Float float1)
    {
        android.content.SharedPreferences.Editor editor = prefrence.edit();
        editor.putFloat(s, float1.floatValue());
        editor.commit();
    }

    public void putInt(String s, Integer integer)
    {
        android.content.SharedPreferences.Editor editor = prefrence.edit();
        editor.putInt(s, integer.intValue());
        editor.commit();
    }

    public void putLong(String s, Long long1)
    {
        android.content.SharedPreferences.Editor editor = prefrence.edit();
        editor.putLong(s, long1.longValue());
        editor.commit();
    }

    public void putString(String s, String s1)
    {
        android.content.SharedPreferences.Editor editor = prefrence.edit();
        editor.putString(s, s1);
        editor.commit();
    }

    public void remove(String s)
    {
        android.content.SharedPreferences.Editor editor = prefrence.edit();
        editor.remove(s);
        editor.commit();
    }
}
