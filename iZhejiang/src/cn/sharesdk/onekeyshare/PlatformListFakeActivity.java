// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;

import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.View;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import com.mob.tools.FakeActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package cn.sharesdk.onekeyshare:
//            ThemeShareCallback, CustomerLogo, ShareCore, EditPageFakeActivity

public class PlatformListFakeActivity extends FakeActivity
{
    public static interface OnShareButtonClickListener
    {

        public abstract void onClick(View view, List list);
    }


    protected View backgroundView;
    private boolean canceled;
    protected ArrayList customerLogos;
    protected boolean dialogMode;
    protected HashMap hiddenPlatforms;
    protected OnShareButtonClickListener onShareButtonClickListener;
    protected HashMap shareParamsMap;
    protected boolean silent;
    protected ThemeShareCallback themeShareCallback;

    public PlatformListFakeActivity()
    {
        canceled = false;
        dialogMode = false;
    }

    public View getBackgroundView()
    {
        return backgroundView;
    }

    public ArrayList getCustomerLogos()
    {
        return customerLogos;
    }

    public HashMap getHiddenPlatforms()
    {
        return hiddenPlatforms;
    }

    public OnShareButtonClickListener getOnShareButtonClickListener()
    {
        return onShareButtonClickListener;
    }

    public HashMap getShareParamsMap()
    {
        return shareParamsMap;
    }

    public ThemeShareCallback getThemeShareCallback()
    {
        return themeShareCallback;
    }

    public boolean isDialogMode()
    {
        return dialogMode;
    }

    public boolean isSilent()
    {
        return silent;
    }

    public void onCreate()
    {
        super.onCreate();
        canceled = false;
        if (themeShareCallback == null)
        {
            finish();
        }
    }

    public boolean onFinish()
    {
        if (canceled)
        {
            ShareSDK.logDemoEvent(2, null);
        }
        return super.onFinish();
    }

    public boolean onKeyEvent(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            canceled = true;
        }
        return super.onKeyEvent(i, keyevent);
    }

    protected void onShareButtonClick(View view, List list)
    {
        if (onShareButtonClickListener != null)
        {
            onShareButtonClickListener.onClick(view, list);
        }
        HashMap hashmap = new HashMap();
        ArrayList arraylist = new ArrayList();
        list = list.iterator();
        do
        {
            if (!list.hasNext())
            {
                if (hashmap.size() > 0)
                {
                    themeShareCallback.doShare(hashmap);
                }
                if (arraylist.size() > 0)
                {
                    showEditPage(arraylist);
                }
                finish();
                return;
            }
            Object obj = list.next();
            if (obj instanceof CustomerLogo)
            {
                ((CustomerLogo)obj).listener.onClick(view);
            } else
            {
                obj = (Platform)obj;
                String s = ((Platform) (obj)).getName();
                if (silent || ShareCore.isDirectShare(((Platform) (obj))))
                {
                    HashMap hashmap1 = new HashMap(shareParamsMap);
                    hashmap1.put("platform", s);
                    hashmap.put(obj, hashmap1);
                } else
                {
                    arraylist.add(obj);
                }
            }
        } while (true);
    }

    public void setBackgroundView(View view)
    {
        backgroundView = view;
    }

    protected void setCanceled(boolean flag)
    {
        canceled = flag;
    }

    public void setCustomerLogos(ArrayList arraylist)
    {
        customerLogos = arraylist;
    }

    public void setDialogMode(boolean flag)
    {
        dialogMode = flag;
    }

    public void setHiddenPlatforms(HashMap hashmap)
    {
        hiddenPlatforms = hashmap;
    }

    public void setOnShareButtonClickListener(OnShareButtonClickListener onsharebuttonclicklistener)
    {
        onShareButtonClickListener = onsharebuttonclicklistener;
    }

    public void setShareParamsMap(HashMap hashmap)
    {
        shareParamsMap = hashmap;
    }

    public void setSilent(boolean flag)
    {
        silent = flag;
    }

    public void setThemeShareCallback(ThemeShareCallback themesharecallback)
    {
        themeShareCallback = themesharecallback;
    }

    public void show(Context context, Intent intent)
    {
        super.show(context, intent);
    }

    public void showEditPage(Context context, Platform platform)
    {
        ArrayList arraylist = new ArrayList(1);
        arraylist.add(platform);
        showEditPage(context, ((List) (arraylist)));
    }

    protected void showEditPage(Context context, List list)
    {
        Object obj = (new StringBuilder(String.valueOf(getClass().getPackage().getName()))).append(".EditPage").toString();
        try
        {
            obj = (EditPageFakeActivity)Class.forName(((String) (obj))).newInstance();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
            return;
        }
        ((EditPageFakeActivity) (obj)).setBackgroundView(backgroundView);
        ((EditPageFakeActivity) (obj)).setShareData(shareParamsMap);
        ((EditPageFakeActivity) (obj)).setPlatforms(list);
        if (dialogMode)
        {
            ((EditPageFakeActivity) (obj)).setDialogMode();
        }
        ((EditPageFakeActivity) (obj)).showForResult(context, null, new FakeActivity() {

            final PlatformListFakeActivity this$0;

            public void onResult(HashMap hashmap)
            {
                while (hashmap == null || !hashmap.containsKey("editRes")) 
                {
                    return;
                }
                hashmap = (HashMap)hashmap.get("editRes");
                themeShareCallback.doShare(hashmap);
            }

            
            {
                this$0 = PlatformListFakeActivity.this;
                super();
            }
        });
    }

    protected void showEditPage(List list)
    {
        showEditPage(getContext(), list);
    }
}
