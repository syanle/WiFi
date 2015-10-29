// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.Toast;
import com.tencent.weibo.sdk.android.api.PublishWeiBoAPI;
import com.tencent.weibo.sdk.android.api.adapter.ConversationAdapter;
import com.tencent.weibo.sdk.android.api.util.BackGroudSeletor;
import com.tencent.weibo.sdk.android.api.util.Util;
import com.tencent.weibo.sdk.android.model.AccountModel;
import com.tencent.weibo.sdk.android.model.ModelResult;
import com.tencent.weibo.sdk.android.network.HttpCallback;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            PublishActivity

public class ConversationActivity extends Activity
    implements HttpCallback
{

    private ConversationAdapter adapter;
    private ProgressDialog dialog;
    private EditText editText;
    private List list;
    private ListView listView;

    public ConversationActivity()
    {
    }

    private void click(final List li)
    {
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ConversationActivity this$0;
            private final List val$li;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = new Intent();
                adapterview.setClass(ConversationActivity.this, com/tencent/weibo/sdk/android/component/PublishActivity);
                adapterview.putExtra("conversation", (String)li.get(i));
                setResult(-1, adapterview);
                finish();
            }

            
            {
                this$0 = ConversationActivity.this;
                li = list1;
                super();
            }
        });
    }

    private List initData(JSONObject jsonobject)
    {
        ArrayList arraylist = new ArrayList();
        int i;
        try
        {
            jsonobject = jsonobject.getJSONObject("data").getJSONArray("info");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            jsonobject.printStackTrace();
            return arraylist;
        }
        i = 0;
        if (i >= jsonobject.length())
        {
            return arraylist;
        }
        arraylist.add((new StringBuilder("#")).append(jsonobject.getJSONObject(i).getString("text")).append("#").toString());
        i++;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_22;
        }
    }

    private View initview()
    {
        LinearLayout linearlayout = new LinearLayout(this);
        Object obj = new android.widget.LinearLayout.LayoutParams(-1, -1);
        linearlayout.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        linearlayout.setOrientation(1);
        LinearLayout linearlayout1 = new LinearLayout(this);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        linearlayout1.setLayoutParams(layoutparams);
        linearlayout1.setOrientation(0);
        linearlayout1.setBackgroundDrawable(BackGroudSeletor.getdrawble("up_bg2x", this));
        linearlayout1.setPadding(20, 0, 20, 0);
        linearlayout1.setGravity(16);
        Object obj1 = new LinearLayout(this);
        ((LinearLayout) (obj1)).setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2, 1.0F));
        ((LinearLayout) (obj1)).setPadding(0, 0, 12, 0);
        editText = new EditText(this);
        editText.setSingleLine(true);
        editText.setLines(1);
        editText.setTextSize(18F);
        editText.setHint("\u641C\u7D22\u8BDD\u9898");
        editText.setPadding(20, 0, 10, 0);
        editText.setBackgroundDrawable(BackGroudSeletor.getdrawble("huati_input2x", this));
        editText.setCompoundDrawablesWithIntrinsicBounds(BackGroudSeletor.getdrawble("huati_icon_hover2x", this), null, null, null);
        editText.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        Button button = new Button(this);
        button.setBackgroundDrawable(BackGroudSeletor.createBgByImageIds(new String[] {
            "sent_btn_22x", "sent_btn_hover"
        }, this));
        button.setTextColor(-1);
        button.setText("\u53D6\u6D88");
        ((LinearLayout) (obj1)).addView(editText);
        linearlayout1.addView(((View) (obj1)));
        linearlayout1.addView(button);
        linearlayout.addView(linearlayout1);
        linearlayout1 = new LinearLayout(this);
        linearlayout1.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2, 1.0F));
        listView = new ListView(this);
        listView.setDivider(BackGroudSeletor.getdrawble("table_lie_", this));
        listView.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        editText.addTextChangedListener(new TextWatcher() {

            final ConversationActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                ArrayList arraylist = new ArrayList();
                int i = 0;
                do
                {
                    if (i >= list.size())
                    {
                        adapter.setCvlist(arraylist);
                        adapter.notifyDataSetChanged();
                        click(arraylist);
                        return;
                    }
                    if (((String)list.get(i)).contains(editable.toString()))
                    {
                        arraylist.add((String)list.get(i));
                    }
                    i++;
                } while (true);
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                this$0 = ConversationActivity.this;
                super();
            }
        });
        obj = new LinearLayout(this);
        obj1 = new Button(this);
        ((LinearLayout) (obj)).setGravity(17);
        ((Button) (obj1)).setLayoutParams(layoutparams);
        ((Button) (obj1)).setText("abc");
        ((Button) (obj1)).setTextColor(0xff000000);
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final ConversationActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = ConversationActivity.this;
                super();
            }
        });
        ((LinearLayout) (obj)).addView(((View) (obj1)));
        linearlayout1.addView(listView);
        linearlayout.addView(linearlayout1);
        return linearlayout;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView((LinearLayout)initview());
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ConversationActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                Toast.makeText(ConversationActivity.this, (new StringBuilder(String.valueOf(i))).toString(), 100).show();
            }

            
            {
                this$0 = ConversationActivity.this;
                super();
            }
        });
        if (dialog == null)
        {
            dialog = new ProgressDialog(this);
            dialog.setMessage("\u8BF7\u7A0D\u540E...");
            dialog.setCancelable(false);
        }
        dialog.show();
        (new PublishWeiBoAPI(new AccountModel(Util.getSharePersistent(getApplicationContext(), "ACCESS_TOKEN")))).recent_used(this, this, null, 15, 1, 0);
    }

    public void onResult(Object obj)
    {
        if (dialog != null && dialog.isShowing())
        {
            dialog.dismiss();
        }
        if (obj != null && ((ModelResult)obj).isSuccess())
        {
            Log.d("\u53D1\u9001\u6210\u529F", ((ModelResult)obj).getObj().toString());
            list = initData((JSONObject)((ModelResult)obj).getObj());
            adapter = new ConversationAdapter(this, list);
            listView.setAdapter(adapter);
            click(list);
        }
    }

    protected void onStop()
    {
        super.onStop();
        if (dialog != null && dialog.isShowing())
        {
            dialog.dismiss();
        }
    }



}
