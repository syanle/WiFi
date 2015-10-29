// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.sdkutil;

import java.util.HashMap;

public class BrowserAuth
{

    static final boolean $assertionsDisabled;
    private static final String TAG = "BrowserAuth";
    public static BrowserAuth instance;
    private static int serial = 0;
    public final String KEY_CHAR_LIST = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    public HashMap authMap;

    public BrowserAuth()
    {
        authMap = new HashMap();
    }

    private String f(String s, String s1)
    {
        int i = 0;
        if (!$assertionsDisabled && s.length() % 2 != 0)
        {
            throw new AssertionError();
        }
        StringBuilder stringbuilder = new StringBuilder();
        int k = s1.length();
        int l = s.length() / 2;
        int j = 0;
        for (; i < l; i++)
        {
            stringbuilder.append((char)(Integer.parseInt(s.substring(i * 2, i * 2 + 2), 16) ^ s1.charAt(j)));
            j = (j + 1) % k;
        }

        return stringbuilder.toString();
    }

    public static BrowserAuth getInstance()
    {
        if (instance == null)
        {
            instance = new BrowserAuth();
        }
        return instance;
    }

    public static int getSerial()
    {
        int i = serial + 1;
        serial = i;
        return i;
    }

    public String decode(String s, String s1)
    {
        return f(s, s1);
    }

    public Auth get(String s)
    {
        return (Auth)authMap.get(s);
    }

    public String makeKey()
    {
        int j = (int)Math.ceil(Math.random() * 20D + 3D);
        char ac[] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
        int k = ac.length;
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < j; i++)
        {
            stringbuffer.append(ac[(int)(Math.random() * (double)k)]);
        }

        return stringbuffer.toString();
    }

    public void remove(String s)
    {
        authMap.remove(s);
    }

    public String set(Auth auth)
    {
        int i = getSerial();
        try
        {
            authMap.put((new StringBuilder()).append("").append(i).toString(), auth);
        }
        // Misplaced declaration of an exception variable
        catch (Auth auth)
        {
            auth.printStackTrace();
        }
        return (new StringBuilder()).append("").append(i).toString();
    }

    static 
    {
        boolean flag;
        if (!com/tencent/sdkutil/BrowserAuth.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }

    private class Auth
    {

        public TDialog dialog;
        public String key;
        public IUiListener listener;

        public Auth()
        {
        }
    }

}
