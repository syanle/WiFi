// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package im.yixin.sdk.api;

import android.os.Bundle;

// Referenced classes of package im.yixin.sdk.api:
//            BaseReq, YXMessage, BaseResp

public class SendMessageToYX
{
    public static class Req extends BaseReq
    {

        public static final int YXSceneSession = 0;
        public static final int YXSceneTimeline = 1;
        public YXMessage message;
        public int scene;

        public final boolean checkArgs()
        {
            return message != null && message.verifyData();
        }

        public void fromBundle(Bundle bundle)
        {
            super.fromBundle(bundle);
            message = YXMessage.Converter.read(bundle);
            scene = bundle.getInt("_yxapi_sendmessagetoyx_req_scene");
        }

        public int getType()
        {
            return 1;
        }

        public void toBundle(Bundle bundle)
        {
            super.toBundle(bundle);
            bundle.putAll(YXMessage.Converter.write(message));
            bundle.putInt("_yxapi_sendmessagetoyx_req_scene", scene);
        }

        public Req()
        {
        }

        public Req(Bundle bundle)
        {
            fromBundle(bundle);
        }
    }

    public static class Resp extends BaseResp
    {

        public final boolean checkArgs()
        {
            return true;
        }

        public void fromBundle(Bundle bundle)
        {
            super.fromBundle(bundle);
        }

        public int getType()
        {
            return 1;
        }

        public void toBundle(Bundle bundle)
        {
            super.toBundle(bundle);
        }

        public Resp()
        {
        }

        public Resp(Bundle bundle)
        {
            fromBundle(bundle);
        }
    }


    public SendMessageToYX()
    {
    }
}
