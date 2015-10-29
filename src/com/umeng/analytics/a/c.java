// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.analytics.a;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.umeng.analytics.a:
//            a, b

class c extends JSONObject
{

    final a a;
    final b b;

    c(b b1, a a1)
        throws JSONException
    {
        b = b1;
        a = a1;
        super();
        a.b(this);
    }
}
