// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import com.tencent.connect.common.b;
import com.tencent.mta.TencentStat;
import com.tencent.sdkutil.HttpUtils;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.QQToken;
import java.io.IOException;
import java.io.InputStream;

public class TaskGuide extends b
{

    private static int BACKGROUND_HEIGHT = 0;
    private static int BACKGROUND_WIDTH = 0;
    private static int BUTTON_HEIGHT = 0;
    private static final int BUTTON_ID = 2;
    private static int BUTTON_MARGIN_RIGHT = 0;
    private static int BUTTON_MARGIN_TOP = 0;
    private static int BUTTON_WIDTH = 0;
    private static final String CGI_APP_GRADE_URI = "http://appact.qzone.qq.com/appstore_activity_task_pcpush_sdk";
    private static int REWARD_MARGIN_TOP = 0;
    private static int REWARD_TEXT_SIZE = 0;
    private static int REWARD_TEXT_WIDTH = 0;
    private static final int REWARD_TX_ID = 3;
    private static int SUBTEXT_MARGIN_TOP = 0;
    private static final int SUB_TIP_TX_ID = 4;
    private static int TIPTEXT_MARGIN_LEFT = 0;
    private static int TIPTEXT_TEXT_SIZE = 0;
    private static int TIPTEXT_WIDTH = 0;
    private static final int TIP_TX_ID = 1;
    private static int sAutoCollapseInteval = 3000;
    private static Drawable sBackground;
    private static Drawable sButtonGreen;
    private static Drawable sButtonRed;
    static long sDuration = 5000L;
    private Runnable clRunnalbe;
    private Runnable cllDelayRunnable;
    private boolean mAddedWindow;
    private int mAnimationLength;
    private boolean mCollapseAnimationRunning;
    private ViewGroup mContentView;
    private boolean mExpandAnimationRunning;
    private Handler mHandler;
    private Interpolator mInterpolator;
    boolean mIsCollapse;
    IUiListener mListener;
    private long mStartTime;
    private int mStartY;
    private TaskState mState1;
    private TaskState mState2;
    private TaskInfo mTaskInfo;
    private android.view.WindowManager.LayoutParams mWinParams;
    private float sDensity;
    private int sScreenHeight;
    private int sScreenWidth;
    private WindowManager wm;

    public TaskGuide(Context context, QQToken qqtoken)
    {
        super(context, qqtoken);
        mWinParams = null;
        mContentView = null;
        mHandler = new Handler(Looper.getMainLooper());
        mState1 = TaskState.INIT;
        mState2 = TaskState.INIT;
        sScreenWidth = 0;
        sScreenHeight = 0;
        sDensity = 0.0F;
        mInterpolator = new AccelerateInterpolator();
        mAddedWindow = false;
        mIsCollapse = false;
        mExpandAnimationRunning = false;
        mCollapseAnimationRunning = false;
        clRunnalbe = null;
        cllDelayRunnable = null;
        wm = (WindowManager)context.getSystemService("window");
        initDisplay();
    }

    private void autoCollapseWindow(int i)
    {
        cancelAutoAnimation();
        cllDelayRunnable = new CollapseDelayRunnable(null);
        mHandler.postDelayed(cllDelayRunnable, i);
    }

    private void cancelAutoAnimation()
    {
        mHandler.removeCallbacks(cllDelayRunnable);
        if (!isAnimation())
        {
            mHandler.removeCallbacks(clRunnalbe);
        }
    }

    private void collapseWindow()
    {
        if (!isAnimation())
        {
            mHandler.removeCallbacks(cllDelayRunnable);
            mHandler.removeCallbacks(clRunnalbe);
            clRunnalbe = new CollapseExpandRunnable(false);
            setAnimationParam(false);
            mHandler.post(clRunnalbe);
        }
    }

