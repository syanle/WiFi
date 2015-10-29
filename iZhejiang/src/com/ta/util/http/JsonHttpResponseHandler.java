// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.http;

import android.os.Message;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.ta.util.http:
//            AsyncHttpResponseHandler

public class JsonHttpResponseHandler extends AsyncHttpResponseHandler
{

    protected static final int SUCCESS_JSON_MESSAGE = 100;

    public JsonHttpResponseHandler()
    {
    }

    protected void handleFailureMessage(Throwable throwable, String s)
    {
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        Object obj;
        try
        {
            obj = parseResponse(s);
            if (obj instanceof JSONObject)
            {
                onFailure(throwable, (JSONObject)obj);
                return;
            }
        }
        catch (JSONException jsonexception)
        {
            onFailure(throwable, s);
            return;
        }
        if (obj instanceof JSONArray)
        {
            onFailure(throwable, (JSONArray)obj);
            return;
        }
        onFailure(throwable, s);
        return;
        onFailure(throwable, "");
        return;
    }

    protected void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            super.handleMessage(message);
            return;

        case 100: // 'd'
            message = ((Message) ((Object[])message.obj));
            break;
        }
        handleSuccessJsonMessage(((Integer)message[0]).intValue(), (Header[])message[1], message[2]);
    }

    protected void handleSuccessJsonMessage(int i, Header aheader[], Object obj)
    {
        if (obj instanceof JSONObject)
        {
            onSuccess(i, aheader, (JSONObject)obj);
            return;
        }
        if (obj instanceof JSONArray)
        {
            onSuccess(i, aheader, (JSONArray)obj);
            return;
        } else
        {
            onFailure(new JSONException((new StringBuilder("Unexpected type ")).append(obj.getClass().getName()).toString()), ((JSONObject) (null)));
            return;
        }
    }

    public void onFailure(Throwable throwable, JSONArray jsonarray)
    {
    }

    public void onFailure(Throwable throwable, JSONObject jsonobject)
    {
    }

    public void onSuccess(int i, JSONArray jsonarray)
    {
        onSuccess(jsonarray);
    }

    public void onSuccess(int i, JSONObject jsonobject)
    {
        onSuccess(jsonobject);
    }

    public void onSuccess(int i, Header aheader[], JSONArray jsonarray)
    {
        onSuccess(i, jsonarray);
    }

    public void onSuccess(int i, Header aheader[], JSONObject jsonobject)
    {
        onSuccess(i, jsonobject);
    }

    public void onSuccess(JSONArray jsonarray)
    {
    }

    public void onSuccess(JSONObject jsonobject)
    {
    }

    protected Object parseResponse(String s)
        throws JSONException
    {
        String s2;
label0:
        {
            Object obj = null;
            s2 = s.trim();
            if (!s2.startsWith("{"))
            {
                s = obj;
                if (!s2.startsWith("["))
                {
                    break label0;
                }
            }
            s = ((String) ((new JSONTokener(s2)).nextValue()));
        }
        String s1 = s;
        if (s == null)
        {
            s1 = s2;
        }
        return s1;
    }

    protected void sendSuccessMessage(int i, Header aheader[], String s)
    {
        if (i != 204)
        {
            try
            {
                sendMessage(obtainMessage(100, ((Object) (new Object[] {
                    Integer.valueOf(i), aheader, parseResponse(s)
                }))));
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Header aheader[])
            {
                sendFailureMessage(aheader, s);
            }
            return;
        } else
        {
            sendMessage(obtainMessage(100, ((Object) (new Object[] {
                Integer.valueOf(i), new JSONObject()
            }))));
            return;
        }
    }
}
