// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.classic;

import android.view.View;
import cn.sharesdk.framework.Platform;
import java.util.List;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.classic:
//            EditPage, FollowListPage

class this._cls0
    implements android.view.kListener
{

    final EditPage this$0;

    public void onClick(View view)
    {
        view = new FollowListPage();
        view.setPlatform((Platform)EditPage.access$12(EditPage.this).get(0));
        view.showForResult(EditPage.access$3(EditPage.this), null, EditPage.this);
    }

    age()
    {
        this$0 = EditPage.this;
        super();
    }
}
