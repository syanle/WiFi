// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import android.util.Log;
import com.umeng.socialize.bean.UMComment;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class e extends com.umeng.socialize.net.a.e
{

    public List a;

    public e(JSONObject jsonobject)
    {
        super(jsonobject);
    }

    public void a()
    {
        JSONObject jsonobject = l;
        if (jsonobject != null) goto _L2; else goto _L1
_L1:
        Log.e(com.umeng.socialize.net.a.e.k, "data json is null....");
_L6:
        return;
_L2:
        JSONArray jsonarray;
        UMComment umcomment;
        int i;
        try
        {
            a = new ArrayList();
            jsonarray = jsonobject.getJSONArray("cms");
        }
        catch (JSONException jsonexception)
        {
            Log.e(k, (new StringBuilder("Parse json error[ ")).append(jsonobject.toString()).append(" ]").toString(), jsonexception);
            return;
        }
        i = 0;
        if (i >= jsonarray.length())
        {
            continue; /* Loop/switch isn't completed */
        }
        umcomment = UMComment.parseJson((JSONObject)jsonarray.get(i));
        if (umcomment == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        a.add(umcomment);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_82;
_L4:
        break MISSING_BLOCK_LABEL_40;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
