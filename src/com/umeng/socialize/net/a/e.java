// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net.a;

import android.text.TextUtils;
import com.umeng.socom.Log;
import com.umeng.socom.net.t;
import org.json.JSONException;
import org.json.JSONObject;

public class e extends t
{

    protected static final String k = com/umeng/socialize/net/a/e.getName();
    protected JSONObject l;
    public String m;
    public int n;

    public e(JSONObject jsonobject)
    {
        super(jsonobject);
        n = -103;
        l = a(jsonobject);
        a();
    }

    private JSONObject a(JSONObject jsonobject)
    {
        if (jsonobject != null) goto _L2; else goto _L1
_L1:
        Log.b(k, "failed requesting");
_L4:
        return null;
_L2:
label0:
        {
            try
            {
                n = jsonobject.optInt("st", 1998);
                if (n != 0)
                {
                    break label0;
                }
                Log.b(k, "no status code in response.");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                jsonobject.printStackTrace();
                Log.b(k, "Data body can`t convert to json ");
                return null;
            }
            return null;
        }
        m = jsonobject.optString("msg", "");
        jsonobject = jsonobject.optString("data", null);
        if (TextUtils.isEmpty(jsonobject)) goto _L4; else goto _L3
_L3:
        jsonobject = new JSONObject(jsonobject);
        return jsonobject;
    }

    public void a()
    {
    }

}
