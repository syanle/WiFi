// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.network;

import android.content.Context;
import android.util.Log;
import com.tencent.weibo.sdk.android.api.util.JsonUtil;
import com.tencent.weibo.sdk.android.model.BaseVO;
import com.tencent.weibo.sdk.android.model.ModelResult;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.commons.httpclient.HttpMethod;
import org.apache.commons.httpclient.methods.ByteArrayRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.tencent.weibo.sdk.android.network:
//            HttpReq, ReqParam, HttpCallback

public class HttpReqWeiBo extends HttpReq
{

    private Context mContext;
    private Integer mResultType;
    private Class mTargetClass;
    private Class mTargetClass2;

    public HttpReqWeiBo(Context context, String s, HttpCallback httpcallback, Class class1, String s1, Integer integer)
    {
        mResultType = Integer.valueOf(0);
        mContext = context;
        mHost = "192.168.1.100";
        mPort = 8088;
        mUrl = s;
        mCallBack = httpcallback;
        mTargetClass = class1;
        mResultType = integer;
        mMethod = s1;
    }

    protected Object processResponse(InputStream inputstream)
        throws Exception
    {
        ModelResult modelresult = new ModelResult();
        if (inputstream == null) goto _L2; else goto _L1
_L1:
        BufferedReader bufferedreader;
        Object obj1;
        inputstream = new InputStreamReader(inputstream);
        bufferedreader = new BufferedReader(inputstream);
        obj1 = new StringBuffer();
_L6:
        String s = bufferedreader.readLine();
        if (s != null) goto _L4; else goto _L3
_L3:
        bufferedreader.close();
        inputstream.close();
        Log.d("relst", ((StringBuffer) (obj1)).toString());
        if (((StringBuffer) (obj1)).toString().indexOf("errcode") != -1 || ((StringBuffer) (obj1)).toString().indexOf("access_token") == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        modelresult.setObj(((StringBuffer) (obj1)).toString());
_L2:
        return modelresult;
_L4:
        ((StringBuffer) (obj1)).append(s);
        if (true) goto _L6; else goto _L5
_L5:
        Object obj = new JSONObject(((StringBuffer) (obj1)).toString());
        inputstream = null;
        if (mTargetClass != null)
        {
            inputstream = (BaseVO)mTargetClass.newInstance();
        }
        obj1 = ((JSONObject) (obj)).getString("errcode");
        String s1 = ((JSONObject) (obj)).getString("msg");
        if (obj1 != null && "0".equals(obj1))
        {
            modelresult.setSuccess(true);
            switch (mResultType.intValue())
            {
            default:
                return modelresult;

            case 0: // '\0'
                inputstream = JsonUtil.jsonToObject(mTargetClass, ((JSONObject) (obj)));
                obj = new ArrayList();
                ((List) (obj)).add(inputstream);
                modelresult.setList(((List) (obj)));
                return modelresult;

            case 1: // '\001'
                inputstream = inputstream.analyseHead(((JSONObject) (obj)));
                obj = (JSONArray)inputstream.get("array");
                obj = JsonUtil.jsonToList(mTargetClass, ((JSONArray) (obj)));
                int i;
                int j;
                int k;
                boolean flag;
                if (inputstream.get("total") == null)
                {
                    i = 0;
                } else
                {
                    i = ((Integer)inputstream.get("total")).intValue();
                }
                if (inputstream.get("p") == null)
                {
                    j = 1;
                } else
                {
                    j = ((Integer)inputstream.get("p")).intValue();
                }
                if (inputstream.get("ps") == null)
                {
                    k = 1;
                } else
                {
                    k = ((Integer)inputstream.get("ps")).intValue();
                }
                flag = ((Boolean)inputstream.get("isLastPage")).booleanValue();
                modelresult.setList(((List) (obj)));
                modelresult.setTotal(Integer.valueOf(i).intValue());
                modelresult.setP(Integer.valueOf(j).intValue());
                modelresult.setPs(Integer.valueOf(k).intValue());
                modelresult.setLastPage(flag);
                return modelresult;

            case 2: // '\002'
                modelresult.setObj(JsonUtil.jsonToObject(mTargetClass, ((JSONObject) (obj))));
                return modelresult;

            case 3: // '\003'
                inputstream = JsonUtil.jsonToObject(mTargetClass, ((JSONObject) (obj)));
                obj = ((JSONObject) (obj)).getJSONArray("result_list");
                obj = JsonUtil.jsonToList(mTargetClass2, ((JSONArray) (obj)));
                modelresult.setObj(inputstream);
                modelresult.setList(((List) (obj)));
                return modelresult;

            case 4: // '\004'
                modelresult.setObj(obj);
                return modelresult;
            }
        } else
        {
            modelresult.setSuccess(false);
            modelresult.setError_message(s1);
            return modelresult;
        }
    }

    public void setReq(String s)
        throws Exception
    {
        if ("POST".equals(mMethod))
        {
            s = new HttpReq.UTF8PostMethod(mUrl);
            mParam.toString();
            s.setRequestEntity(new ByteArrayRequestEntity(mParam.toString().getBytes("utf-8")));
        }
    }

    protected void setReq(HttpMethod httpmethod)
        throws Exception
    {
        if ("POST".equals(mMethod))
        {
            httpmethod = (PostMethod)httpmethod;
            mParam.toString();
            httpmethod.addParameter("Connection", "Keep-Alive");
            httpmethod.addParameter("Charset", "UTF-8");
            httpmethod.setRequestEntity(new ByteArrayRequestEntity(mParam.toString().getBytes("utf-8")));
        }
    }

    public void setmResultType(Integer integer)
    {
        mResultType = integer;
    }

    public void setmTargetClass(Class class1)
    {
        mTargetClass = class1;
    }

    public void setmTargetClass2(Class class1)
    {
        mTargetClass2 = class1;
    }
}
