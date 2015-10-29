// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.iwifi.sdk.chinanet.wispr;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.StringEntity;

public class RequestUtils
{
    public static final class RequestMethod extends Enum
    {

        public static final RequestMethod DELETE;
        private static final RequestMethod ENUM$VALUES[];
        public static final RequestMethod GET;
        public static final RequestMethod POST;
        public static final RequestMethod PUT;

        public static RequestMethod valueOf(String s)
        {
            return (RequestMethod)Enum.valueOf(com/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod, s);
        }

        public static RequestMethod[] values()
        {
            RequestMethod arequestmethod[] = ENUM$VALUES;
            int i = arequestmethod.length;
            RequestMethod arequestmethod1[] = new RequestMethod[i];
            System.arraycopy(arequestmethod, 0, arequestmethod1, 0, i);
            return arequestmethod1;
        }

        static 
        {
            GET = new RequestMethod("GET", 0);
            POST = new RequestMethod("POST", 1);
            DELETE = new RequestMethod("DELETE", 2);
            PUT = new RequestMethod("PUT", 3);
            ENUM$VALUES = (new RequestMethod[] {
                GET, POST, DELETE, PUT
            });
        }

        private RequestMethod(String s, int i)
        {
            super(s, i);
        }
    }

    public class ResponseResultInfos
    {

        int http_request_status_code;
        ResponseResultState process_result;
        String request_url;
        Object result_body;
        final RequestUtils this$0;

        public ResponseResultInfos()
        {
            this$0 = RequestUtils.this;
            super();
        }
    }

    public static final class ResponseResultState extends Enum
    {

        private static final ResponseResultState ENUM$VALUES[];
        public static final ResponseResultState RSP_GET_AUTH_FAILED;
        public static final ResponseResultState RSP_GET_AUTH_SUCCESS;
        public static final ResponseResultState RSP_GET_BRAS_FAILED;
        public static final ResponseResultState RSP_GET_BRAS_SUCCESS;
        public static final ResponseResultState RSP_GET_LOGOFF_FAILED;
        public static final ResponseResultState RSP_GET_LOGOFF_SUCCESS;
        public static final ResponseResultState RSP_NONE;
        public static final ResponseResultState RSP_POST_AUTH_FAILED;
        public static final ResponseResultState RSP_POST_AUTH_SUCCESS;

        public static ResponseResultState valueOf(String s)
        {
            return (ResponseResultState)Enum.valueOf(com/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState, s);
        }

        public static ResponseResultState[] values()
        {
            ResponseResultState aresponseresultstate[] = ENUM$VALUES;
            int i = aresponseresultstate.length;
            ResponseResultState aresponseresultstate1[] = new ResponseResultState[i];
            System.arraycopy(aresponseresultstate, 0, aresponseresultstate1, 0, i);
            return aresponseresultstate1;
        }

        static 
        {
            RSP_NONE = new ResponseResultState("RSP_NONE", 0);
            RSP_GET_BRAS_SUCCESS = new ResponseResultState("RSP_GET_BRAS_SUCCESS", 1);
            RSP_GET_BRAS_FAILED = new ResponseResultState("RSP_GET_BRAS_FAILED", 2);
            RSP_GET_AUTH_SUCCESS = new ResponseResultState("RSP_GET_AUTH_SUCCESS", 3);
            RSP_GET_AUTH_FAILED = new ResponseResultState("RSP_GET_AUTH_FAILED", 4);
            RSP_POST_AUTH_SUCCESS = new ResponseResultState("RSP_POST_AUTH_SUCCESS", 5);
            RSP_POST_AUTH_FAILED = new ResponseResultState("RSP_POST_AUTH_FAILED", 6);
            RSP_GET_LOGOFF_SUCCESS = new ResponseResultState("RSP_GET_LOGOFF_SUCCESS", 7);
            RSP_GET_LOGOFF_FAILED = new ResponseResultState("RSP_GET_LOGOFF_FAILED", 8);
            ENUM$VALUES = (new ResponseResultState[] {
                RSP_NONE, RSP_GET_BRAS_SUCCESS, RSP_GET_BRAS_FAILED, RSP_GET_AUTH_SUCCESS, RSP_GET_AUTH_FAILED, RSP_POST_AUTH_SUCCESS, RSP_POST_AUTH_FAILED, RSP_GET_LOGOFF_SUCCESS, RSP_GET_LOGOFF_FAILED
            });
        }

        private ResponseResultState(String s, int i)
        {
            super(s, i);
        }
    }


    public final String ENCODING = "UTF-8";
    public Map headers;
    public HttpEntity httpEntity;
    RequestMethod requestMethod;
    public String url;

    public RequestUtils(String s, RequestMethod requestmethod)
    {
        url = s;
        requestMethod = requestmethod;
    }

    public ResponseResultInfos getResultInfos()
    {
        return new ResponseResultInfos();
    }

    public void setEntity(String s)
    {
        try
        {
            httpEntity = new StringEntity(s, "UTF-8");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void setEntity(ArrayList arraylist)
    {
        try
        {
            httpEntity = new UrlEncodedFormEntity(arraylist, "UTF-8");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ArrayList arraylist)
        {
            arraylist.printStackTrace();
        }
    }

    public void setEntity(byte abyte0[])
    {
        httpEntity = new ByteArrayEntity(abyte0);
    }
}
