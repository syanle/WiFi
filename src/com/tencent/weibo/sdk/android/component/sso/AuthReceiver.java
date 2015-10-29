// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component.sso;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.weibo.sdk.android.component.sso.tools.Cryptor;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;

// Referenced classes of package com.tencent.weibo.sdk.android.component.sso:
//            WeiboToken, AuthHelper, OnAuthListener

public class AuthReceiver extends BroadcastReceiver
{

    static final String ACTION = "com.tencent.sso.AUTH";

    public AuthReceiver()
    {
    }

    private WeiboToken revert(byte abyte0[])
    {
        Object obj;
        ByteArrayInputStream bytearrayinputstream;
        obj = new WeiboToken();
        bytearrayinputstream = new ByteArrayInputStream(abyte0);
        abyte0 = new DataInputStream(bytearrayinputstream);
        obj.accessToken = abyte0.readUTF();
        obj.expiresIn = abyte0.readLong();
        obj.refreshToken = abyte0.readUTF();
        obj.openID = abyte0.readUTF();
        obj.omasToken = abyte0.readUTF();
        obj.omasKey = abyte0.readUTF();
        if (bytearrayinputstream != null)
        {
            try
            {
                bytearrayinputstream.close();
            }
            catch (IOException ioexception1) { }
        }
        if (abyte0 != null)
        {
            try
            {
                abyte0.close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                return ((WeiboToken) (obj));
            }
        }
        return ((WeiboToken) (obj));
        obj;
        ((Exception) (obj)).printStackTrace();
        if (bytearrayinputstream != null)
        {
            try
            {
                bytearrayinputstream.close();
            }
            catch (IOException ioexception) { }
        }
        if (abyte0 != null)
        {
            try
            {
                abyte0.close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[]) { }
        }
        return null;
        obj;
        if (bytearrayinputstream != null)
        {
            try
            {
                bytearrayinputstream.close();
            }
            catch (IOException ioexception2) { }
        }
        if (abyte0 != null)
        {
            try
            {
                abyte0.close();
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[]) { }
        }
        throw obj;
    }

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("com.tencent.sso.AUTH") && intent.getStringExtra("com.tencent.sso.PACKAGE_NAME").equals(context.getPackageName()))
        {
            if (intent.getBooleanExtra("com.tencent.sso.AUTH_RESULT", false))
            {
                context = intent.getStringExtra("com.tencent.sso.WEIBO_NICK");
                intent = intent.getByteArrayExtra("com.tencent.sso.ACCESS_TOKEN");
                intent = revert((new Cryptor()).decrypt(intent, "&-*)Wb5_U,[^!9'+".getBytes(), 10));
                if (AuthHelper.listener != null)
                {
                    AuthHelper.listener.onAuthPassed(context, intent);
                }
            } else
            {
                int i = intent.getIntExtra("com.tencent.sso.RESULT", 1);
                context = intent.getStringExtra("com.tencent.sso.WEIBO_NICK");
                if (AuthHelper.listener != null)
                {
                    AuthHelper.listener.onAuthFail(i, context);
                    return;
                }
            }
        }
    }
}
