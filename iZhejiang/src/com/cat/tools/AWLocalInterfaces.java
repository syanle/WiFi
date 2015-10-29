// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.cat.tools;

import android.content.Context;
import com.cat.data.PublicError;
import com.cat.data.UpLoadData;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.cat.tools:
//            PostFile

public class AWLocalInterfaces
{

    public AWLocalInterfaces()
    {
    }

    public Object parseContent(String s)
    {
        Object obj;
        obj = new JSONObject(s);
        if (((JSONObject) (obj)).getString("result").equals("OK"))
        {
            break MISSING_BLOCK_LABEL_111;
        }
        s = new ArrayList();
        obj = ((JSONObject) (obj)).getJSONArray("error");
        int i = 0;
        do
        {
            if (i >= ((JSONArray) (obj)).length())
            {
                return s;
            }
            JSONObject jsonobject1;
            UpLoadData uploaddata;
            try
            {
                JSONObject jsonobject = (JSONObject)((JSONArray) (obj)).opt(i);
                PublicError publicerror = new PublicError();
                publicerror.setCode(jsonobject.getString("code"));
                publicerror.setMessage(jsonobject.getString("message"));
                s.add(publicerror);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return "JSONException";
            }
            i++;
        } while (true);
        s = new ArrayList();
        obj = ((JSONObject) (obj)).getJSONArray("data");
        i = 0;
_L2:
        if (i >= ((JSONArray) (obj)).length())
        {
            return s;
        }
        jsonobject1 = (JSONObject)((JSONArray) (obj)).opt(i);
        uploaddata = new UpLoadData();
        uploaddata.setFaceimg(jsonobject1.getString("faceimg"));
        s.add(uploaddata);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String upload(String s, String s1, String s2, String s3, String s4, String s5, Context context)
    {
        s2 = new File(s2);
        s3 = new HashMap();
        s4 = new HashMap();
        s4.put("faceimg", s2);
        s3.put("authid", s);
        s3.put("memberid", s1);
        s3.put("faceimg", "faceimg.jpg");
        try
        {
            s = PostFile.upload(s3, s4, (new StringBuilder(String.valueOf("&faceimg=faceimg.jpg"))).append(";").append("upload.html").toString(), context);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }
}