    private ViewGroup createNewContentView(Context context)
    {
        QQRelativeLayout qqrelativelayout = new QQRelativeLayout(context);
        StepInfo astepinfo[] = mTaskInfo.stepInfoArray;
        if (astepinfo.length == 1)
        {
            context = new TaskLinearLayout(context, astepinfo[0]);
            context.setId(1);
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
            layoutparams.addRule(15);
            qqrelativelayout.addView(context, layoutparams);
        } else
        {
            TaskLinearLayout tasklinearlayout = new TaskLinearLayout(context, astepinfo[0]);
            tasklinearlayout.setId(1);
            context = new TaskLinearLayout(context, astepinfo[1]);
            context.setId(2);
            android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -2);
            layoutparams1.addRule(14);
            layoutparams1.setMargins(0, getDimenDp2Px(6), 0, 0);
            android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-1, -2);
            layoutparams2.addRule(14);
            layoutparams2.setMargins(0, getDimenDp2Px(4), 0, 0);
            layoutparams2.addRule(3, 1);
            layoutparams2.addRule(5, 1);
            qqrelativelayout.addView(tasklinearlayout, layoutparams1);
            qqrelativelayout.addView(context, layoutparams2);
        }
        qqrelativelayout.setBackgroundDrawable(getBackgroundDrawable());
        return qqrelativelayout;
    }

    private void endAnimation()
    {
        if (mExpandAnimationRunning)
        {
            autoCollapseWindow(3000);
        } else
        {
            removeWindow();
        }
        if (mExpandAnimationRunning)
        {
            android.view.WindowManager.LayoutParams layoutparams = mWinParams;
            layoutparams.flags = layoutparams.flags & 0xffffffef;
            wm.updateViewLayout(mContentView, mWinParams);
        }
        mExpandAnimationRunning = false;
        mCollapseAnimationRunning = false;
    }

    private void expandWindow()
    {
        if (!isAnimation())
        {
            mHandler.removeCallbacks(cllDelayRunnable);
            mHandler.removeCallbacks(clRunnalbe);
            clRunnalbe = new CollapseExpandRunnable(true);
            setAnimationParam(true);
            mHandler.post(clRunnalbe);
        }
    }

    private android.view.WindowManager.LayoutParams genearteWinParams(Context context)
    {
        context = new android.view.WindowManager.LayoutParams();
        context.gravity = 49;
        wm.getDefaultDisplay().getWidth();
        wm.getDefaultDisplay().getHeight();
        context.width = getDimenDp2Px(BACKGROUND_WIDTH);
        context.height = getDimenDp2Px(BACKGROUND_HEIGHT);
        context.windowAnimations = 0x1030002;
        context.format = 1;
        context.flags = ((android.view.WindowManager.LayoutParams) (context)).flags | 0x208;
        context.type = 2;
        mWinParams = context;
        return context;
    }

    private Drawable getBackgroundDrawable()
    {
        if (sBackground == null)
        {
            sBackground = getDrawable("background.9.png", mContext);
        }
        return sBackground;
    }

    private Drawable getButtonGreen()
    {
        if (sButtonGreen == null)
        {
            sButtonGreen = getDrawable("button_green.9.png", mContext);
        }
        return sButtonGreen;
    }

    private Drawable getButtonRed()
    {
        if (sButtonRed == null)
        {
            sButtonRed = getDrawable("button_red.9.png", mContext);
        }
        return sButtonRed;
    }

    private int getDimenDp2Px(int i)
    {
        return (int)((float)i * sDensity);
    }

    private Drawable getDrawable(String s, Context context)
    {
        context = context.getApplicationContext().getAssets();
        context = context.open(s);
        if (context == null)
        {
            return null;
        }
        if (!s.endsWith(".9.png")) goto _L2; else goto _L1
_L1:
        s = BitmapFactory.decodeStream(context);
        if (s == null) goto _L4; else goto _L3
_L3:
        context = s.getNinePatchChunk();
        NinePatch.isNinePatchChunk(context);
        s = new NinePatchDrawable(s, context, new Rect(), null);
        return s;
        context;
        s = null;
_L6:
        context.printStackTrace();
        return s;
_L4:
        return null;
_L2:
        s = Drawable.createFromStream(context, s);
        context.close();
        return s;
        context;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void getGift(int i)
    {
        Bundle bundle = composeCGIParams();
        bundle.putString("action", "get_gift");
        bundle.putString("task_id", mTaskInfo.taskId);
        bundle.putString("step_no", (new Integer(i)).toString());
        bundle.putString("appid", mToken.getAppId());
        GiftResultListener giftresultlistener = new GiftResultListener(i);
        HttpUtils.requestAsync(mToken, mContext, "http://appact.qzone.qq.com/appstore_activity_task_pcpush_sdk", bundle, "GET", giftresultlistener);
        moveToState(i, TaskState.WAITTING_BACK_REWARD);
        TencentStat.a(mContext, mToken, "TaskApi", new String[] {
            "getGift"
        });
    }

    private TaskState getState(int i)
    {
        if (i == 0)
        {
            return mState1;
        }
        if (i == 1)
        {
            return mState2;
        } else
        {
            return TaskState.INIT;
        }
    }

    private void initDisplay()
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        wm.getDefaultDisplay().getMetrics(displaymetrics);
        sScreenWidth = displaymetrics.widthPixels;
        sScreenHeight = displaymetrics.heightPixels;
        sDensity = displaymetrics.density;
    }

    private boolean isAnimation()
    {
        return mExpandAnimationRunning || mCollapseAnimationRunning;
    }

    private void moveToState(int i, TaskState taskstate)
    {
        if (i == 0)
        {
            mState1 = taskstate;
            return;
        }
        if (i == 1)
        {
            mState2 = taskstate;
            return;
        } else
        {
            mState1 = taskstate;
            mState2 = taskstate;
            return;
        }
    }

    private void retWinParams()
    {
        if (mWinParams != null)
        {
            mWinParams.y = -mWinParams.height;
        }
    }

    private void setAnimationParam(boolean flag)
    {
        mStartTime = SystemClock.currentThreadTimeMillis();
        android.view.WindowManager.LayoutParams layoutparams;
        if (flag)
        {
            mExpandAnimationRunning = true;
        } else
        {
            mCollapseAnimationRunning = true;
        }
        mAnimationLength = mWinParams.height;
        mStartY = mWinParams.y;
        layoutparams = mWinParams;
        layoutparams.flags = layoutparams.flags | 0x10;
        wm.updateViewLayout(mContentView, mWinParams);
    }

    private void showToast(final String message)
    {
        mHandler.post(new _cls3());
    }

    private void updateContentView(final int index)
    {
        if (mHandler != null)
        {
            mHandler.post(new _cls1());
        }
    }

    public void removeWindow()
    {
        if (mAddedWindow)
        {
            wm.removeView(mContentView);
            mAddedWindow = false;
        }
    }

    public void showTaskGuideWindow(Activity activity, Bundle bundle, IUiListener iuilistener)
    {
        mContext = activity;
        mListener = iuilistener;
        if (mState1 == TaskState.WAITTING_BACK_TASKINFO || mState2 == TaskState.WAITTING_BACK_TASKINFO || mAddedWindow)
        {
            return;
        }
        mTaskInfo = null;
        if (bundle != null)
        {
            activity = new Bundle(bundle);
            activity.putAll(composeCGIParams());
        } else
        {
            activity = composeCGIParams();
        }
        bundle = new TaskRequestListener(null);
        activity.putString("action", "task_list");
        activity.putString("auth", "mobile");
        activity.putString("appid", mToken.getAppId());
        HttpUtils.requestAsync(mToken, mContext, "http://appact.qzone.qq.com/appstore_activity_task_pcpush_sdk", activity, "GET", bundle);
        moveToState(2, TaskState.WAITTING_BACK_TASKINFO);
    }

    public void showWindow()
    {
        (new Handler(Looper.getMainLooper())).post(new _cls2());
        TencentStat.a(mContext, mToken, "TaskApi", new String[] {
            "showTaskWindow"
        });
    }

    static 
    {
        BACKGROUND_HEIGHT = 75;
        BACKGROUND_WIDTH = 284;
        BUTTON_WIDTH = 75;
        BUTTON_HEIGHT = 30;
        BUTTON_MARGIN_RIGHT = 29;
        BUTTON_MARGIN_TOP = 5;
        REWARD_TEXT_WIDTH = 74;
        REWARD_MARGIN_TOP = 0;
        REWARD_TEXT_SIZE = 6;
        TIPTEXT_WIDTH = 153;
        TIPTEXT_MARGIN_LEFT = 30;
        TIPTEXT_TEXT_SIZE = 6;
        SUBTEXT_MARGIN_TOP = 3;
    }



