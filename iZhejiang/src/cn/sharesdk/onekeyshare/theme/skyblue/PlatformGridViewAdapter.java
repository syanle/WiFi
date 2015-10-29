// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.skyblue;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.onekeyshare.CustomerLogo;
import cn.sharesdk.onekeyshare.ShareCore;
import com.mob.tools.utils.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class PlatformGridViewAdapter extends BaseAdapter
    implements android.view.View.OnClickListener
{
    static class ViewHolder
    {

        public ImageView checkedImageView;
        public ImageView logoImageView;
        public TextView nameTextView;
        public Integer position;

        ViewHolder()
        {
        }
    }


    private List checkedPositionList;
    private final Context context;
    private int directOnlyPosition;
    private List logos;

    public PlatformGridViewAdapter(Context context1)
    {
        logos = new ArrayList();
        checkedPositionList = new ArrayList();
        directOnlyPosition = -1;
        context = context1;
    }

    private Bitmap getIcon(Platform platform, String s)
    {
        platform = (new StringBuilder("skyblue_logo_")).append(platform.getName()).append(s).toString();
        int i = R.getBitmapRes(context, platform);
        return BitmapFactory.decodeResource(context.getResources(), i);
    }

    private String getName(Platform platform)
    {
        if (platform == null)
        {
            return "";
        }
        if (platform.getName() == null)
        {
            return "";
        }
        int i = R.getStringRes(context, platform.getName());
        if (i > 0)
        {
            return context.getString(i);
        } else
        {
            return null;
        }
    }

    public List getCheckedItems()
    {
        ArrayList arraylist = new ArrayList();
        if (directOnlyPosition != -1)
        {
            arraylist.add(getItem(directOnlyPosition));
        } else
        {
            Iterator iterator = checkedPositionList.iterator();
            while (iterator.hasNext()) 
            {
                arraylist.add(getItem(((Integer)iterator.next()).intValue()));
            }
        }
        return arraylist;
    }

    public int getCount()
    {
        return logos.size();
    }

    public Object getItem(int i)
    {
        return logos.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1;
        Object obj;
        Object obj1;
        boolean flag;
        boolean flag1;
        if (view == null)
        {
            view1 = LayoutInflater.from(context).inflate(R.getLayoutRes(context, "skyblue_share_platform_list_item"), null);
            viewgroup = new ViewHolder();
            viewgroup.checkedImageView = (ImageView)view1.findViewById(R.getIdRes(context, "checkedImageView"));
            viewgroup.logoImageView = (ImageView)view1.findViewById(R.getIdRes(context, "logoImageView"));
            viewgroup.nameTextView = (TextView)view1.findViewById(R.getIdRes(context, "nameTextView"));
            view1.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
            view1 = view;
        }
        obj = getItem(i);
        if (obj instanceof Platform)
        {
            flag1 = ShareCore.isDirectShare((Platform)obj);
        } else
        {
            flag1 = true;
        }
        if (directOnlyPosition == -1)
        {
            if (!checkedPositionList.isEmpty() && flag1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
        } else
        if (i != directOnlyPosition)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (obj instanceof Platform)
        {
            obj1 = (Platform)obj;
            if (flag)
            {
                view = "";
            } else
            {
                view = "_checked";
            }
            view = getIcon(((Platform) (obj1)), view);
            obj = getName((Platform)obj);
            view1.setOnClickListener(this);
        } else
        {
            obj = (CustomerLogo)obj;
            if (flag)
            {
                view = ((CustomerLogo) (obj)).disableLogo;
            } else
            {
                view = ((CustomerLogo) (obj)).enableLogo;
            }
            obj = ((CustomerLogo) (obj)).label;
            view1.setOnClickListener(this);
        }
        if (directOnlyPosition != -1 && directOnlyPosition != i)
        {
            obj1 = "skyblue_platform_checked_disabled";
        } else
        {
            obj1 = "skyblue_platform_checked";
        }
        viewgroup.position = Integer.valueOf(i);
        ((ViewHolder) (viewgroup)).checkedImageView.setImageBitmap(BitmapFactory.decodeResource(context.getResources(), R.getBitmapRes(context, ((String) (obj1)))));
        obj1 = ((ViewHolder) (viewgroup)).checkedImageView;
        if (checkedPositionList.contains(((ViewHolder) (viewgroup)).position))
        {
            i = 0;
        } else
        {
            i = 8;
        }
        ((ImageView) (obj1)).setVisibility(i);
        ((ViewHolder) (viewgroup)).nameTextView.setText(((CharSequence) (obj)));
        ((ViewHolder) (viewgroup)).logoImageView.setImageBitmap(view);
        return view1;
    }

    public void onClick(View view)
    {
        view = ((ViewHolder)view.getTag()).position;
        if (directOnlyPosition == -1 || view.intValue() == directOnlyPosition) goto _L2; else goto _L1
_L1:
        return;
_L2:
        boolean flag;
        Object obj = getItem(view.intValue());
        if (obj instanceof Platform)
        {
            flag = ShareCore.isDirectShare((Platform)obj);
        } else
        {
            flag = true;
        }
        if (flag && directOnlyPosition == -1 && !checkedPositionList.isEmpty()) goto _L1; else goto _L3
_L3:
        if (!checkedPositionList.contains(view)) goto _L5; else goto _L4
_L4:
        checkedPositionList.remove(view);
        if (flag)
        {
            directOnlyPosition = -1;
        }
_L7:
        notifyDataSetChanged();
        return;
_L5:
        checkedPositionList.add(view);
        if (flag)
        {
            directOnlyPosition = view.intValue();
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void setCustomerLogos(ArrayList arraylist)
    {
        if (arraylist == null || arraylist.size() == 0)
        {
            return;
        } else
        {
            logos.addAll(arraylist);
            return;
        }
    }

    public void setData(Platform aplatform[], HashMap hashmap)
    {
        ArrayList arraylist;
        int i;
        int j;
        if (aplatform == null)
        {
            return;
        }
        if (hashmap == null || hashmap.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        arraylist = new ArrayList();
        j = aplatform.length;
        i = 0;
_L3:
        if (i < j) goto _L2; else goto _L1
_L1:
        logos.addAll(arraylist);
_L4:
        checkedPositionList.clear();
        notifyDataSetChanged();
        return;
_L2:
        Platform platform = aplatform[i];
        if (!hashmap.containsKey(platform.getName()))
        {
            arraylist.add(platform);
        }
        i++;
          goto _L3
        logos.addAll(Arrays.asList(aplatform));
          goto _L4
    }
}
