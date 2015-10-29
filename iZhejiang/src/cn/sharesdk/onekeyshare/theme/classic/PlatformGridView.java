// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.classic;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.CustomerLogo;
import com.mob.tools.gui.ViewPagerAdapter;
import com.mob.tools.gui.ViewPagerClassic;
import com.mob.tools.utils.R;
import com.mob.tools.utils.UIHandler;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.classic:
//            PlatformListPage

public class PlatformGridView extends LinearLayout
    implements android.view.View.OnClickListener, android.os.Handler.Callback
{
    private static class GridView extends LinearLayout
    {

        private Object beans[];
        private android.view.View.OnClickListener callback;
        private int lines;
        private PlatformAdapter platformAdapter;

        private Bitmap getIcon(Platform platform)
        {
            while (platform == null || platform.getName() == null) 
            {
                return null;
            }
            platform = (new StringBuilder("logo_")).append(platform.getName()).toString();
            int i = R.getBitmapRes(getContext(), platform.toLowerCase());
            return BitmapFactory.decodeResource(getResources(), i);
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
            int i = R.getStringRes(getContext(), platform.getName().toLowerCase());
            if (i > 0)
            {
                return getContext().getString(i);
            } else
            {
                return null;
            }
        }

        private LinearLayout getView(int i, android.view.View.OnClickListener onclicklistener, Context context)
        {
            String s;
            Object obj;
            LinearLayout linearlayout;
            ImageView imageview;
            android.widget.LinearLayout.LayoutParams layoutparams;
            if (beans[i] instanceof Platform)
            {
                obj = getIcon((Platform)beans[i]);
                s = getName((Platform)beans[i]);
            } else
            {
                obj = ((CustomerLogo)beans[i]).enableLogo;
                s = ((CustomerLogo)beans[i]).label;
            }
            linearlayout = new LinearLayout(context);
            linearlayout.setOrientation(1);
            imageview = new ImageView(context);
            i = R.dipToPx(context, 5);
            imageview.setPadding(i, i, i, i);
            imageview.setScaleType(android.widget.ImageView.ScaleType.CENTER_INSIDE);
            layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
            layoutparams.setMargins(i, i, i, i);
            layoutparams.gravity = 1;
            imageview.setLayoutParams(layoutparams);
            imageview.setImageBitmap(((Bitmap) (obj)));
            linearlayout.addView(imageview);
            context = new TextView(context);
            context.setTextColor(0xff000000);
            context.setTextSize(1, 14F);
            context.setSingleLine();
            context.setIncludeFontPadding(false);
            obj = new android.widget.LinearLayout.LayoutParams(-2, -2);
            obj.gravity = 1;
            obj.weight = 1.0F;
            ((android.widget.LinearLayout.LayoutParams) (obj)).setMargins(i, 0, i, i);
            context.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
            context.setText(s);
            linearlayout.addView(context);
            linearlayout.setOnClickListener(onclicklistener);
            return linearlayout;
        }

        private void init()
        {
            android.widget.LinearLayout.LayoutParams layoutparams;
            int i;
            int j;
            int k;
            int i1;
            int j1;
            i1 = R.dipToPx(getContext(), 5);
            setPadding(0, i1, 0, i1);
            setOrientation(1);
            if (beans == null)
            {
                i = 0;
            } else
            {
                i = beans.length;
            }
            j1 = platformAdapter.platformGridView.COLUMN_PER_LINE;
            k = i / j1;
            j = k;
            if (i % j1 > 0)
            {
                j = k + 1;
            }
            layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
            layoutparams.weight = 1.0F;
            k = 0;
_L2:
            LinearLayout linearlayout;
            if (k >= lines)
            {
                return;
            }
            linearlayout = new LinearLayout(getContext());
            linearlayout.setLayoutParams(layoutparams);
            linearlayout.setPadding(i1, 0, i1, 0);
            addView(linearlayout);
            if (k < j)
            {
                break; /* Loop/switch isn't completed */
            }
_L3:
            k++;
            if (true) goto _L2; else goto _L1
_L1:
            int l = 0;
            while (l < j1) 
            {
                int k1 = k * j1 + l;
                if (k1 >= i)
                {
                    LinearLayout linearlayout1 = new LinearLayout(getContext());
                    linearlayout1.setLayoutParams(layoutparams);
                    linearlayout.addView(linearlayout1);
                } else
                {
                    LinearLayout linearlayout2 = getView(k1, callback, getContext());
                    linearlayout2.setTag(beans[k1]);
                    linearlayout2.setLayoutParams(layoutparams);
                    linearlayout.addView(linearlayout2);
                }
                l++;
            }
              goto _L3
            if (true) goto _L2; else goto _L4
_L4:
        }

        public void setData(int i, Object aobj[])
        {
            lines = i;
            beans = aobj;
            init();
        }

        public GridView(PlatformAdapter platformadapter)
        {
            super(platformadapter.platformGridView.getContext());
            platformAdapter = platformadapter;
            callback = platformadapter.callback;
        }
    }

    private static class PlatformAdapter extends ViewPagerAdapter
    {

        private android.view.View.OnClickListener callback;
        private GridView girds[];
        private int lines;
        private List logos;
        private PlatformGridView platformGridView;

        public int getCount()
        {
            if (girds == null)
            {
                return 0;
            } else
            {
                return girds.length;
            }
        }

        public View getView(int i, ViewGroup viewgroup)
        {
            if (girds[i] != null) goto _L2; else goto _L1
_L1:
            int k;
            int i1;
            int l = platformGridView.PAGE_SIZE;
            i1 = l * i;
            int j;
            if (logos == null)
            {
                k = 0;
            } else
            {
                k = logos.size();
            }
            j = l;
            if (i1 + l > k)
            {
                j = k - i1;
            }
            viewgroup = ((ViewGroup) (new Object[j]));
            k = 0;
_L6:
            if (k < j) goto _L4; else goto _L3
_L3:
            if (i == 0)
            {
                j = platformGridView.COLUMN_PER_LINE;
                lines = viewgroup.length / j;
                if (viewgroup.length % j > 0)
                {
                    lines = lines + 1;
                }
            }
            girds[i] = new GridView(this);
            girds[i].setData(lines, viewgroup);
_L2:
            return girds[i];
_L4:
            viewgroup[k] = logos.get(i1 + k);
            k++;
            if (true) goto _L6; else goto _L5
_L5:
        }

        public void onScreenChange(int i, int j)
        {
            ImageView aimageview[] = platformGridView.points;
            j = 0;
            do
            {
                if (j >= aimageview.length)
                {
                    aimageview[i].setImageBitmap(platformGridView.bluePoint);
                    return;
                }
                aimageview[j].setImageBitmap(platformGridView.grayPoint);
                j++;
            } while (true);
        }



        public PlatformAdapter(PlatformGridView platformgridview)
        {
            Platform aplatform[];
            HashMap hashmap;
            platformGridView = platformgridview;
            logos = new ArrayList();
            aplatform = platformgridview.platformList;
            hashmap = platformgridview.hiddenPlatforms;
            if (aplatform == null) goto _L2; else goto _L1
_L1:
            Object obj = aplatform;
            if (hashmap == null) goto _L4; else goto _L3
_L3:
            obj = aplatform;
            if (hashmap.size() <= 0) goto _L4; else goto _L5
_L5:
            ArrayList arraylist;
            int i;
            int j;
            arraylist = new ArrayList();
            j = aplatform.length;
            i = 0;
_L8:
            if (i < j) goto _L7; else goto _L6
_L6:
            obj = new Platform[arraylist.size()];
            i = 0;
_L9:
            if (i < obj.length)
            {
                break MISSING_BLOCK_LABEL_233;
            }
_L4:
            logos.addAll(Arrays.asList(((Object []) (obj))));
_L2:
            obj = platformgridview.customers;
            if (obj != null)
            {
                logos.addAll(((java.util.Collection) (obj)));
            }
            callback = platformgridview;
            girds = null;
            if (logos != null)
            {
                int l = logos.size();
                int i1 = platformgridview.PAGE_SIZE;
                int k = l / i1;
                i = k;
                if (l % i1 > 0)
                {
                    i = k + 1;
                }
                girds = new GridView[i];
            }
            return;
_L7:
            obj = aplatform[i];
            if (!hashmap.containsKey(((Platform) (obj)).getName()))
            {
                arraylist.add(obj);
            }
            i++;
              goto _L8
            obj[i] = (Platform)arraylist.get(i);
            i++;
              goto _L9
        }
    }


    private static final int MIN_CLICK_INTERVAL = 1000;
    private static final int MSG_PLATFORM_LIST_GOT = 1;
    private int COLUMN_PER_LINE;
    private int LINE_PER_PAGE;
    private int PAGE_SIZE;
    private View bgView;
    private Bitmap bluePoint;
    private ArrayList customers;
    private Bitmap grayPoint;
    private HashMap hiddenPlatforms;
    private long lastClickTime;
    private ViewPagerClassic pager;
    private PlatformListPage parent;
    private Platform platformList[];
    private ImageView points[];
    private HashMap reqData;
    private boolean silent;

    public PlatformGridView(Context context)
    {
        super(context);
        init(context);
    }

    public PlatformGridView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(context);
    }

    private void calPageSize()
    {
        float f = (float)R.getScreenWidth(getContext()) / (float)R.getScreenHeight(getContext());
        if ((double)f < 0.63D)
        {
            COLUMN_PER_LINE = 3;
            LINE_PER_PAGE = 3;
        } else
        if ((double)f < 0.75D)
        {
            COLUMN_PER_LINE = 3;
            LINE_PER_PAGE = 2;
        } else
        {
            LINE_PER_PAGE = 1;
            if ((double)f >= 1.75D)
            {
                COLUMN_PER_LINE = 6;
            } else
            if ((double)f >= 1.5D)
            {
                COLUMN_PER_LINE = 5;
            } else
            if ((double)f >= 1.3D)
            {
                COLUMN_PER_LINE = 4;
            } else
            {
                COLUMN_PER_LINE = 3;
            }
        }
        PAGE_SIZE = COLUMN_PER_LINE * LINE_PER_PAGE;
    }

    private void disableOverScrollMode(View view)
    {
        if (android.os.Build.VERSION.SDK_INT < 9)
        {
            return;
        }
        try
        {
            Method method = android/view/View.getMethod("setOverScrollMode", new Class[] {
                Integer.TYPE
            });
            method.setAccessible(true);
            method.invoke(view, new Object[] {
                Integer.valueOf(2)
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            view.printStackTrace();
        }
    }

    private void init(Context context)
    {
        calPageSize();
        setOrientation(1);
        pager = new ViewPagerClassic(context);
        disableOverScrollMode(pager);
        pager.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2));
        addView(pager);
        (new Thread() {

            final PlatformGridView this$0;

            public void run()
            {
                try
                {
                    platformList = ShareSDK.getPlatformList();
                    if (platformList == null)
                    {
                        platformList = new Platform[0];
                    }
                    UIHandler.sendEmptyMessage(1, PlatformGridView.this);
                    return;
                }
                catch (Throwable throwable)
                {
                    throwable.printStackTrace();
                }
            }

            
            {
                this$0 = PlatformGridView.this;
                super();
            }
        }).start();
    }

    public void afterPlatformListGot()
    {
        Object obj = new PlatformAdapter(this);
        pager.setAdapter(((ViewPagerAdapter) (obj)));
        int i = 0;
        if (platformList != null)
        {
            int k;
            int i1;
            if (customers == null)
            {
                i = 0;
            } else
            {
                i = customers.size();
            }
            if (platformList == null)
            {
                k = 0;
            } else
            {
                k = platformList.length;
            }
            if (hiddenPlatforms == null)
            {
                i1 = 0;
            } else
            {
                i1 = hiddenPlatforms.size();
            }
            i1 = (k - i1) + i;
            k = i1 / PAGE_SIZE;
            i = k;
            if (i1 % PAGE_SIZE > 0)
            {
                i = k + 1;
            }
        }
        points = new ImageView[i];
        if (points.length <= 0)
        {
            return;
        }
        obj = getContext();
        LinearLayout linearlayout = new LinearLayout(((Context) (obj)));
        android.widget.LinearLayout.LayoutParams layoutparams;
        int l;
        int j1;
        if (i > 1)
        {
            l = 0;
        } else
        {
            l = 8;
        }
        linearlayout.setVisibility(l);
        layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
        layoutparams.gravity = 1;
        linearlayout.setLayoutParams(layoutparams);
        addView(linearlayout);
        j1 = R.dipToPx(((Context) (obj)), 5);
        l = R.getBitmapRes(getContext(), "light_blue_point");
        if (l > 0)
        {
            grayPoint = BitmapFactory.decodeResource(getResources(), l);
        }
        l = R.getBitmapRes(getContext(), "blue_point");
        if (l > 0)
        {
            bluePoint = BitmapFactory.decodeResource(getResources(), l);
        }
        l = 0;
        do
        {
            if (l >= i)
            {
                int j = pager.getCurrentScreen();
                points[j].setImageBitmap(bluePoint);
                return;
            }
            points[l] = new ImageView(((Context) (obj)));
            points[l].setScaleType(android.widget.ImageView.ScaleType.CENTER_INSIDE);
            points[l].setImageBitmap(grayPoint);
            android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(j1, j1);
            layoutparams1.setMargins(j1, j1, j1, 0);
            points[l].setLayoutParams(layoutparams1);
            linearlayout.addView(points[l]);
            l++;
        } while (true);
    }

    public boolean handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 1: default 24
    //                   1 26;
           goto _L1 _L2
_L1:
        return false;
_L2:
        afterPlatformListGot();
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void onClick(View view)
    {
        long l = System.currentTimeMillis();
        if (l - lastClickTime < 1000L)
        {
            return;
        } else
        {
            lastClickTime = l;
            ArrayList arraylist = new ArrayList(1);
            arraylist.add(view.getTag());
            parent.onPlatformIconClick(view, arraylist);
            return;
        }
    }

    public void onConfigurationChanged()
    {
        int i = pager.getCurrentScreen();
        int j = PAGE_SIZE;
        calPageSize();
        i = (i * j) / PAGE_SIZE;
        removeViewAt(1);
        afterPlatformListGot();
        pager.setCurrentScreen(i);
    }

    public void setCustomerLogos(ArrayList arraylist)
    {
        customers = arraylist;
    }

    public void setData(HashMap hashmap, boolean flag)
    {
        reqData = hashmap;
        silent = flag;
    }

    public void setEditPageBackground(View view)
    {
        bgView = view;
    }

    public void setHiddenPlatforms(HashMap hashmap)
    {
        hiddenPlatforms = hashmap;
    }

    public void setParent(PlatformListPage platformlistpage)
    {
        parent = platformlistpage;
    }









}