/*
    static boolean access$002(TaskGuide taskguide, boolean flag)
    {
        taskguide.mAddedWindow = flag;
        return flag;
    }

*/




/*
    static android.view.WindowManager.LayoutParams access$1002(TaskGuide taskguide, android.view.WindowManager.LayoutParams layoutparams)
    {
        taskguide.mWinParams = layoutparams;
        return layoutparams;
    }

*/


/*
    static ViewGroup access$102(TaskGuide taskguide, ViewGroup viewgroup)
    {
        taskguide.mContentView = viewgroup;
        return viewgroup;
    }

*/



























/*
    static TaskInfo access$3502(TaskGuide taskguide, TaskInfo taskinfo)
    {
        taskguide.mTaskInfo = taskinfo;
        return taskinfo;
    }

*/










    private class TaskState extends Enum
    {

        private static final TaskState $VALUES[];
        public static final TaskState INIT;
        public static final TaskState NORAML;
        public static final TaskState REWARD_FAIL;
        public static final TaskState REWARD_SUCCESS;
        public static final TaskState WAITTING_BACK_REWARD;
        public static final TaskState WAITTING_BACK_TASKINFO;

        public static TaskState valueOf(String s)
        {
            return (TaskState)Enum.valueOf(com/tencent/open/TaskGuide$TaskState, s);
        }

        public static TaskState[] values()
        {
            return (TaskState[])$VALUES.clone();
        }

        static 
        {
            INIT = new TaskState("INIT", 0);
            WAITTING_BACK_TASKINFO = new TaskState("WAITTING_BACK_TASKINFO", 1);
            WAITTING_BACK_REWARD = new TaskState("WAITTING_BACK_REWARD", 2);
            NORAML = new TaskState("NORAML", 3);
            REWARD_SUCCESS = new TaskState("REWARD_SUCCESS", 4);
            REWARD_FAIL = new TaskState("REWARD_FAIL", 5);
            $VALUES = (new TaskState[] {
                INIT, WAITTING_BACK_TASKINFO, WAITTING_BACK_REWARD, NORAML, REWARD_SUCCESS, REWARD_FAIL
            });
        }

        private TaskState(String s, int i)
        {
            super(s, i);
        }
    }


    private class CollapseDelayRunnable
        implements Runnable
    {

        final TaskGuide this$0;

        public void run()
        {
            collapseWindow();
        }

        private CollapseDelayRunnable()
        {
            this$0 = TaskGuide.this;
            super();
        }

        CollapseDelayRunnable(_cls1 _pcls1)
        {
            this();
        }
    }


    private class CollapseExpandRunnable
        implements Runnable
    {

        boolean expand;
        float index;
        final TaskGuide this$0;

        public void run()
        {
            boolean flag1 = true;
            SystemClock.currentThreadTimeMillis();
            index = (float)((double)index + 0.10000000000000001D);
            float f1 = index;
            float f = f1;
            if (f1 > 1.0F)
            {
                f = 1.0F;
            }
            boolean flag;
            int i;
            if (f >= 1.0F)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            i = (int)(mInterpolator.getInterpolation(f) * (float)mAnimationLength);
            if (expand)
            {
                mWinParams.y = mStartY + i;
            } else
            {
                mWinParams.y = mStartY - i;
            }
            Log.d("TAG", (new StringBuilder()).append("mWinParams.y = ").append(mWinParams.y).append("deltaDistence = ").append(i).toString());
            if (!mAddedWindow)
            {
                flag = flag1;
            } else
            {
                wm.updateViewLayout(mContentView, mWinParams);
            }
            if (flag)
            {
                endAnimation();
                return;
            } else
            {
                mHandler.postDelayed(clRunnalbe, 5L);
                return;
            }
        }

        public CollapseExpandRunnable(boolean flag)
        {
            this$0 = TaskGuide.this;
            super();
            expand = false;
            index = 0.0F;
            expand = flag;
        }
    }


    private class QQRelativeLayout extends RelativeLayout
    {

        int startY;
        final TaskGuide this$0;

        public boolean onInterceptTouchEvent(MotionEvent motionevent)
        {
            int i;
            i = (int)motionevent.getY();
            Log.d("XXXX", (new StringBuilder()).append("onInterceptTouchEvent-- action = ").append(motionevent.getAction()).append("currentY = ").append(i).toString());
            autoCollapseWindow(3000);
            motionevent.getAction();
            JVM INSTR tableswitch 0 1: default 80
        //                       0 86
        //                       1 93;
               goto _L1 _L2 _L3
_L1:
            return super.onInterceptTouchEvent(motionevent);
_L2:
            startY = i;
            return false;
_L3:
            if (startY - i > ViewConfiguration.getTouchSlop() * 2)
            {
                collapseWindow();
                return true;
            }
            if (true) goto _L1; else goto _L4
_L4:
        }

        public boolean onTouchEvent(MotionEvent motionevent)
        {
            int i;
            super.onTouchEvent(motionevent);
            i = (int)motionevent.getY();
            Log.d("XXXX", (new StringBuilder()).append(" onTouchEvent-----startY = ").append(startY).append("currentY = ").append(i).toString());
            motionevent.getAction();
            JVM INSTR tableswitch 0 2: default 80
        //                       0 82
        //                       1 90
        //                       2 80;
               goto _L1 _L2 _L3 _L1
_L1:
            return false;
_L2:
            startY = i;
            continue; /* Loop/switch isn't completed */
_L3:
            if (startY - i > ViewConfiguration.getTouchSlop() * 2)
            {
                collapseWindow();
            }
            if (true) goto _L1; else goto _L4
_L4:
        }

        public QQRelativeLayout(Context context)
        {
            this$0 = TaskGuide.this;
            super(context);
            startY = 0;
        }
    }


    private class TaskInfo
    {

        private static final String STEP_INFO_KEY = "step_info";
        private static final String TASK_DESC_KEY = "task_desc";
        private static final String TASK_ID_KEY = "task_id";
        StepInfo stepInfoArray[];
        String taskDesc;
        String taskId;

        static TaskInfo generateFromJSONObject(JSONObject jsonobject)
        {
            if (jsonobject == null)
            {
                return null;
            }
            TaskInfo taskinfo = new TaskInfo();
            jsonobject = jsonobject.getJSONObject("task_info");
            taskinfo.taskId = jsonobject.getString("task_id");
            taskinfo.taskDesc = jsonobject.getString("task_desc");
            jsonobject = jsonobject.getJSONArray("step_info");
            int j = jsonobject.length();
            if (j > 0)
            {
                taskinfo.stepInfoArray = new StepInfo[j];
            }
            for (int i = 0; i < j; i++)
            {
                Object obj = jsonobject.getJSONObject(i);
                int k = ((JSONObject) (obj)).getInt("step_no");
                int l = ((JSONObject) (obj)).getInt("status");
                obj = new StepInfo(k, ((JSONObject) (obj)).getString("step_desc"), ((JSONObject) (obj)).getString("step_gift"), ((JSONObject) (obj)).getLong("end_time"), l);
                taskinfo.stepInfoArray[i] = ((StepInfo) (obj));
            }

            return taskinfo;
        }

        static TaskInfo manualGenerateTaskInfo()
        {
            TaskInfo taskinfo = new TaskInfo();
            taskinfo.taskId = "1111133333";
            taskinfo.taskDesc = "xxxxx";
            taskinfo.stepInfoArray = new StepInfo[2];
            StepInfo stepinfo = new StepInfo(0, "\u4E00\u8D70\u4E86\u4E4B\u4F60\u597D", "4\u91D1\u52B5", 0L, 2);
            taskinfo.stepInfoArray[0] = stepinfo;
            stepinfo = new StepInfo(0, "\u7535\u8111\u63A8\u9001QQ\u6CE1\u6CE1\u6BDB\u4F60\u597D", "500\u91D1\u52B5", 0L, 1);
            taskinfo.stepInfoArray[1] = stepinfo;
            return taskinfo;
        }

        public boolean isValidTask()
        {
            return !TextUtils.isEmpty(taskId) && stepInfoArray != null && stepInfoArray.length > 0;
        }

        private TaskInfo()
        {
        }

        private class StepInfo
        {

            long endTime;
            int status;
            String stepDesc;
            String stepGift;
            int stepNumber;

            public StepInfo(int i, String s, String s1, long l, int j)
            {
                stepNumber = i;
                stepDesc = s;
                stepGift = s1;
                endTime = l;
                status = j;
            }
        }

    }


    private class TaskLinearLayout extends LinearLayout
    {

        private Button rewardButton;
        private StepInfo stepInfo;
        private TextView taskTextView;
        final TaskGuide this$0;

        private void createChildView()
        {
            taskTextView = new TextView(_22_);
            taskTextView.setTextColor(Color.rgb(255, 255, 255));
            taskTextView.setTextSize(15F);
            taskTextView.setShadowLayer(1.0F, 1.0F, 1.0F, Color.rgb(242, 211, 199));
            taskTextView.setGravity(3);
            taskTextView.setEllipsize(android.text.TextUtils.TruncateAt.END);
            taskTextView.setIncludeFontPadding(false);
            taskTextView.setSingleLine(true);
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(0, -2);
            layoutparams.weight = 1.0F;
            layoutparams.leftMargin = getDimenDp2Px(4);
            addView(taskTextView, layoutparams);
            rewardButton = new Button(_22_);
            rewardButton.setPadding(0, 0, 0, 0);
            rewardButton.setTextSize(16F);
            rewardButton.setTextColor(Color.rgb(255, 255, 255));
            rewardButton.setShadowLayer(1.0F, 1.0F, 1.0F, Color.rgb(242, 211, 199));
            rewardButton.setIncludeFontPadding(false);
            rewardButton.setOnClickListener(new RewardOnClickListener(stepInfo.stepNumber));
            layoutparams = new android.widget.LinearLayout.LayoutParams(getDimenDp2Px(TaskGuide.BUTTON_WIDTH), getDimenDp2Px(TaskGuide.BUTTON_HEIGHT));
            layoutparams.leftMargin = getDimenDp2Px(2);
            layoutparams.rightMargin = getDimenDp2Px(8);
            addView(rewardButton, layoutparams);
        }

        public void setStepInfo(StepInfo stepinfo)
        {
            stepInfo = stepinfo;
        }

        public void updateView(TaskState taskstate)
        {
            if (!TextUtils.isEmpty(stepInfo.stepDesc))
            {
                taskTextView.setText(stepInfo.stepDesc);
            }
            _cls4..SwitchMap.com.tencent.open.TaskGuide.TaskState[taskstate.ordinal()];
            JVM INSTR tableswitch 1 4: default 64
        //                       1 65
        //                       2 74
        //                       3 195
        //                       4 213;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            return;
_L2:
            rewardButton.setEnabled(false);
            return;
_L3:
            if (stepInfo.status == 1)
            {
                rewardButton.setText(stepInfo.stepGift);
                rewardButton.setBackgroundDrawable(null);
                rewardButton.setTextColor(Color.rgb(255, 246, 0));
                rewardButton.setEnabled(false);
                return;
            }
            if (stepInfo.status == 2)
            {
                rewardButton.setText("\u9886\u53D6\u5956\u52B1");
                rewardButton.setTextColor(Color.rgb(255, 255, 255));
                rewardButton.setBackgroundDrawable(getButtonGreen());
                rewardButton.setEnabled(true);
                return;
            }
              goto _L1
_L4:
            rewardButton.setText("\u9886\u53D6\u4E2D...");
            rewardButton.setEnabled(false);
            return;
_L5:
            rewardButton.setText("\u5DF2\u9886\u53D6");
            rewardButton.setBackgroundDrawable(getButtonRed());
            rewardButton.setEnabled(false);
            return;
        }

        public TaskLinearLayout(Context context, StepInfo stepinfo)
        {
            this$0 = TaskGuide.this;
            super(context);
            stepInfo = stepinfo;
            setOrientation(0);
            createChildView();
        }

        private class RewardOnClickListener
            implements android.view.View.OnClickListener
        {

            int index;
            final TaskGuide this$0;

            public void onClick(View view)
            {
                view = (Button)view;
                if (getState(index) == TaskState.NORAML)
                {
                    getGift(index);
                    updateContentView(index);
                }
                cancelAutoAnimation();
            }

            public RewardOnClickListener(int i)
            {
                this$0 = TaskGuide.this;
                super();
                index = i;
            }
        }


        private class _cls4
        {

            static final int $SwitchMap$com$tencent$open$TaskGuide$TaskState[];

            static 
            {
                $SwitchMap$com$tencent$open$TaskGuide$TaskState = new int[TaskState.values().length];
                try
                {
                    $SwitchMap$com$tencent$open$TaskGuide$TaskState[TaskState.INIT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$tencent$open$TaskGuide$TaskState[TaskState.NORAML.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$tencent$open$TaskGuide$TaskState[TaskState.WAITTING_BACK_REWARD.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$tencent$open$TaskGuide$TaskState[TaskState.REWARD_SUCCESS.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

    }


    private class GiftResultListener extends BaseRequestListener
    {
        private class BaseRequestListener
            implements IRequestListener
        {

            final TaskGuide this$0;

            protected abstract void handleException(Exception exception);

            public void onConnectTimeoutException(ConnectTimeoutException connecttimeoutexception, Object obj)
            {
                handleException(connecttimeoutexception);
            }

            public void onHttpStatusException(HttpStatusException httpstatusexception, Object obj)
            {
                handleException(httpstatusexception);
            }

            public void onIOException(IOException ioexception, Object obj)
            {
                handleException(ioexception);
            }

            public void onJSONException(JSONException jsonexception, Object obj)
            {
                handleException(jsonexception);
            }

            public void onMalformedURLException(MalformedURLException malformedurlexception, Object obj)
            {
                handleException(malformedurlexception);
            }

            public void onNetworkUnavailableException(NetworkUnavailableException networkunavailableexception, Object obj)
            {
                handleException(networkunavailableexception);
            }

            public void onSocketTimeoutException(SocketTimeoutException sockettimeoutexception, Object obj)
            {
                handleException(sockettimeoutexception);
            }

            public void onUnknowException(Exception exception, Object obj)
            {
                handleException(exception);
            }

            private BaseRequestListener()
            {
                this$0 = TaskGuide.this;
                super();
            }

            BaseRequestListener(_cls1 _pcls1)
            {
                this();
            }
        }


        int index;
        final TaskGuide this$0;

        protected void handleException(final Exception e)
        {
            if (e != null)
            {
                e.printStackTrace();
            }
            mListener.onError(new UiError(101, "error ", "\u91D1\u5238\u9886\u53D6\u65F6\u51FA\u73B0\u5F02\u5E38"));
            class _cls1
                implements Runnable
            {

                final GiftResultListener this$1;
                final Exception val$e;

                public void run()
                {
                    TaskState taskstate = TaskState.INIT;
                    if (index == 0)
                    {
                        taskstate = mState1;
                    } else
                    {
                        taskstate = mState2;
                    }
                    if (taskstate == TaskState.WAITTING_BACK_REWARD)
                    {
                        moveToState(index, TaskState.NORAML);
                        showToast((new StringBuilder()).append("\u9886\u53D6\u5931\u8D25 :").append(e.getClass().getName()).toString());
                    }
                    updateContentView(index);
                    autoCollapseWindow(2000);
                }

                _cls1()
                {
                    this$1 = GiftResultListener.this;
                    e = exception;
                    super();
                }
            }

            if (mHandler != null)
            {
                mHandler.post(new _cls1());
            }
        }

        public void onComplete(JSONObject jsonobject, Object obj)
        {
            JSONObject jsonobject1;
            jsonobject1 = null;
            obj = jsonobject1;
            int i = jsonobject.getInt("code");
            obj = jsonobject1;
            jsonobject = jsonobject.getString("message");
            if (i != 0) goto _L2; else goto _L1
_L1:
            obj = jsonobject;
            moveToState(index, TaskState.REWARD_SUCCESS);
            obj = jsonobject;
            jsonobject1 = new JSONObject();
            jsonobject1.put("result", "\u91D1\u5238\u9886\u53D6\u6210\u529F");
_L3:
            obj = jsonobject;
            JSONException jsonexception;
            try
            {
                mListener.onComplete(jsonobject1);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                moveToState(index, TaskState.NORAML);
                showToast(((String) (obj)));
                jsonobject.printStackTrace();
            }
_L4:
            updateContentView(index);
            autoCollapseWindow(2000);
            return;
            jsonexception;
            obj = jsonobject;
            jsonexception.printStackTrace();
              goto _L3
_L2:
            obj = jsonobject;
            moveToState(index, TaskState.NORAML);
            obj = jsonobject;
            showToast(jsonobject);
            obj = jsonobject;
            jsonobject1 = new JSONObject();
            jsonobject1.put("result", "\u91D1\u5238\u9886\u53D6\u5931\u8D25");
_L5:
            obj = jsonobject;
            mListener.onComplete(jsonobject1);
              goto _L4
            JSONException jsonexception1;
            jsonexception1;
            obj = jsonobject;
            jsonexception1.printStackTrace();
              goto _L5
        }

        public GiftResultListener(int i)
        {
            this$0 = TaskGuide.this;
            super(null);
            index = -1;
            index = i;
        }
    }



    private class _cls1
        implements Runnable
    {

        final TaskGuide this$0;
        final int val$index;

        public void run()
        {
            if (mAddedWindow)
            {
                if (index == 0)
                {
                    ((TaskLinearLayout)mContentView.findViewById(1)).updateView(mState1);
                } else
                {
                    if (index == 1)
                    {
                        ((TaskLinearLayout)mContentView.findViewById(2)).updateView(mState2);
                        return;
                    }
                    if (index == 2)
                    {
                        ((TaskLinearLayout)mContentView.findViewById(1)).updateView(mState1);
                        if (mContentView.getChildCount() > 1)
                        {
                            ((TaskLinearLayout)mContentView.findViewById(2)).updateView(mState2);
                            return;
                        }
                    }
                }
            }
        }

        _cls1()
        {
            this$0 = TaskGuide.this;
            index = i;
            super();
        }
    }


    private class TaskRequestListener extends BaseRequestListener
    {

        final TaskGuide this$0;

        protected void handleException(Exception exception)
        {
            if (exception != null)
            {
                exception.printStackTrace();
            }
            if (exception == null)
            {
                exception = new JSONObject();
                class _cls1
                    implements Runnable
                {

                    final TaskRequestListener this$1;

                    public void run()
                    {
                        moveToState(2, TaskState.INIT);
                    }

                _cls1()
                {
                    this$1 = TaskRequestListener.this;
                    Object();
                }
                }

                try
                {
                    exception.put("result", "\u6682\u65E0\u4EFB\u52A1");
                }
                catch (JSONException jsonexception)
                {
                    jsonexception.printStackTrace();
                }
                mListener.onComplete(exception);
            } else
            {
                mListener.onError(new UiError(100, "error ", "\u83B7\u53D6\u4EFB\u52A1\u5931\u8D25"));
            }
            mHandler.post(new _cls1());
        }

        public void onComplete(JSONObject jsonobject, Object obj)
        {
            try
            {
                mTaskInfo = TaskInfo.generateFromJSONObject(jsonobject);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                mListener.onError(new UiError(100, "error ", "\u83B7\u53D6\u4EFB\u52A1\u5931\u8D25"));
                jsonobject.printStackTrace();
            }
            if (mTaskInfo != null && mTaskInfo.isValidTask())
            {
                showWindow();
                moveToState(2, TaskState.NORAML);
                jsonobject = new JSONObject();
                try
                {
                    jsonobject.put("result", "\u83B7\u53D6\u6210\u529F");
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    ((JSONException) (obj)).printStackTrace();
                }
                mListener.onComplete(jsonobject);
                return;
            } else
            {
                handleException(null);
                return;
            }
        }

        private TaskRequestListener()
        {
            this$0 = TaskGuide.this;
            super(null);
        }

        TaskRequestListener(_cls1 _pcls1)
        {
            this();
        }
    }


}
