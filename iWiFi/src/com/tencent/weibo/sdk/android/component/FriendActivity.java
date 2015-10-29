// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.weibo.sdk.android.api.PublishWeiBoAPI;
import com.tencent.weibo.sdk.android.api.adapter.FriendAdapter;
import com.tencent.weibo.sdk.android.api.util.BackGroudSeletor;
import com.tencent.weibo.sdk.android.api.util.FirendCompare;
import com.tencent.weibo.sdk.android.api.util.HypyUtil;
import com.tencent.weibo.sdk.android.api.util.Util;
import com.tencent.weibo.sdk.android.model.AccountModel;
import com.tencent.weibo.sdk.android.model.Firend;
import com.tencent.weibo.sdk.android.model.ModelResult;
import com.tencent.weibo.sdk.android.network.HttpCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            LetterListView, PublishActivity

public class FriendActivity extends Activity
    implements LetterListView.OnTouchingLetterChangedListener, HttpCallback
{

    private FriendAdapter adapter;
    private Map child;
    private ProgressDialog dialog;
    private EditText editText;
    private List group;
    private List groups;
    private LetterListView letterListView;
    private ExpandableListView listView;
    private Map newchild;
    private List newgourp;
    private int nums[];
    private TextView textView;

    public FriendActivity()
    {
        groups = new ArrayList();
        group = new ArrayList();
        child = new HashMap();
        newgourp = new ArrayList();
        newchild = new HashMap();
    }

    private void ex(final List groupt, final Map childs)
    {
        int i = 0;
        do
        {
            if (i >= groupt.size())
            {
                listView.setOnGroupExpandListener(new android.widget.ExpandableListView.OnGroupExpandListener() {

                    final FriendActivity this$0;

                    public void onGroupExpand(int j)
                    {
                    }

            
            {
                this$0 = FriendActivity.this;
                super();
            }
                });
                listView.setOnGroupClickListener(new android.widget.ExpandableListView.OnGroupClickListener() {

                    final FriendActivity this$0;

                    public boolean onGroupClick(ExpandableListView expandablelistview, View view, int j, long l)
                    {
                        return true;
                    }

            
            {
                this$0 = FriendActivity.this;
                super();
            }
                });
                listView.setOnChildClickListener(new android.widget.ExpandableListView.OnChildClickListener() {

                    final FriendActivity this$0;
                    private final Map val$childs;
                    private final List val$groupt;

                    public boolean onChildClick(ExpandableListView expandablelistview, View view, int j, int k, long l)
                    {
                        expandablelistview = new Intent();
                        expandablelistview.setClass(FriendActivity.this, com/tencent/weibo/sdk/android/component/PublishActivity);
                        expandablelistview.putExtra("firend", ((Firend)((List)childs.get(groupt.get(j))).get(k)).getNick());
                        setResult(-1, expandablelistview);
                        finish();
                        return true;
                    }

            
            {
                this$0 = FriendActivity.this;
                childs = map;
                groupt = list;
                super();
            }
                });
                listView.setOnScrollListener(new android.widget.AbsListView.OnScrollListener() {

                    final FriendActivity this$0;
                    private final List val$groupt;

                    public void onScroll(AbsListView abslistview, int j, int k, int l)
                    {
                        Log.d("first", (new StringBuilder(String.valueOf(j))).toString());
                        k = 0;
                        do
                        {
                            if (k >= groupt.size())
                            {
                                return;
                            }
                            if (k == 0 && j >= 0 && j < nums[k])
                            {
                                textView.setText(((String)groupt.get(k)).toUpperCase());
                                return;
                            }
                            if (j < nums[k] && j >= nums[k - 1])
                            {
                                textView.setText(((String)groupt.get(k)).toUpperCase());
                                return;
                            }
                            k++;
                        } while (true);
                    }

                    public void onScrollStateChanged(AbsListView abslistview, int j)
                    {
                    }

            
            {
                this$0 = FriendActivity.this;
                groupt = list;
                super();
            }
                });
                return;
            }
            listView.expandGroup(i);
            i++;
        } while (true);
    }

    private void getJsonData(JSONObject jsonobject)
    {
        ArrayList arraylist = new ArrayList();
        jsonobject = jsonobject.getJSONObject("data").getJSONArray("info");
        int i = 0;
_L3:
        if (i < jsonobject.length()) goto _L2; else goto _L1
_L1:
        Collections.sort(arraylist, new FirendCompare());
_L4:
        i = 0;
_L5:
        if (i >= arraylist.size())
        {
            return;
        }
        break MISSING_BLOCK_LABEL_170;
_L2:
        Firend firend = new Firend();
        firend.setNick(((JSONObject)jsonobject.get(i)).getString("nick"));
        firend.setName(((JSONObject)jsonobject.get(i)).getString("name"));
        firend.setHeadurl((new StringBuilder(String.valueOf(((JSONObject)jsonobject.get(i)).getString("headurl").replaceAll("\\/", "/")))).append("/180").toString());
        arraylist.add(firend);
        i++;
          goto _L3
        jsonobject;
        jsonobject.printStackTrace();
          goto _L4
        if (child.get(HypyUtil.cn2py(((Firend)arraylist.get(i)).getNick()).substring(0, 1).toUpperCase()) != null)
        {
            ((List)child.get(HypyUtil.cn2py(((Firend)arraylist.get(i)).getNick()).substring(0, 1).toUpperCase())).add((Firend)arraylist.get(i));
        } else
        {
            Log.d("group", HypyUtil.cn2py(((Firend)arraylist.get(i)).getNick()).substring(0, 1));
            group.add(HypyUtil.cn2py(((Firend)arraylist.get(i)).getNick()).substring(0, 1).toUpperCase());
            jsonobject = new ArrayList();
            jsonobject.add((Firend)arraylist.get(i));
            child.put(HypyUtil.cn2py(((Firend)arraylist.get(i)).getNick()).substring(0, 1).toUpperCase(), jsonobject);
        }
        i++;
          goto _L5
    }

    private void getdate()
    {
        if (dialog == null)
        {
            dialog = new ProgressDialog(this);
            dialog.setMessage("\u8BF7\u7A0D\u540E...");
            dialog.show();
        }
        (new PublishWeiBoAPI(new AccountModel(Util.getSharePersistent(getApplicationContext(), "ACCESS_TOKEN")))).mutual_list(this, this, null, 0, 0, 0, 10);
    }

    private View initview()
    {
        LinearLayout linearlayout = new LinearLayout(this);
        Object obj = new android.widget.LinearLayout.LayoutParams(-1, -1);
        linearlayout.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        linearlayout.setOrientation(1);
        Object obj1 = new RelativeLayout(this);
        ((RelativeLayout) (obj1)).setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -2));
        ((RelativeLayout) (obj1)).setGravity(0);
        ((RelativeLayout) (obj1)).setBackgroundDrawable(BackGroudSeletor.getdrawble("up_bg2x", this));
        Object obj3 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj3)).addRule(15);
        ((android.widget.RelativeLayout.LayoutParams) (obj3)).addRule(9, -1);
        ((android.widget.RelativeLayout.LayoutParams) (obj3)).addRule(15, -1);
        obj3.topMargin = 10;
        obj3.leftMargin = 10;
        obj3.bottomMargin = 10;
        Object obj2 = new Button(this);
        ((Button) (obj2)).setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(new String[] {
            "return_btn2x", "return_btn_hover"
        }, this));
        ((Button) (obj2)).setText("  \u8FD4\u56DE");
        ((Button) (obj2)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        ((Button) (obj2)).setOnClickListener(new android.view.View.OnClickListener() {

            final FriendActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = FriendActivity.this;
                super();
            }
        });
        obj3 = new TextView(this);
        ((TextView) (obj3)).setText("\u597D\u53CB\u5217\u8868");
        ((TextView) (obj3)).setTextColor(-1);
        ((TextView) (obj3)).setTextSize(24F);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(13, -1);
        ((TextView) (obj3)).setLayoutParams(layoutparams);
        ((RelativeLayout) (obj1)).addView(((View) (obj3)));
        ((RelativeLayout) (obj1)).addView(((View) (obj2)));
        linearlayout.addView(((View) (obj1)));
        obj1 = new LinearLayout(this);
        ((LinearLayout) (obj1)).setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2));
        ((LinearLayout) (obj1)).setOrientation(0);
        ((LinearLayout) (obj1)).setGravity(17);
        editText = new EditText(this);
        editText.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2, 1.0F));
        editText.setPadding(20, 0, 10, 0);
        editText.setBackgroundDrawable(BackGroudSeletor.getdrawble("searchbg_", this));
        editText.setCompoundDrawablesWithIntrinsicBounds(BackGroudSeletor.getdrawble("search_", this), null, null, null);
        editText.setHint("\u641C\u7D22");
        editText.setTextSize(18F);
        editText.addTextChangedListener(new TextWatcher() {

            final FriendActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                search(editable.toString());
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                this$0 = FriendActivity.this;
                super();
            }
        });
        ((LinearLayout) (obj1)).addView(editText);
        linearlayout.addView(((View) (obj1)));
        listView = new ExpandableListView(this);
        new android.widget.FrameLayout.LayoutParams(-1, -1);
        listView.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        listView.setGroupIndicator(null);
        obj = new LinearLayout(this);
        ((LinearLayout) (obj)).setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2));
        textView = new TextView(this);
        ((LinearLayout) (obj)).setPadding(30, 0, 0, 0);
        ((LinearLayout) (obj)).setGravity(16);
        textView.setTextSize(18F);
        textView.setTextColor(-1);
        textView.setText("\u5E38\u7528\u8054\u7CFB\u4EBA");
        ((LinearLayout) (obj)).addView(textView);
        ((LinearLayout) (obj)).setBackgroundColor(Color.parseColor("#b0bac3"));
        letterListView = new LetterListView(this, group);
        letterListView.setOnTouchingLetterChangedListener(this);
        obj1 = new android.widget.RelativeLayout.LayoutParams(50, -1);
        obj2 = new RelativeLayout(this);
        obj3 = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        ((android.widget.RelativeLayout.LayoutParams) (obj1)).addRule(11);
        letterListView.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
        ((RelativeLayout) (obj2)).setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj3)));
        ((RelativeLayout) (obj2)).addView(listView);
        ((RelativeLayout) (obj2)).addView(((View) (obj)));
        ((RelativeLayout) (obj2)).addView(letterListView);
        linearlayout.addView(((View) (obj2)));
        return linearlayout;
    }

    private int totle(int i)
    {
        if (i == 0)
        {
            return ((List)child.get(group.get(i))).size() + 1;
        } else
        {
            return ((List)child.get(group.get(i))).size() + 1 + totle(i - 1);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        bundle = (LinearLayout)initview();
        getdate();
        setContentView(bundle);
    }

    public void onResult(Object obj)
    {
        if (dialog != null && dialog.isShowing())
        {
            dialog.dismiss();
        }
        if (obj == null || !((ModelResult)obj).isSuccess()) goto _L2; else goto _L1
_L1:
        int i;
        getJsonData((JSONObject)((ModelResult)obj).getObj());
        nums = new int[group.size()];
        i = 0;
_L6:
        if (i < nums.length) goto _L4; else goto _L3
_L3:
        letterListView.setB(group);
        adapter = new FriendAdapter(this, group, child);
        listView.setAdapter(adapter);
        ex(group, child);
        Log.d("\u53D1\u9001\u6210\u529F", obj.toString());
_L2:
        return;
_L4:
        nums[i] = totle(i);
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onStop()
    {
        super.onStop();
        if (dialog != null && dialog.isShowing())
        {
            dialog.dismiss();
        }
    }

    public void onTouchingLetterChanged(int i)
    {
        listView.setSelectedGroup(i);
    }

    public void search(String s)
    {
        int i;
        newgourp.clear();
        newchild.clear();
        i = 0;
_L3:
        if (i < group.size()) goto _L2; else goto _L1
_L1:
        Log.d("size", (new StringBuilder(String.valueOf(newgourp.size()))).append("---").append(newchild.size()).toString());
        nums = new int[newgourp.size()];
        i = 0;
_L5:
        if (i >= nums.length)
        {
            letterListView.setB(newgourp);
            adapter.setChild(newchild);
            adapter.setGroup(newgourp);
            adapter.notifyDataSetChanged();
            ex(newgourp, newchild);
            return;
        }
        break MISSING_BLOCK_LABEL_431;
_L2:
        int j = 0;
_L4:
label0:
        {
            if (j < ((List)child.get(group.get(i))).size())
            {
                break label0;
            }
            i++;
        }
          goto _L3
        if (((Firend)((List)child.get(group.get(i))).get(j)).getNick().contains(s))
        {
            if (newchild.get(group.get(i)) == null)
            {
                ArrayList arraylist = new ArrayList();
                arraylist.add((Firend)((List)child.get(group.get(i))).get(j));
                newchild.put((String)group.get(i), arraylist);
                newgourp.add((String)group.get(i));
            } else
            {
                ((List)newchild.get(group.get(i))).add((Firend)((List)child.get(group.get(i))).get(j));
            }
        }
        j++;
          goto _L4
        nums[i] = totle(i);
        i++;
          goto _L5
    }


}
