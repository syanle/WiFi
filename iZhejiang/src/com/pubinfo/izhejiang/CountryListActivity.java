// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.cat.adapter.ListViewAdapter;
import com.cat.data.Person;
import com.cat.parase.CountryCodeParser;
import com.cat.tools.StringHelper;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

// Referenced classes of package com.pubinfo.izhejiang:
//            ThinkAndroidBaseActivity

public class CountryListActivity extends ThinkAndroidBaseActivity
{
    public class MyThread extends Thread
    {

        final CountryListActivity this$0;

        public void run()
        {
            Looper.prepare();
            setData();
            String as[] = sortIndex(persons);
            sortList(as);
            selector = new HashMap();
            int i = 0;
_L3:
            int j = indexStr.length;
            if (i < j) goto _L2; else goto _L1
_L1:
            Looper.loop();
            return;
_L2:
            j = 0;
_L4:
            if (j < newPersons.size())
            {
                break MISSING_BLOCK_LABEL_92;
            }
            i++;
              goto _L3
            if (((Person)newPersons.get(j)).getCountrycn().equals(indexStr[i]))
            {
                selector.put(indexStr[i], Integer.valueOf(j));
            }
            j++;
              goto _L4
            Exception exception;
            exception;
              goto _L1
        }

        public MyThread()
        {
            this$0 = CountryListActivity.this;
            super();
        }
    }


    String activity;
    private ListViewAdapter adapter;
    ImageButton backButton;
    LinearLayout confirm;
    private boolean flag;
    private int height;
    private String indexStr[] = {
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", 
        "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", 
        "U", "V", "W", "X", "Y", "Z"
    };
    private LinearLayout layoutIndex;
    private ListView listView;
    private List newPersons;
    private List persons;
    private HashMap selector;
    TextView title;
    private TextView tv_show;

    public CountryListActivity()
    {
        persons = null;
        newPersons = new ArrayList();
        flag = false;
    }

    public static String readLocalJson(Context context, String s)
    {
        try
        {
            context = context.getResources().getAssets().open(s);
            s = new byte[context.available()];
            context.read(s);
            context = new String(s, "utf-8");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return "";
        }
        return context;
    }

    private void setData()
    {
        String s;
        s = readLocalJson(getApplicationContext(), "countrycode.json");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        persons = (List)CountryCodeParser.CountryCodeparaser(s);
        return;
        Exception exception;
        exception;
    }

    private void sortList(String as[])
    {
        int i = 0;
_L3:
        int j;
        if (i >= as.length)
        {
            return;
        }
        if (as[i].length() == 1)
        {
            break MISSING_BLOCK_LABEL_181;
        }
        j = 0;
_L4:
        if (j < persons.size()) goto _L2; else goto _L1
_L1:
        i++;
          goto _L3
_L2:
        if (as[i].equals(((Person)persons.get(j)).getPinYinName()))
        {
            Person person = new Person();
            person.setCountry(((Person)persons.get(j)).getCountry());
            person.setPinYinName(((Person)persons.get(j)).getPinYinName());
            person.setCountrycn(((Person)persons.get(j)).getCountrycn());
            person.setCode(((Person)persons.get(j)).getCode());
            newPersons.add(person);
        }
        j++;
          goto _L4
        Person person1 = new Person();
        person1.setCountrycn(as[i]);
        newPersons.add(person1);
          goto _L1
    }

    public void getIndexView()
    {
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, height);
        int i = 0;
        do
        {
            if (i >= indexStr.length)
            {
                return;
            }
            TextView textview = new TextView(this);
            textview.setLayoutParams(layoutparams);
            textview.setText(indexStr[i]);
            textview.setPadding(10, 0, 10, 0);
            layoutIndex.addView(textview);
            layoutIndex.setOnTouchListener(new android.view.View.OnTouchListener() {

                final CountryListActivity this$0;

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    int j = (int)(motionevent.getY() / (float)height);
                    if (j > -1 && j < indexStr.length)
                    {
                        view = indexStr[j];
                        if (selector.containsKey(view))
                        {
                            int k = ((Integer)selector.get(view)).intValue();
                            if (listView.getHeaderViewsCount() > 0)
                            {
                                listView.setSelectionFromTop(listView.getHeaderViewsCount() + k, 0);
                            } else
                            {
                                listView.setSelectionFromTop(k, 0);
                            }
                            tv_show.setVisibility(0);
                            tv_show.setText(indexStr[j]);
                        }
                    }
                    motionevent.getAction();
                    JVM INSTR tableswitch 0 2: default 172
                //                               0 190
                //                               1 208
                //                               2 172;
                       goto _L1 _L2 _L3 _L1
_L1:
                    return true;
_L2:
                    layoutIndex.setBackgroundColor(Color.parseColor("#606060"));
                    continue; /* Loop/switch isn't completed */
_L3:
                    layoutIndex.setBackgroundColor(Color.parseColor("#00ffffff"));
                    tv_show.setVisibility(8);
                    if (true) goto _L1; else goto _L4
_L4:
                }

            
            {
                this$0 = CountryListActivity.this;
                super();
            }
            });
            i++;
        } while (true);
    }

    protected void onCreate(Bundle bundle)
    {
        int i;
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f03000a);
        backButton = (ImageButton)findViewById(0x7f0a002c);
        title = (TextView)findViewById(0x7f0a002d);
        confirm = (LinearLayout)findViewById(0x7f0a002e);
        title.setText("\u9009\u62E9\u56FD\u5BB6\u548C\u5730\u533A");
        layoutIndex = (LinearLayout)findViewById(0x7f0a0034);
        layoutIndex.setBackgroundColor(Color.parseColor("#00ffffff"));
        listView = (ListView)findViewById(0x7f0a0032);
        tv_show = (TextView)findViewById(0x7f0a0033);
        tv_show.setVisibility(8);
        activity = getIntent().getStringExtra("activity");
        setData();
        sortList(sortIndex(persons));
        selector = new HashMap();
        i = 0;
