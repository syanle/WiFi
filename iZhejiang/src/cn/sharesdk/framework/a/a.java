// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework.a;

import android.text.TextUtils;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.network.HTTPPart;
import com.mob.tools.network.KVPair;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.network.RawNetworkCallback;
import java.util.ArrayList;

public class a extends NetworkHelper
{

    private static a a = null;

    private a()
    {
    }

    public static a a()
    {
        if (a == null)
        {
            a = new a();
        }
        return a;
    }

    private void a(String s, int i)
    {
        if (TextUtils.isEmpty(s) || i <= 0)
        {
            return;
        } else
        {
            ShareSDK.logApiEvent(s, i);
            return;
        }
    }

    public String a(String s, ArrayList arraylist, KVPair kvpair, String s1, int i)
    {
        return a(s, arraylist, kvpair, ((ArrayList) (null)), s1, i);
    }

    public String a(String s, ArrayList arraylist, KVPair kvpair, ArrayList arraylist1, String s1, int i)
    {
        return a(s, arraylist, kvpair, arraylist1, null, s1, i);
    }

    public String a(String s, ArrayList arraylist, KVPair kvpair, ArrayList arraylist1, ArrayList arraylist2, String s1, int i)
    {
        a(s1, i);
        return super.httpPost(s, arraylist, kvpair, arraylist1, arraylist2);
    }

    public String a(String s, ArrayList arraylist, String s1, int i)
    {
        return a(s, arraylist, ((ArrayList) (null)), ((ArrayList) (null)), s1, i);
    }

    public String a(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, String s1, int i)
    {
        a(s1, i);
        return super.httpGet(s, arraylist, arraylist1, arraylist2);
    }

    public void a(String s, ArrayList arraylist, HTTPPart httppart, RawNetworkCallback rawnetworkcallback, String s1, int i)
    {
        a(s1, i);
        super.rawPost(s, arraylist, httppart, rawnetworkcallback);
    }

    public String b(String s, ArrayList arraylist, KVPair kvpair, ArrayList arraylist1, ArrayList arraylist2, String s1, int i)
    {
        a(s1, i);
        return super.httpPut(s, arraylist, kvpair, arraylist1, arraylist2);
    }

    public String b(String s, ArrayList arraylist, String s1, int i)
    {
        return a(s, arraylist, null, s1, i);
    }

    public String b(String s, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, String s1, int i)
    {
        a(s1, i);
        return super.jsonPost(s, arraylist, arraylist1, arraylist2);
    }

}
