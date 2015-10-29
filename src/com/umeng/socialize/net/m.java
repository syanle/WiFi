// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.net;

import com.umeng.socialize.bean.Gender;
import com.umeng.socialize.bean.SHARE_MEDIA;
import com.umeng.socialize.bean.SnsAccount;
import com.umeng.socialize.bean.SocializeUser;
import com.umeng.socialize.common.SocializeConstants;
import com.umeng.socialize.net.a.e;
import com.umeng.socom.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class m extends e
{

    public SocializeUser a;

    public m(JSONObject jsonobject)
    {
        super(jsonobject);
    }

    public void a()
    {
        JSONObject jsonobject = l;
        if (jsonobject != null) goto _L2; else goto _L1
_L1:
        Log.b(e.k, "data json is null....");
_L8:
        return;
_L2:
        a = new SocializeUser();
        if (jsonobject.has("default"))
        {
            String s = jsonobject.getString("default");
            a.mDefaultPlatform = SHARE_MEDIA.convertToEmun(s);
        }
        if (!jsonobject.has("accounts")) goto _L4; else goto _L3
_L3:
        Object obj;
        Object obj1;
        Object obj2;
        obj = new ArrayList();
        obj1 = jsonobject.getJSONObject("accounts");
        obj2 = ((JSONObject) (obj1)).keys();
_L10:
        if (((Iterator) (obj2)).hasNext()) goto _L6; else goto _L5
_L5:
        a.mAccounts = ((List) (obj));
_L4:
        if (jsonobject.has("loginaccount"))
        {
            obj1 = jsonobject.getJSONObject("loginaccount");
            obj = ((JSONObject) (obj1)).keys();
            if (((Iterator) (obj)).hasNext())
            {
                obj = ((Iterator) (obj)).next().toString();
                Object obj4 = ((JSONObject) (obj1)).getJSONObject(((String) (obj)));
                Object obj3 = ((JSONObject) (obj4)).optString("username", "");
                String s2 = ((JSONObject) (obj4)).optString("icon", "");
                String s4 = ((JSONObject) (obj4)).optString("usid", "");
                obj1 = ((JSONObject) (obj4)).optString("profile_url", "");
                int i = ((JSONObject) (obj4)).optInt("gender", 0);
                obj2 = ((JSONObject) (obj4)).optString("birthday", "");
                obj4 = ((JSONObject) (obj4)).optString("extend", "");
                obj3 = new SnsAccount(((String) (obj3)), Gender.convertToEmun(String.valueOf(i)), s2, s4);
                ((SnsAccount) (obj3)).setPlatform(((String) (obj)));
                ((SnsAccount) (obj3)).setProfileUrl(((String) (obj1)));
                a.mLoginAccount = ((SnsAccount) (obj3));
                ((SnsAccount) (obj3)).setBirthday(((String) (obj2)));
                ((SnsAccount) (obj3)).setExtendArgs(((String) (obj4)));
            }
        }
_L11:
        obj = a.mLoginAccount;
        if (obj != null) goto _L8; else goto _L7
_L7:
        if (!jsonobject.has("username")) goto _L8; else goto _L9
_L9:
        SocializeConstants.GUIDENAME = jsonobject.optString("username", "");
        return;
        obj;
        try
        {
            Log.a(k, "No loginAccount ....");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Log.b(k, (new StringBuilder("Parse json error[ ")).append(jsonobject.toString()).append(" ]").toString(), ((Exception) (obj)));
        }
        return;
_L6:
        String s1 = ((Iterator) (obj2)).next().toString();
        Object obj6 = ((JSONObject) (obj1)).getJSONObject(s1);
        Object obj5 = ((JSONObject) (obj6)).optString("username", "");
        String s6 = ((JSONObject) (obj6)).optString("icon", "");
        String s7 = ((JSONObject) (obj6)).optString("usid", "");
        int j = ((JSONObject) (obj6)).optInt("gender", 0);
        String s3 = ((JSONObject) (obj6)).optString("profile_url", "");
        String s5 = ((JSONObject) (obj6)).optString("birthday", "");
        obj6 = ((JSONObject) (obj6)).optString("extend", "");
        obj5 = new SnsAccount(((String) (obj5)), Gender.convertToEmun(String.valueOf(j)), s6, s7);
        ((SnsAccount) (obj5)).setPlatform(s1);
        ((SnsAccount) (obj5)).setProfileUrl(s3);
        ((List) (obj)).add(obj5);
        ((SnsAccount) (obj5)).setBirthday(s5);
        ((SnsAccount) (obj5)).setExtendArgs(((String) (obj6)));
          goto _L10
        JSONException jsonexception;
        jsonexception;
        Log.a(k, "No snsAccout oauth....");
          goto _L4
        jsonexception;
        Log.a(k, "No loginAccount ....");
          goto _L11
    }
}