_L2:
        if (i >= indexStr.length)
        {
            adapter = new ListViewAdapter(this, newPersons);
            listView.setAdapter(adapter);
            listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                final CountryListActivity this$0;

                public void onItemClick(AdapterView adapterview, View view, int k, long l)
                {
                    if (activity != null && !activity.equals(""))
                    {
                        if (activity.equals("RegistFirstActivity"))
                        {
                            adapterview = new Intent();
                            adapterview.putExtra("code", ((Person)newPersons.get(k)).getCode());
                            adapterview.putExtra("countrycn", ((Person)newPersons.get(k)).getCountrycn());
                            setResult(2, adapterview);
                            finish();
                        } else
                        if (activity.equals("LoginActivity"))
                        {
                            adapterview = new Intent();
                            adapterview.putExtra("code", ((Person)newPersons.get(k)).getCode());
                            adapterview.putExtra("countrycn", ((Person)newPersons.get(k)).getCountrycn());
                            adapterview.putExtra("Activity", "CountryListActivity");
                            setResult(1, adapterview);
                            finish();
                            return;
                        }
                    }
                }

            
            {
                this$0 = CountryListActivity.this;
                super();
            }
            });
            bundle = new android.view.View.OnClickListener() {

                final CountryListActivity this$0;

                public void onClick(View view)
                {
                    switch (view.getId())
                    {
                    default:
                        return;

                    case 2131361836: 
                        finish();
                        break;
                    }
                }

            
            {
                this$0 = CountryListActivity.this;
                super();
            }
            };
            confirm.setVisibility(8);
            backButton.setOnClickListener(bundle);
            return;
        }
        int j = 0;
        do
        {
label0:
            {
                if (j < newPersons.size())
                {
                    break label0;
                }
                i++;
            }
            if (true)
            {
                continue;
            }
            if (((Person)newPersons.get(j)).getCountrycn().equals(indexStr[i]))
            {
                selector.put(indexStr[i], Integer.valueOf(j));
            }
            j++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void onWindowFocusChanged(boolean flag1)
    {
        if (!flag)
        {
            height = layoutIndex.getMeasuredHeight() / indexStr.length;
            getIndexView();
            flag = true;
        }
    }

    public String[] sortIndex(List list)
    {
        TreeSet treeset;
        String as[];
        treeset = new TreeSet();
        as = list.iterator();
_L5:
        if (as.hasNext()) goto _L2; else goto _L1
_L1:
        Object obj;
        int i;
        as = new String[list.size() + treeset.size()];
        i = 0;
        obj = treeset.iterator();
_L6:
        if (((Iterator) (obj)).hasNext()) goto _L4; else goto _L3
_L3:
        obj = new String[list.size()];
        i = 0;
_L7:
        if (i >= list.size())
        {
            System.arraycopy(obj, 0, as, treeset.size(), obj.length);
            Arrays.sort(as, String.CASE_INSENSITIVE_ORDER);
            return as;
        }
        break MISSING_BLOCK_LABEL_157;
_L2:
        treeset.add(StringHelper.getPinYinHeadChar(((Person)as.next()).getCountrycn()).substring(0, 1));
          goto _L5
_L4:
        as[i] = (String)((Iterator) (obj)).next();
        i++;
          goto _L6
        ((Person)list.get(i)).setPinYinName(StringHelper.getPingYin(((Person)list.get(i)).getCountrycn().toString()));
        obj[i] = StringHelper.getPingYin(((Person)list.get(i)).getCountrycn().toString());
        i++;
          goto _L7
    }











}
