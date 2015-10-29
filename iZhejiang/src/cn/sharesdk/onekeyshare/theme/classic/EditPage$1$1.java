// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.classic;

import android.os.Message;
import cn.sharesdk.framework.CustomPlatform;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.ShareCore;
import com.mob.tools.utils.UIHandler;
import java.util.ArrayList;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.classic:
//            EditPage

class this._cls1
    implements android.os.ack
{

    final rPlatformListGot this$1;

    public boolean handleMessage(Message message)
    {
        afterPlatformListGot();
        return false;
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class cn/sharesdk/onekeyshare/theme/classic/EditPage$1

/* anonymous class */
    class EditPage._cls1 extends Thread
    {

        final EditPage this$0;

        public void run()
        {
            Object obj;
            Platform aplatform[];
            int i;
            int j;
            try
            {
                EditPage.access$0(EditPage.this, ShareSDK.getPlatformList());
                if (EditPage.access$1(EditPage.this) == null)
                {
                    return;
                }
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((Throwable) (obj)).printStackTrace();
                return;
            }
            obj = new ArrayList();
            aplatform = EditPage.access$1(EditPage.this);
            j = aplatform.length;
            i = 0;
_L7:
            if (i < j) goto _L2; else goto _L1
_L1:
            EditPage.access$0(EditPage.this, new Platform[((ArrayList) (obj)).size()]);
            i = 0;
_L5:
            if (i >= EditPage.access$1(EditPage.this).length)
            {
                UIHandler.sendEmptyMessage(1, new EditPage._cls1._cls1());
                return;
            }
              goto _L3
_L2:
            Platform platform = aplatform[i];
            String s = platform.getName();
            if ((platform instanceof CustomPlatform) || ShareCore.isUseClientToShare(s))
            {
                break; /* Loop/switch isn't completed */
            }
            ((ArrayList) (obj)).add(platform);
            break; /* Loop/switch isn't completed */
_L3:
            EditPage.access$1(EditPage.this)[i] = (Platform)((ArrayList) (obj)).get(i);
            i++;
            if (true) goto _L5; else goto _L4
_L4:
            i++;
            if (true) goto _L7; else goto _L6
_L6:
        }


            
            {
                this$0 = EditPage.this;
                super();
            }
    }

}
