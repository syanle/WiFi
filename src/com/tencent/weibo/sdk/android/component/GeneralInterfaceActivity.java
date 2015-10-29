// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.component;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.os.Bundle;
import android.os.Looper;
import android.os.MessageQueue;
import android.view.View;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.Toast;
import com.tencent.weibo.sdk.android.api.FriendAPI;
import com.tencent.weibo.sdk.android.api.LbsAPI;
import com.tencent.weibo.sdk.android.api.TimeLineAPI;
import com.tencent.weibo.sdk.android.api.UserAPI;
import com.tencent.weibo.sdk.android.api.WeiboAPI;
import com.tencent.weibo.sdk.android.api.util.Util;
import com.tencent.weibo.sdk.android.model.AccountModel;
import com.tencent.weibo.sdk.android.model.ModelResult;
import com.tencent.weibo.sdk.android.network.HttpCallback;

// Referenced classes of package com.tencent.weibo.sdk.android.component:
//            GeneralDataShowActivity

public class GeneralInterfaceActivity extends Activity
    implements android.view.View.OnClickListener
{

    private String accessToken;
    private Button addPic;
    private Button addPicUrl;
    private Button addWeibo;
    private Context context;
    private Button deviceStatus;
    private Button errorReport;
    private FriendAPI friendAPI;
    private Button friendAdd;
    private Button friendCheck;
    private Button friendFunsList;
    private Button friendGetIntimateFriend;
    private Button friendIdolList;
    private Button friendMutualList;
    private Button homeTimeLine;
    private Button htTimeLine;
    private double latitude;
    private LbsAPI lbsAPI;
    private Button lbsGetAroundNew;
    private Button lbsGetAroundPeople;
    private PopupWindow loadingWindow;
    private double longitude;
    private HttpCallback mCallBack;
    private Location mLocation;
    private ProgressBar progressBar;
    private String requestFormat;
    private ScrollView scrollView;
    private Button tReList;
    private TimeLineAPI timeLineAPI;
    private UserAPI userAPI;
    private Button userInfo;
    private Button userInfos;
    private Button userOtherInfo;
    private Button userTimeLine;
    private WeiboAPI weiboAPI;

    public GeneralInterfaceActivity()
    {
        loadingWindow = null;
        progressBar = null;
        scrollView = null;
        context = null;
        requestFormat = "json";
        longitude = 0.0D;
        latitude = 0.0D;
    }

    public void initInterface()
    {
        scrollView = new ScrollView(this);
        TableLayout tablelayout = new TableLayout(this);
        tablelayout.setLayoutParams(new android.widget.TableLayout.LayoutParams(-1, -1));
        TableRow tablerow = new TableRow(this);
        homeTimeLine = new Button(this);
        homeTimeLine.setText("\u4E3B\u4EBA\u9875\u65F6\u95F4\u7EBF");
        homeTimeLine.setId(1001);
        homeTimeLine.setOnClickListener(this);
        tablerow.addView(homeTimeLine);
        userTimeLine = new Button(this);
        userTimeLine.setText("\u5BA2\u4EBA\u9875\u65F6\u95F4\u7EBF");
        userTimeLine.setId(1002);
        userTimeLine.setOnClickListener(this);
        tablerow.addView(userTimeLine);
        tablelayout.addView(tablerow);
        tablerow = new TableRow(this);
        addWeibo = new Button(this);
        addWeibo.setText("\u666E\u901A\u53D1\u8868\u63A5\u53E3");
        addWeibo.setId(1003);
        addWeibo.setOnClickListener(this);
        tablerow.addView(addWeibo);
        addPic = new Button(this);
        addPic.setText("\u53D1\u8868\u5E26\u56FE\u5FAE\u535A");
        addPic.setId(1004);
        addPic.setOnClickListener(this);
        tablerow.addView(addPic);
        tablelayout.addView(tablerow);
        tablerow = new TableRow(this);
        addPicUrl = new Button(this);
        addPicUrl.setText("\u53D1\u8868\u5E26\u7F51\u7EDC\u56FE\u7247\u5FAE\u535A");
        addPicUrl.setId(1005);
        addPicUrl.setOnClickListener(this);
        tablerow.addView(addPicUrl);
        htTimeLine = new Button(this);
        htTimeLine.setText("\u8BDD\u9898\u65F6\u95F4\u7EBF");
        htTimeLine.setId(1006);
        htTimeLine.setOnClickListener(this);
        tablerow.addView(htTimeLine);
        tablelayout.addView(tablerow);
        tablerow = new TableRow(this);
        userInfo = new Button(this);
        userInfo.setText("\u83B7\u53D6\u7528\u6237\u4FE1\u606F");
        userInfo.setId(1007);
        userInfo.setOnClickListener(this);
        tablerow.addView(userInfo);
        userOtherInfo = new Button(this);
        userOtherInfo.setText("\u83B7\u53D6\u4ED6\u4EBA\u4FE1\u606F");
        userOtherInfo.setId(1008);
        userOtherInfo.setOnClickListener(this);
        tablerow.addView(userOtherInfo);
        tablelayout.addView(tablerow);
        tablerow = new TableRow(this);
        userInfos = new Button(this);
        userInfos.setText("\u83B7\u53D6\u4E00\u6279\u4EBA\u4FE1\u606F");
        userInfos.setId(1009);
        userInfos.setOnClickListener(this);
        tablerow.addView(userInfos);
        friendAdd = new Button(this);
        friendAdd.setText("\u6536\u542C\u67D0\u4E2A\u7528\u6237");
        friendAdd.setId(1010);
        friendAdd.setOnClickListener(this);
        tablerow.addView(friendAdd);
        tablelayout.addView(tablerow);
        tablerow = new TableRow(this);
        friendIdolList = new Button(this);
        friendIdolList.setText("\u83B7\u53D6\u5076\u50CF\u5217\u8868");
        friendIdolList.setId(1011);
        friendIdolList.setOnClickListener(this);
        tablerow.addView(friendIdolList);
        friendFunsList = new Button(this);
        friendFunsList.setText("\u83B7\u53D6\u7C89\u4E1D\u5217\u8868");
        friendFunsList.setId(1012);
        friendFunsList.setOnClickListener(this);
        tablerow.addView(friendFunsList);
        tablelayout.addView(tablerow);
        tablerow = new TableRow(this);
        friendMutualList = new Button(this);
        friendMutualList.setText("\u83B7\u53D6\u4E92\u542C\u5217\u8868");
        friendMutualList.setId(1013);
        friendMutualList.setOnClickListener(this);
        tablerow.addView(friendMutualList);
        friendCheck = new Button(this);
        friendCheck.setText("\u9A8C\u8BC1\u597D\u53CB\u5173\u7CFB");
        friendCheck.setId(1014);
        friendCheck.setOnClickListener(this);
        tablerow.addView(friendCheck);
        tablelayout.addView(tablerow);
        tablerow = new TableRow(this);
        tReList = new Button(this);
        tReList.setText("\u8F6C\u64AD\u83B7\u53D6\u8F6C\u64AD\u5217\u8868");
        tReList.setId(1015);
        tReList.setOnClickListener(this);
        tablerow.addView(tReList);
        friendGetIntimateFriend = new Button(this);
        friendGetIntimateFriend.setText("\u83B7\u53D6\u6700\u8FD1\u8054\u7CFB\u4EBA");
        friendGetIntimateFriend.setId(1016);
        friendGetIntimateFriend.setOnClickListener(this);
        tablerow.addView(friendGetIntimateFriend);
        tablelayout.addView(tablerow);
        tablerow = new TableRow(this);
        lbsGetAroundPeople = new Button(this);
        lbsGetAroundPeople.setText("\u83B7\u53D6\u9644\u8FD1\u7684\u4EBA");
        lbsGetAroundPeople.setId(1017);
        lbsGetAroundPeople.setOnClickListener(this);
        tablerow.addView(lbsGetAroundPeople);
        lbsGetAroundNew = new Button(this);
        lbsGetAroundNew.setText("\u83B7\u53D6\u8EAB\u8FB9\u6700\u65B0\u7684\u5FAE\u535A");
        lbsGetAroundNew.setId(1018);
        lbsGetAroundNew.setOnClickListener(this);
        tablerow.addView(lbsGetAroundNew);
        tablelayout.addView(tablerow);
        tablerow = new TableRow(this);
        deviceStatus = new Button(this);
        deviceStatus.setText("\u7EC8\u7AEF\u72B6\u51B5");
        deviceStatus.setId(1019);
        tablerow.addView(deviceStatus);
        errorReport = new Button(this);
        errorReport.setText("\u9519\u8BEF\u53CD\u9988");
        errorReport.setId(1020);
        tablerow.addView(errorReport);
        tablelayout.addView(tablerow);
        scrollView.addView(tablelayout);
        setContentView(scrollView);
    }

    public void onClick(View view)
    {
        Looper.myQueue().addIdleHandler(new android.os.MessageQueue.IdleHandler() {

            final GeneralInterfaceActivity this$0;

            public boolean queueIdle()
            {
                loadingWindow.showAtLocation(scrollView, 17, 0, 80);
                return false;
            }

            
            {
                this$0 = GeneralInterfaceActivity.this;
                super();
            }
        });
        switch (view.getId())
        {
        case 1019: 
        case 1020: 
        default:
            return;

        case 1001: 
            timeLineAPI.getHomeTimeLine(context, 0, 0, 30, 0, 0, requestFormat, mCallBack, null, 4);
            return;

        case 1002: 
            timeLineAPI.getUserTimeLine(context, 0, 0, 30, 0, "api_weibo", null, 0, 0, requestFormat, mCallBack, null, 4);
            return;

        case 1003: 
            weiboAPI.addWeibo(context, "hello world !", requestFormat, longitude, latitude, 0, 0, mCallBack, null, 4);
            return;

        case 1004: 
            try
            {
                view = BitmapFactory.decodeStream(context.getAssets().open("logo"));
                weiboAPI.addPic(context, "call telephone OKK", requestFormat, longitude, latitude, view, 0, 0, mCallBack, null, 4);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                return;
            }

        case 1005: 
            weiboAPI.addPicUrl(context, "y phone ", requestFormat, longitude, latitude, "http://t2.qpic.cn/mblogpic/9c7e34358608bb61a696/2000", 0, 0, mCallBack, null, 4);
            return;

        case 1006: 
            timeLineAPI.getHTTimeLine(context, requestFormat, 30, "0", "0", 0, 0, "\u52A0\u6CB9", "0", 1, 128, mCallBack, null, 4);
            return;

        case 1007: 
            userAPI.getUserInfo(context, requestFormat, mCallBack, null, 4);
            return;

        case 1008: 
            userAPI.getUserOtherInfo(context, requestFormat, "api_weibo", null, mCallBack, null, 4);
            return;

        case 1009: 
            userAPI.getUserInfos(context, requestFormat, "api_weibo", null, mCallBack, null, 4);
            return;

        case 1010: 
            friendAPI.addFriend(context, requestFormat, "api_weibo", null, mCallBack, null, 4);
            return;

        case 1011: 
            friendAPI.friendIDolList(context, requestFormat, 30, 0, 1, 0, mCallBack, null, 4);
            return;

        case 1012: 
            friendAPI.friendFansList(context, requestFormat, 30, 0, 1, 0, 0, mCallBack, null, 4);
            return;

        case 1013: 
            friendAPI.getMutualList(context, requestFormat, "api_weibo", null, 0, 30, 0, mCallBack, null, 4);
            return;

        case 1014: 
            friendAPI.friendCheck(context, requestFormat, "api_weibo", null, 2, mCallBack, null, 4);
            return;

        case 1015: 
            weiboAPI.reList(context, requestFormat, 2, "112714089895346", 0, "0", 30, "0", mCallBack, null, 4);
            return;

        case 1016: 
            friendAPI.getIntimateFriends(context, requestFormat, 30, mCallBack, null, 4);
            return;

        case 1017: 
            lbsAPI.getAroundPeople(context, requestFormat, longitude, latitude, "", 20, 0, mCallBack, null, 4);
            return;

        case 1018: 
            lbsAPI.getAroundNew(context, requestFormat, longitude, latitude, "", 20, mCallBack, null, 4);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        accessToken = Util.getSharePersistent(getApplicationContext(), "ACCESS_TOKEN");
        if (accessToken == null || "".equals(accessToken))
        {
            Toast.makeText(this, "\u8BF7\u5148\u6388\u6743", 0).show();
            finish();
            return;
        }
        bundle = new AccountModel(accessToken);
        friendAPI = new FriendAPI(bundle);
        timeLineAPI = new TimeLineAPI(bundle);
        weiboAPI = new WeiboAPI(bundle);
        userAPI = new UserAPI(bundle);
        lbsAPI = new LbsAPI(bundle);
        mCallBack = new HttpCallback() {

            final GeneralInterfaceActivity this$0;

            public void onResult(Object obj)
            {
                obj = (ModelResult)obj;
                if (loadingWindow != null && loadingWindow.isShowing())
                {
                    loadingWindow.dismiss();
                }
                if (obj != null)
                {
                    Toast.makeText(GeneralInterfaceActivity.this, "\u6210\u529F", 0).show();
                    Intent intent = new Intent(GeneralInterfaceActivity.this, com/tencent/weibo/sdk/android/component/GeneralDataShowActivity);
                    intent.putExtra("data", ((ModelResult) (obj)).getObj().toString());
                    startActivity(intent);
                    return;
                } else
                {
                    Toast.makeText(GeneralInterfaceActivity.this, "\u53D1\u751F\u5F02\u5E38", 0).show();
                    return;
                }
            }

            
            {
                this$0 = GeneralInterfaceActivity.this;
                super();
            }
        };
        progressBar = new ProgressBar(this);
        loadingWindow = new PopupWindow(progressBar, 100, 100);
        context = getApplicationContext();
        mLocation = Util.getLocation(context);
        if (mLocation != null)
        {
            longitude = mLocation.getLongitude();
            latitude = mLocation.getLatitude();
        }
        initInterface();
    }


}
