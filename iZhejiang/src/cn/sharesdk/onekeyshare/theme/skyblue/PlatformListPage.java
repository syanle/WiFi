// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.skyblue;

import android.app.Activity;
import android.os.AsyncTask;
import android.view.View;
import android.widget.GridView;
import android.widget.Toast;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.PlatformListFakeActivity;
import com.mob.tools.utils.R;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.skyblue:
//            PlatformGridViewAdapter

public class PlatformListPage extends PlatformListFakeActivity
    implements android.view.View.OnClickListener
{

    private PlatformGridViewAdapter gridViewAdapter;

    public PlatformListPage()
    {
    }

    private void initView()
    {
        View view = findViewByResName("backImageView");
        view.setTag(Integer.valueOf(0x1040000));
        view.setOnClickListener(this);
        view = findViewByResName("okImageView");
        view.setTag(Integer.valueOf(0x104000a));
        view.setOnClickListener(this);
        gridViewAdapter = new PlatformGridViewAdapter(activity);
        gridViewAdapter.setCustomerLogos(customerLogos);
        ((GridView)findViewByResName("gridView")).setAdapter(gridViewAdapter);
        (new AsyncTask() {

            final PlatformListPage this$0;

            protected volatile transient Object doInBackground(Object aobj[])
            {
                return doInBackground((Void[])aobj);
            }

            protected transient Platform[] doInBackground(Void avoid[])
            {
                return ShareSDK.getPlatformList();
            }

            protected volatile void onPostExecute(Object obj)
            {
                onPostExecute((Platform[])obj);
            }

            protected void onPostExecute(Platform aplatform[])
            {
                gridViewAdapter.setData(aplatform, PlatformListPage.this.doInBackground);
            }

            
            {
                this$0 = PlatformListPage.this;
                super();
            }
        }).execute(new Void[0]);
    }

    private void onShareButtonClick(View view)
    {
        if (gridViewAdapter == null || "locked".equals(view.getTag()))
        {
            return;
        }
        List list = gridViewAdapter.getCheckedItems();
        if (list.size() == 0)
        {
            Toast.makeText(activity, R.getStringRes(activity, "select_one_plat_at_least"), 0).show();
            return;
        } else
        {
            view.setTag("locked");
            onShareButtonClick(view, list);
            return;
        }
    }

    public void onClick(View view)
    {
        Object obj = view.getTag();
        if (obj == null || !(obj instanceof Integer))
        {
            return;
        }
        switch (((Integer)obj).intValue())
        {
        default:
            return;

        case 17039360: 
            setCanceled(true);
            finish();
            return;

        case 17039370: 
            onShareButtonClick(view);
            break;
        }
    }

    public void onCreate()
    {
        super.onCreate();
        activity.setContentView(R.getLayoutRes(activity, "skyblue_share_platform_list"));
        initView();
    }


}
