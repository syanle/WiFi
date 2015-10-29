// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;

// Referenced classes of package com.tencent.mm.sdk.openapi:
//            BaseReq, BaseResp, WXMediaMessage

public final class GetMessageFromWX
{
    public static class Req extends BaseReq
    {

        public String username;

        final boolean checkArgs()
        {
            return true;
        }

        public void fromBundle(Bundle bundle)
        {
            super.fromBundle(bundle);
        }

        public int getType()
        {
            return 3;
        }

        public void toBundle(Bundle bundle)
        {
            super.toBundle(bundle);
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

        public WXMediaMessage message;

        final boolean checkArgs()
        {
            if (message == null)
            {
                Log.e("MicroMsg.SDK.GetMessageFromWX.Resp", "checkArgs fail, message is null");
                return false;
            } else
            {
                return message.checkArgs();
            }
        }

        public void fromBundle(Bundle bundle)
        {
            super.fromBundle(bundle);
            message = WXMediaMessage.Builder.fromBundle(bundle);
        }

        public int getType()
        {
            return 3;
        }

        public void toBundle(Bundle bundle)
        {
            super.toBundle(bundle);
            bundle.putAll(WXMediaMessage.Builder.toBundle(message));
        }

        public Resp()
        {
        }

        public Resp(Bundle bundle)
        {
            fromBundle(bundle);
        }
    }


    private GetMessageFromWX()
    {
    }
}
