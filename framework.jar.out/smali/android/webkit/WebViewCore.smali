.class public final Landroid/webkit/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewCore$ShowRectData;,
        Landroid/webkit/WebViewCore$DrawData;,
        Landroid/webkit/WebViewCore$ViewState;,
        Landroid/webkit/WebViewCore$EventHub;,
        Landroid/webkit/WebViewCore$GeolocationPermissionsData;,
        Landroid/webkit/WebViewCore$TouchEventData;,
        Landroid/webkit/WebViewCore$AutoFillData;,
        Landroid/webkit/WebViewCore$TouchHighlightData;,
        Landroid/webkit/WebViewCore$TouchUpData;,
        Landroid/webkit/WebViewCore$TextSelectionData;,
        Landroid/webkit/WebViewCore$ReplaceTextData;,
        Landroid/webkit/WebViewCore$PostUrlData;,
        Landroid/webkit/WebViewCore$GetUrlData;,
        Landroid/webkit/WebViewCore$MotionUpData;,
        Landroid/webkit/WebViewCore$JSKeyData;,
        Landroid/webkit/WebViewCore$JSInterfaceData;,
        Landroid/webkit/WebViewCore$CursorData;,
        Landroid/webkit/WebViewCore$BaseUrlData;,
        Landroid/webkit/WebViewCore$WebCoreThread;
    }
.end annotation


# static fields
.field static final ACTION_DOUBLETAP:I = 0x200

.field static final ACTION_LONGPRESS:I = 0x100

.field private static final ENABLE_DEBUG_FLAG:Z = false

.field private static final ENABLE_INTERRUPT_DRAW:Ljava/lang/String; = "webcore.enableinterruptdraw"

.field static final HandlerDebugString:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field private static final SHOW_INTERRUPT_INFO:Ljava/lang/String; = "webcore.showinterruptinfo"

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field private static final WEBVIEWCORE_CLS:I = 0x1

.field static final WebSite_Heavy_Flash_Content:[Ljava/lang/String;

.field private static mRepaintScheduled:Z

.field private static m_bIsPauseTimes:Z

.field private static sCurrentWebViewCoreHashCode:I

.field private static sHandleClass:I

.field private static sHandleMsgId:I

.field private static sHandleStartTime:D

.field private static sWebCoreHandler:Landroid/os/Handler;


# instance fields
.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private final mContext:Landroid/content/Context;

.field private mCurrentViewHeight:I

.field private mCurrentViewScale:F

.field private mCurrentViewWidth:I

.field private mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

.field private mDeviceMotionService:Landroid/webkit/DeviceMotionService;

.field private mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

.field private mDrawIsPaused:Z

.field private mDrawIsScheduled:Z

.field private mDrawLayersIsScheduled:Z

.field private mEnableInterruptDraw:Z

.field private final mEventHub:Landroid/webkit/WebViewCore$EventHub;

.field private mFirstLayoutForNonStandardLoad:Z

.field mHTCWebCore:Landroid/webkit/HTCWebCore;

.field private mHighMemoryUsageThresholdMb:I

.field private mHighUsageDeltaMb:I

.field private mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

.field mInterruptDraw:Z

.field private mIsRestored:Z

.field private mJavascriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

.field private mLastHandleMsg:Landroid/os/Message;

.field private mLastHandleMsgTime:D

.field private mLastWebkitDrawTime:J

.field private mLowMemoryUsageThresholdMb:I

.field private mNativeClass:I

.field mRestoreScroll:Z

.field private mRestoredScale:F

.field private mRestoredTextWrapScale:F

.field private mRestoredX:I

.field private mRestoredY:I

.field private final mSettings:Landroid/webkit/WebSettings;

.field private mShowInterruptInfo:Z

.field private mSplitPictureIsScheduled:Z

.field private mTextwrapWithProp:F

.field private mViewportDensityDpi:I

.field private mViewportHeight:I

.field private mViewportInitialScale:I

.field private mViewportMaximumScale:I

.field private mViewportMinimumScale:I

.field private mViewportUserScalable:Z

.field private mViewportWidth:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWebkitDrawCnt:I

.field m_bForceDraw:Z

.field m_bNeedInvalidate:Z

.field public m_bPauseDrawContentPicture:Z

.field public m_bPauseDrawContentPictureCount:I

.field m_nNeedInvalidateCount:I

.field final m_nNeedInvalidateMaxCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    :try_start_0
    const-string/jumbo v1, "webcore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    const-string v1, "chromium_net"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "youtube.com"

    aput-object v2, v1, v4

    const-string v2, "cnn.com/video"

    aput-object v2, v1, v5

    const-string v2, "cnn.com/world"

    aput-object v2, v1, v6

    const-string v2, "espn.com"

    aput-object v2, v1, v7

    const-string v2, "espn.go.com"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "2advanced.com"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "http://www.gamer.com.tw"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "http://gamer.com.tw"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "bbc.co.uk/news/video_and_audio"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "fotologue.jp"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "thisisvt.vom"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "bbc.co.uk/news/video_and_audio"

    aput-object v3, v1, v2

    sput-object v1, Landroid/webkit/WebViewCore;->WebSite_Heavy_Flash_Content:[Ljava/lang/String;

    .line 716
    sput-boolean v5, Landroid/webkit/WebViewCore;->m_bIsPauseTimes:Z

    .line 918
    const/16 v1, 0x36

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "REVEAL_SELECTION"

    aput-object v2, v1, v4

    const-string v2, "REQUEST_LABEL"

    aput-object v2, v1, v5

    const-string v2, "UPDATE_FRAME_CACHE_IF_LOADING"

    aput-object v2, v1, v6

    const-string v2, "SCROLL_TEXT_INPUT"

    aput-object v2, v1, v7

    const-string v2, "LOAD_URL"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "STOP_LOADING"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RELOAD"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "KEY_DOWN"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "KEY_UP"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "VIEW_SIZE_CHANGED"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "GO_BACK_FORWARD"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "SET_SCROLL_OFFSET"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "RESTORE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "PAUSE_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "RESUME_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "CLEAR_CACHE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "CLEAR_HISTORY"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "SET_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "REPLACE_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "PASS_TO_JS"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SET_GLOBAL_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "UPDATE_CACHE_AND_TEXT_ENTRY"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "SET_NETWORK_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "DOC_HAS_IMAGES"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "FAKE_CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "DELETE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "LISTBOX_CHOICES"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "SINGLE_LISTBOX_CHOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "MESSAGE_RELAY"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "SET_BACKGROUND_COLOR"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "SET_MOVE_FOCUS"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "SAVE_DOCUMENT_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "129"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "WEBKIT_DRAW"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "131"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "POST_URL"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "SPLIT_PICTURE_SET"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "CLEAR_CONTENT"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "SET_MOVE_MOUSE"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "SET_MOVE_MOUSE_IF_LATEST"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "REQUEST_CURSOR_HREF"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "ADD_JS_INTERFACE"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "LOAD_DATA"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "TOUCH_UP"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "TOUCH_EVENT"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "SET_ACTIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "ON_PAUSE"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "ON_RESUME"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "FREE_MEMORY"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "VALID_NODE_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "SAVE_WEBARCHIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "WEBKIT_DRAW_LAYERS"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "REMOVE_JS_INTERFACE"

    aput-object v3, v1, v2

    sput-object v1, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    .line 1944
    sput v4, Landroid/webkit/WebViewCore;->sHandleClass:I

    .line 1946
    const-wide/16 v1, 0x0

    sput-wide v1, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    .line 1947
    sput v4, Landroid/webkit/WebViewCore;->sCurrentWebViewCoreHashCode:I

    .line 2573
    sput-boolean v4, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    return-void

    .line 68
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 69
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "webcore"

    const-string v2, "Unable to load native support libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V
    .locals 10
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/CallbackProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v5, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 101
    iput v5, p0, Landroid/webkit/WebViewCore;->mViewportHeight:I

    .line 106
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 111
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 116
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 118
    iput-boolean v7, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 127
    iput v5, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    .line 129
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 130
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    .line 131
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 132
    iput v9, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 133
    iput v9, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 135
    new-instance v5, Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-direct {v5, p0}, Landroid/webkit/DeviceMotionAndOrientationManager;-><init>(Landroid/webkit/WebViewCore;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    .line 147
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mShowInterruptInfo:Z

    .line 149
    iput-boolean v7, p0, Landroid/webkit/WebViewCore;->mEnableInterruptDraw:Z

    .line 1978
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mLastHandleMsg:Landroid/os/Message;

    .line 1979
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/webkit/WebViewCore;->mLastHandleMsgTime:D

    .line 2145
    iput v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2146
    iput v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2147
    const/high16 v5, 0x3f80

    iput v5, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2261
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 2295
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    .line 2317
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/webkit/WebViewCore;->mLastWebkitDrawTime:J

    .line 2318
    iput v9, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    .line 3231
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mInterruptDraw:Z

    .line 3250
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 3251
    iput v9, p0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    .line 3253
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->m_bForceDraw:Z

    .line 3254
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->m_bNeedInvalidate:Z

    .line 3255
    iput v9, p0, Landroid/webkit/WebViewCore;->m_nNeedInvalidateCount:I

    .line 3256
    iput v7, p0, Landroid/webkit/WebViewCore;->m_nNeedInvalidateMaxCount:I

    .line 3257
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mRestoreScroll:Z

    .line 3413
    const/high16 v5, 0x3f80

    iput v5, p0, Landroid/webkit/WebViewCore;->mTextwrapWithProp:F

    .line 173
    iput-object p3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 174
    iput-object p2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    .line 175
    iput-object p4, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 178
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    .line 184
    const-class v6, Landroid/webkit/WebViewCore;

    monitor-enter v6

    .line 185
    :try_start_0
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 187
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Landroid/webkit/WebViewCore$WebCoreThread;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>(Landroid/webkit/WebViewCore$1;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 188
    .local v4, t:Ljava/lang/Thread;
    const-string v5, "WebViewCoreThread"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    const-class v5, Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .end local v4           #t:Ljava/lang/Thread;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    new-instance v5, Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {v5, p0, v8}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    .line 203
    new-instance v5, Landroid/webkit/WebSettings;

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v5, v6, v7}, Landroid/webkit/WebSettings;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    .line 206
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 208
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebStorage;->createUIHandler()V

    .line 210
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/GeolocationPermissions;->createUIHandler()V

    .line 214
    iget-object v5, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 216
    .local v2, manager:Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 217
    .local v3, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 221
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v5

    iput v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    .line 222
    iget v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Landroid/webkit/WebViewCore;->mHighMemoryUsageThresholdMb:I

    .line 224
    iget v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    div-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/webkit/WebViewCore;->mHighUsageDeltaMb:I

    .line 227
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 229
    .local v1, init:Landroid/os/Message;
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    return-void

    .line 192
    .end local v1           #init:Landroid/os/Message;
    .end local v2           #manager:Landroid/app/ActivityManager;
    .end local v3           #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    .restart local v4       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v5, "webcore"

    const-string v7, "Caught exception while waiting for thread creation."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string/jumbo v5, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v4           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method private IsWebSiteSupportForceZoom()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3423
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v6, :cond_1

    .line 3450
    :cond_0
    :goto_0
    return v4

    .line 3426
    :cond_1
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 3428
    .local v3, url:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3432
    const-string/jumbo v6, "http://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3433
    const/4 v2, 0x7

    .line 3437
    .local v2, start:I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 3439
    .local v0, end:I
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3441
    .local v1, host:Ljava/lang/String;
    const-string/jumbo v6, "www.google"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "&client="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "?client="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    const-string v6, "&source="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "?source="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_3
    const-string v6, "&q="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "?q="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    move v4, v5

    .line 3445
    goto :goto_0

    .line 3435
    .end local v0           #end:I
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #start:I
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #start:I
    goto :goto_1

    .line 3447
    .restart local v0       #end:I
    .restart local v1       #host:Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "maps.google"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "/maps?daddr="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "/maps?"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "&daddr="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "?daddr="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_7
    move v4, v5

    .line 3448
    goto/16 :goto_0
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDrawLayers()V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeRevealSelection()V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/WebViewCore;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(FI)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeContentInvalidateAll()V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/WebViewCore;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeClick(IIZ)V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/WebViewCore;Landroid/webkit/WebView$ViewSizeData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkit/WebViewCore;IZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCloseIdleConnections()V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePause()V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewCore;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetNewStorageLimit(J)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeResume()V

    return-void
.end method

.method static synthetic access$3100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePauseFlash()V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeResumeFlash()V

    return-void
.end method

.method static synthetic access$3300(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->clearCache(Z)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFreeMemory()V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p8}, Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/WebViewCore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$402(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    sput-object p0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewCore;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebViewCore;->nativeTouchUp(IIIII)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebViewCore;I[I[I[IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p7}, Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(I[I[I[IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V

    return-void
.end method

.method static synthetic access$4500(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V

    return-void
.end method

.method static synthetic access$4600(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V

    return-void
.end method

.method static synthetic access$4700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeStopPaintingCaret()V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveAnchorText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$5000(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveImageSource(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V

    return-void
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSelection(II)V

    return-void
.end method

.method static synthetic access$5500(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeModifySelection(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Landroid/webkit/WebViewCore;[ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V

    return-void
.end method

.method static synthetic access$5700(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V

    return-void
.end method

.method static synthetic access$5800(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$5900(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V

    return-void
.end method

.method static synthetic access$602(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$6100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpNavTree()V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V

    return-void
.end method

.method static synthetic access$6300(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetJsFlags(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$6600(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSplitContent(I)V

    return-void
.end method

.method static synthetic access$6702(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    return p1
.end method

.method static synthetic access$6800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeClearContent()V

    return-void
.end method

.method static synthetic access$6900(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return v0
.end method

.method static synthetic access$7000(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return p1
.end method

.method static synthetic access$7100(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V

    return-void
.end method

.method static synthetic access$7200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePluginSurfaceReady()V

    return-void
.end method

.method static synthetic access$7300(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeNotifyAnimationStarted(I)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebViewCore;III)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGetTouchHighlightRects(III)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->useMockDeviceOrientation()V

    return-void
.end method

.method static synthetic access$7600(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeAutoFillForm(I)V

    return-void
.end method

.method static synthetic access$7700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePauseFPDoPlay()V

    return-void
.end method

.method static synthetic access$7800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeResumeFPDoPlay()V

    return-void
.end method

.method static synthetic access$7900(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeForceStopGifAnimation(Z)V

    return-void
.end method

.method static synthetic access$8002(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    return-void
.end method

.method private addSurface(Landroid/view/View;IIII)Landroid/webkit/ViewManager$ChildView;
    .locals 1
    .parameter "pluginView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3108
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->createSurface(Landroid/view/View;)Landroid/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 3109
    .local v0, view:Landroid/webkit/ViewManager$ChildView;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 3110
    return-object v0
.end method

.method private calculateWindowWidth(I)I
    .locals 3
    .parameter "viewWidth"

    .prologue
    .line 2202
    move v0, p1

    .line 2203
    .local v0, width:I
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2204
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2206
    const/16 v0, 0x3d4

    .line 2215
    :cond_0
    :goto_0
    return v0

    .line 2207
    :cond_1
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v1, :cond_2

    .line 2209
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0

    .line 2212
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private centerFitRect(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3158
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3163
    :goto_0
    return-void

    .line 3161
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7f

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private clearCache(Z)V
    .locals 1
    .parameter "includeDiskFiles"

    .prologue
    .line 2090
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->clearCache()V

    .line 2091
    if-eqz p1, :cond_0

    .line 2092
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 2094
    :cond_0
    return-void
.end method

.method private clearTextEntry()V
    .locals 2

    .prologue
    .line 2947
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2950
    :goto_0
    return-void

    .line 2948
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollTo(IIZZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "onlyIfImeIsShowing"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2524
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2530
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 2531
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 2545
    :cond_0
    :goto_0
    return-void

    .line 2534
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 2535
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v4, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    if-eqz p3, :cond_2

    move v3, v1

    :goto_1
    if-eqz p4, :cond_3

    :goto_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4, v5, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2538
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_4

    .line 2539
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    move v3, v2

    .line 2535
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 2542
    .restart local v0       #msg:Landroid/os/Message;
    :cond_4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private createSurface(Landroid/view/View;)Landroid/webkit/ViewManager$ChildView;
    .locals 3
    .parameter "pluginView"

    .prologue
    const/4 v0, 0x0

    .line 3084
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 3101
    :goto_0
    return-object v0

    .line 3088
    :cond_0
    if-nez p1, :cond_1

    .line 3089
    const-string/jumbo v1, "webcore"

    const-string v2, "Attempted to add an empty plugin view to the view hierarchy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3094
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3096
    instance-of v1, p1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 3097
    check-cast v1, Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 3099
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->createView()Landroid/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 3100
    .local v0, view:Landroid/webkit/ViewManager$ChildView;
    iput-object p1, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method private destroySurface(Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "childView"

    .prologue
    .line 3119
    invoke-virtual {p1}, Landroid/webkit/ViewManager$ChildView;->removeView()V

    .line 3120
    return-void
.end method

.method private didFirstLayout(Z)V
    .locals 4
    .parameter "standardLoad"

    .prologue
    const/4 v1, 0x0

    .line 2596
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 2598
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 2619
    :goto_0
    return-void

    .line 2600
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 2601
    .local v0, updateViewState:Z
    :goto_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 2605
    if-nez v0, :cond_2

    .line 2606
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 2610
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2611
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x83

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2616
    :cond_3
    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 2617
    iput-boolean v1, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 2618
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    goto :goto_0

    .end local v0           #updateViewState:Z
    :cond_4
    move v0, v1

    .line 2600
    goto :goto_1
.end method

.method public static enterMsgHandle(IIID)V
    .locals 0
    .parameter "webviewcoreHashCode"
    .parameter "level"
    .parameter "msgId"
    .parameter "enterTime"

    .prologue
    .line 1957
    sput p1, Landroid/webkit/WebViewCore;->sHandleClass:I

    .line 1958
    sput p2, Landroid/webkit/WebViewCore;->sHandleMsgId:I

    .line 1959
    sput-wide p3, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    .line 1962
    sput p0, Landroid/webkit/WebViewCore;->sCurrentWebViewCoreHashCode:I

    .line 1963
    return-void
.end method

.method public static enterMsgHandle(Landroid/webkit/WebViewCore;IID)V
    .locals 1
    .parameter "core"
    .parameter "level"
    .parameter "msgId"
    .parameter "enterTime"

    .prologue
    .line 1949
    sput p1, Landroid/webkit/WebViewCore;->sHandleClass:I

    .line 1950
    sput p2, Landroid/webkit/WebViewCore;->sHandleMsgId:I

    .line 1951
    sput-wide p3, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    .line 1954
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    sput v0, Landroid/webkit/WebViewCore;->sCurrentWebViewCoreHashCode:I

    .line 1955
    return-void

    .line 1954
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private formDidBlur(I)V
    .locals 3
    .parameter "nodePointer"

    .prologue
    .line 358
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .parameter "libName"
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3036
    iget-object v4, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v4, :cond_0

    .line 3057
    :goto_0
    return-object v3

    .line 3040
    :cond_0
    invoke-static {v3}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v2

    .line 3042
    .local v2, pluginManager:Landroid/webkit/PluginManager;
    invoke-virtual {v2, p1}, Landroid/webkit/PluginManager;->getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3043
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3044
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to resolve "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to a plugin APK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3049
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1, p2}, Landroid/webkit/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 3050
    :catch_0
    move-exception v0

    .line 3051
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin classloader for the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3052
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 3053
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin class ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUsedQuota()J
    .locals 8

    .prologue
    .line 2228
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v4

    .line 2229
    .local v4, webStorage:Landroid/webkit/WebStorage;
    invoke-virtual {v4}, Landroid/webkit/WebStorage;->getOriginsSync()Ljava/util/Collection;

    move-result-object v1

    .line 2231
    .local v1, origins:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/webkit/WebStorage$Origin;>;"
    if-nez v1, :cond_1

    .line 2232
    const-wide/16 v2, 0x0

    .line 2238
    :cond_0
    return-wide v2

    .line 2234
    :cond_1
    const-wide/16 v2, 0x0

    .line 2235
    .local v2, usedQuota:J
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebStorage$Origin;

    .line 2236
    .local v5, website:Landroid/webkit/WebStorage$Origin;
    invoke-virtual {v5}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0
.end method

.method private hideFullScreenPlugin()V
    .locals 2

    .prologue
    .line 3076
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3081
    :goto_0
    return-void

    .line 3079
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 239
    new-instance v0, Landroid/webkit/BrowserFrame;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 243
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V

    .line 245
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->createHandler()V

    .line 247
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->createHandler()V

    .line 249
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->createHandler()V

    .line 252
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 256
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    invoke-static {v0, v1, v2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 263
    :cond_0
    const-string/jumbo v0, "webcore.showinterruptinfo"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mShowInterruptInfo:Z

    .line 266
    const-string/jumbo v0, "webcore.enableinterruptdraw"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mEnableInterruptDraw:Z

    .line 268
    return-void
.end method

.method static isSupportedMediaMimeType(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 323
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "video/m4v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isUpdatePicturePaused(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "core"

    .prologue
    .line 2458
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn(Z)V
    .locals 3
    .parameter "screenOn"

    .prologue
    .line 3026
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3027
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x88

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3028
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3029
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3031
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void

    .line 3028
    .restart local v0       #message:Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private key(Landroid/view/KeyEvent;Z)V
    .locals 9
    .parameter "evt"
    .parameter "isDown"

    .prologue
    const/4 v8, 0x0

    .line 2113
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2114
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 2116
    .local v2, unicodeChar:I
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2119
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 2122
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/webkit/WebViewCore;->nativeKey(IIIZZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    .line 2125
    const/16 v0, 0x13

    if-lt v1, v0, :cond_2

    const/16 v0, 0x16

    if-gt v1, v0, :cond_2

    .line 2130
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2131
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-static {v0, v3, v1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2142
    :cond_1
    :goto_0
    return-void

    .line 2140
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public static leaveMsgHandle(D)V
    .locals 3
    .parameter "leaveTime"

    .prologue
    const/4 v2, 0x0

    .line 1973
    sput v2, Landroid/webkit/WebViewCore;->sHandleMsgId:I

    sput v2, Landroid/webkit/WebViewCore;->sHandleClass:I

    .line 1974
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    .line 1975
    sput v2, Landroid/webkit/WebViewCore;->sCurrentWebViewCoreHashCode:I

    .line 1976
    return-void
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2098
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2099
    return-void
.end method

.method private native nativeAutoFillForm(I)V
.end method

.method private native nativeClearContent()V
.end method

.method private native nativeClick(IIZ)V
.end method

.method private native nativeCloseIdleConnections()V
.end method

.method private native nativeContentInvalidateAll()V
.end method

.method private native nativeDeleteSelection(III)V
.end method

.method private native nativeDumpDomTree(Z)V
.end method

.method private native nativeDumpNavTree()V
.end method

.method private native nativeDumpRenderTree(Z)V
.end method

.method private native nativeDumpV8Counters()V
.end method

.method static native nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method static native nativeFindAddressAndPhone(Ljava/lang/String;[I[I[I)I
.end method

.method static native nativeFindAddressAndPhone2(Ljava/lang/String;[I[I[I[I[I[I[I[I[I[I[I)I
.end method

.method private native nativeFocusBoundsChanged()Z
.end method

.method private native nativeForceStopGifAnimation(Z)V
.end method

.method private native nativeFreeMemory()V
.end method

.method private native nativeFullScreenPluginHidden(I)V
.end method

.method private native nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
.end method

.method private native nativeGetContentMinPrefWidth()I
.end method

.method private native nativeGetLastFocusNode()I
.end method

.method private native nativeGetTouchHighlightRects(III)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeHandleTouchEvent(I[I[I[IIII)Z
.end method

.method private native nativeKey(IIIZZZZ)Z
.end method

.method private native nativeModifySelection(II)Ljava/lang/String;
.end method

.method private native nativeMoveFocus(II)V
.end method

.method private native nativeMoveMouse(III)V
.end method

.method private native nativeMoveMouseIfLatest(IIII)V
.end method

.method private native nativeNeedAcceleratedWebkitDraw()Z
.end method

.method private native nativeNotifyAnimationStarted(I)V
.end method

.method private native nativePause()V
.end method

.method private native nativePauseFPDoPlay()V
.end method

.method private native nativePauseFlash()V
.end method

.method private native nativePluginSurfaceReady()V
.end method

.method private native nativeProvideVisitedHistory([Ljava/lang/String;)V
.end method

.method private native nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)I
.end method

.method private native nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IILjava/lang/String;III)V
.end method

.method private native nativeRequestLabel(II)Ljava/lang/String;
.end method

.method private native nativeResume()V
.end method

.method private native nativeResumeFPDoPlay()V
.end method

.method private native nativeResumeFlash()V
.end method

.method private native nativeRetrieveAnchorText(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveHref(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveImageSource(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveNodeString(II)Ljava/lang/String;
.end method

.method private native nativeRevealSelection()V
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeScrollFocusedTextInput(FI)V
.end method

.method private native nativeScrollLayer(ILandroid/graphics/Rect;)V
.end method

.method private native nativeSendListBoxChoice(I)V
.end method

.method private native nativeSendListBoxChoices([ZI)V
.end method

.method private native nativeSetBackgroundColor(I)V
.end method

.method private native nativeSetFocusControllerActive(Z)V
.end method

.method private native nativeSetGlobalBounds(IIII)V
.end method

.method private native nativeSetInterruptDraw(Z)V
.end method

.method private native nativeSetIsPaused(Z)V
.end method

.method private native nativeSetJsFlags(Ljava/lang/String;)V
.end method

.method private native nativeSetNewStorageLimit(J)V
.end method

.method private native nativeSetScrollOffset(IZII)V
.end method

.method private native nativeSetSelection(II)V
.end method

.method private native nativeSetSize(IIIFIIIIZ)V
.end method

.method private native nativeSetSizeWithNode(IIIFIIIIZI)V
.end method

.method private native nativeSplitContent(I)V
.end method

.method private native nativeStopPaintingCaret()V
.end method

.method private native nativeTouchUp(IIIII)V
.end method

.method private native nativeUpdateFrameCache()V
.end method

.method private native nativeUpdateFrameCacheIfLoading()V
.end method

.method private native nativeUpdateLayers(II)Z
.end method

.method private native nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
.end method

.method private needTouchEvents(Z)V
    .locals 4
    .parameter "need"

    .prologue
    const/4 v1, 0x0

    .line 2904
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2905
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x74

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2909
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2905
    goto :goto_0
.end method

.method private openFileChooser(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "acceptType"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 370
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->openFileChooser(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 371
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 372
    const-string v7, ""

    .line 375
    .local v7, filePath:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 379
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 381
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 385
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 391
    .local v8, uriString:Ljava/lang/String;
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0, v7, v8}, Landroid/webkit/JWebCoreJavaBridge;->storeFilePathForContentUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #filePath:Ljava/lang/String;
    .end local v8           #uriString:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 385
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 388
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 394
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #filePath:Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_1
.end method

.method private native passToJs(ILjava/lang/String;IIZZZZ)V
.end method

.method public static pauseTimers()V
    .locals 2

    .prologue
    .line 296
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->pause()V

    .line 301
    return-void
.end method

.method static pauseUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 2423
    if-eqz p0, :cond_0

    .line 2424
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->enableSmoothTransition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2436
    :cond_0
    :goto_0
    return-void

    .line 2426
    :cond_1
    monitor-enter p0

    .line 2427
    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 2428
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot pauseUpdatePicture, core destroyed or not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    monitor-exit p0

    goto :goto_0

    .line 2433
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2431
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeSetIsPaused(Z)V

    .line 2432
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2433
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static reducePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2398
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2399
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2400
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2402
    return-void
.end method

.method private requestKeyboard(Z)V
    .locals 4
    .parameter "showKeyboard"

    .prologue
    const/4 v1, 0x0

    .line 3005
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3006
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x76

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3010
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3006
    goto :goto_0
.end method

.method private requestKeyboardWithSelection(IIII)V
    .locals 3
    .parameter "pointer"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "textGeneration"

    .prologue
    .line 2992
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 2994
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->updatePositionRect()V

    .line 2996
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3001
    :cond_1
    return-void
.end method

.method private requestListBox([Ljava/lang/String;[II)V
    .locals 1
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 2983
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2984
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[II)V

    .line 2987
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;[I[I)V
    .locals 1
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 2975
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2976
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[I[I)V

    .line 2978
    :cond_0
    return-void
.end method

.method private restoreScale(FF)V
    .locals 1
    .parameter "scale"
    .parameter "textWrapScale"

    .prologue
    .line 2893
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2894
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 2895
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    .line 2896
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2897
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 2900
    :cond_0
    return-void
.end method

.method private restoreState(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 2464
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 2465
    .local v1, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .line 2466
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2467
    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebHistoryItem;->inflate(I)V

    .line 2466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2469
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 2470
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v3, v3, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v3, p1}, Landroid/webkit/WebBackForwardList;->restoreIndex(II)V

    .line 2471
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 2472
    return-void
.end method

.method static resumePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2406
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2407
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2408
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2410
    return-void
.end method

.method public static resumeTimers()V
    .locals 2

    .prologue
    .line 307
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->resume()V

    .line 312
    return-void
.end method

.method static resumeUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 2439
    if-eqz p0, :cond_0

    .line 2441
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    if-nez v0, :cond_1

    .line 2455
    :cond_0
    :goto_0
    return-void

    .line 2444
    :cond_1
    monitor-enter p0

    .line 2445
    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 2446
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot resumeUpdatePicture, core destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    monitor-exit p0

    goto :goto_0

    .line 2453
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2449
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeSetIsPaused(Z)V

    .line 2450
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2452
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2453
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "autoname"

    .prologue
    .line 2105
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectAt(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3177
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3178
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3180
    :cond_0
    return-void
.end method

.method private selectChinesePhrase(II)V
    .locals 5
    .parameter "pnode"
    .parameter "index"

    .prologue
    const/16 v2, 0x215

    .line 3353
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 3354
    .local v1, m:Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 3355
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 3356
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 3358
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    .line 3359
    .local v0, editable:Z
    if-eqz v0, :cond_0

    :goto_0
    iput v2, v1, Landroid/os/Message;->what:I

    .line 3362
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    iget v3, v1, Landroid/os/Message;->what:I

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v2, v3}, Landroid/webkit/WebViewCore$EventHub;->access$8400(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3363
    if-eqz v0, :cond_1

    .line 3364
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v2, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3367
    :goto_1
    return-void

    .line 3359
    :cond_0
    const/16 v2, 0x217

    goto :goto_0

    .line 3366
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const-wide/16 v3, 0xf

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v2, v1, v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$8300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    goto :goto_1
.end method

.method private sendFindAgain()V
    .locals 2

    .prologue
    .line 2954
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2957
    :goto_0
    return-void

    .line 2955
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendNotifyProgressFinished()V
    .locals 2

    .prologue
    const/16 v1, 0x6e

    .line 2549
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    .line 2550
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2553
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->removeMessages(I)V

    .line 2555
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 2558
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2559
    return-void
.end method

.method static sendStaticMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "messageType"
    .parameter "argument"

    .prologue
    .line 2413
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2417
    :goto_0
    return-void

    .line 2416
    :cond_0
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendUpdateTextEntry()V
    .locals 2

    .prologue
    .line 2219
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2220
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2223
    :cond_0
    return-void
.end method

.method private sendViewInvalidate(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2566
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2567
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2571
    :cond_0
    return-void
.end method

.method private setScrollbarModes(II)V
    .locals 2
    .parameter "hMode"
    .parameter "vMode"

    .prologue
    .line 3167
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3172
    :goto_0
    return-void

    .line 3170
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private native setViewportSettingsFromNative()V
.end method

.method private setWebTextViewAutoFillable(ILjava/lang/String;)V
    .locals 3
    .parameter "queryId"
    .parameter "preview"

    .prologue
    .line 3013
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3014
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x85

    new-instance v2, Landroid/webkit/WebViewCore$AutoFillData;

    invoke-direct {v2, p1, p2}, Landroid/webkit/WebViewCore$AutoFillData;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3018
    :cond_0
    return-void
.end method

.method private setupViewport(Z)V
    .locals 13
    .parameter "updateViewState"

    .prologue
    .line 2628
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    if-nez v9, :cond_1

    .line 2889
    :cond_0
    :goto_0
    return-void

    .line 2633
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->setViewportSettingsFromNative()V

    .line 2636
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_3

    .line 2637
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_2

    .line 2638
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2641
    :cond_2
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_3

    .line 2642
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2647
    :cond_3
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->forceUserScalable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2648
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 2649
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_10

    .line 2650
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_4

    .line 2651
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    div-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2654
    :cond_4
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_5

    .line 2655
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2669
    :cond_5
    :goto_1
    const/high16 v0, 0x3f80

    .line 2670
    .local v0, adjust:F
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_12

    .line 2673
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v9

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/16 v10, 0x64

    if-eq v9, v10, :cond_6

    .line 2674
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v0

    .line 2680
    :cond_6
    :goto_2
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v9

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_7

    .line 2681
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v10, 0x8b

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 2684
    :cond_7
    const/high16 v9, 0x42c8

    mul-float/2addr v9, v0

    float-to-int v2, v9

    .line 2686
    .local v2, defaultScale:I
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_8

    .line 2687
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2689
    :cond_8
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_9

    .line 2690
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2692
    :cond_9
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_a

    .line 2693
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2697
    :cond_a
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v9, :cond_b

    .line 2698
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v9, :cond_b

    .line 2699
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2702
    :cond_b
    iget-boolean v9, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    if-nez v9, :cond_c

    .line 2703
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2704
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2705
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2707
    :cond_c
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-le v9, v10, :cond_d

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-eqz v9, :cond_d

    .line 2709
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2711
    :cond_d
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_e

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ge v9, v10, :cond_e

    .line 2713
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2715
    :cond_e
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-gez v9, :cond_f

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ne v9, v2, :cond_f

    .line 2716
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 2720
    :cond_f
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-eqz v9, :cond_13

    if-nez p1, :cond_13

    .line 2722
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 2723
    new-instance v5, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v5}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    .line 2724
    .local v5, viewState:Landroid/webkit/WebViewCore$ViewState;
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v9, v9

    const/high16 v10, 0x42c8

    div-float/2addr v9, v10

    iput v9, v5, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    .line 2725
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v9, v9

    const/high16 v10, 0x42c8

    div-float/2addr v9, v10

    iput v9, v5, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    .line 2726
    iput v0, v5, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    .line 2728
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    .line 2730
    const/4 v9, 0x0

    iput v9, v5, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    .line 2731
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 2732
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v10, 0x6d

    invoke-static {v9, v10, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2659
    .end local v0           #adjust:F
    .end local v2           #defaultScale:I
    .end local v5           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :cond_10
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_11

    .line 2660
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    const/16 v10, 0x32

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2662
    :cond_11
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_5

    .line 2663
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    const/16 v10, 0xc8

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    goto/16 :goto_1

    .line 2676
    .restart local v0       #adjust:F
    :cond_12
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    if-lez v9, :cond_6

    .line 2677
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    int-to-float v10, v10

    div-float v0, v9, v10

    goto/16 :goto_2

    .line 2741
    .restart local v2       #defaultScale:I
    :cond_13
    iget v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2742
    .local v6, viewportWidth:I
    if-nez v6, :cond_15

    .line 2746
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    .line 2747
    .local v7, webViewWidth:I
    int-to-float v9, v7

    div-float/2addr v9, v0

    float-to-int v6, v9

    .line 2748
    if-nez v6, :cond_14

    .line 2756
    :cond_14
    :goto_3
    new-instance v9, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v9}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    iput-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 2757
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v10, v10

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    .line 2758
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v10, v10

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    .line 2759
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v9, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    .line 2760
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    .line 2761
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mScrollY:I

    .line 2762
    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v9, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    if-nez v9, :cond_16

    iget v9, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    if-nez v9, :cond_16

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v9, :cond_16

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v9}, Landroid/webkit/BrowserFrame;->getShouldStartScrolledRight()Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, v10, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 2767
    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v9, :cond_17

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, v10, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    .line 2768
    iget-boolean v9, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v9, :cond_19

    .line 2769
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    .line 2770
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 2771
    iget v9, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_18

    .line 2772
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 2795
    :goto_6
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-boolean v9, v9, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v9, :cond_1d

    .line 2801
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v10, 0x0

    iput v10, v9, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2804
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 2805
    .local v1, data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget v9, v9, Landroid/webkit/WebView;->mLastWidthSent:I

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2806
    const/4 v9, 0x0

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2809
    iget v9, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2810
    const/high16 v9, -0x4080

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2811
    const/4 v9, 0x0

    iput-boolean v9, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 2812
    const/4 v9, 0x0

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 2819
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v10, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v9, v10}, Landroid/webkit/WebViewCore$EventHub;->access$8400(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2820
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v10, 0x0

    const/16 v11, 0x69

    invoke-static {v10, v11, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v9, v10}, Landroid/webkit/WebViewCore$EventHub;->access$8200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2754
    .end local v1           #data:Landroid/webkit/WebView$ViewSizeData;
    .end local v7           #webViewWidth:I
    :cond_15
    int-to-float v9, v6

    iget v10, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .restart local v7       #webViewWidth:I
    goto/16 :goto_3

    .line 2762
    :cond_16
    const/4 v9, 0x0

    goto :goto_4

    .line 2767
    :cond_17
    const/4 v9, 0x0

    goto :goto_5

    .line 2774
    :cond_18
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, v10, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    goto :goto_6

    .line 2777
    :cond_19
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_1a

    .line 2778
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v11, v11

    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    iput v11, v10, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    iput v11, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto :goto_6

    .line 2780
    :cond_1a
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v9, :cond_1b

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ge v9, v7, :cond_1b

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 2782
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    int-to-float v11, v7

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, v10, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    iput v11, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 2785
    :cond_1b
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 2786
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 2788
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    const/4 v10, 0x0

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 2790
    :cond_1c
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 2823
    :cond_1d
    if-nez v6, :cond_1e

    .line 2826
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v10, 0x0

    iput v10, v9, Landroid/webkit/WebView;->mLastWidthSent:I

    goto/16 :goto_0

    .line 2828
    :cond_1e
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 2832
    .restart local v1       #data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v3, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 2833
    .local v3, tentativeScale:F
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-nez v9, :cond_21

    .line 2840
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v3, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 2841
    int-to-float v9, v7

    div-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 2842
    .local v4, tentativeViewWidth:I
    invoke-direct {p0, v4}, Landroid/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v8

    .line 2846
    .local v8, windowWidth:I
    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2847
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 2849
    iget v9, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2851
    :cond_1f
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 2853
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getReadingLevelScale()F

    move-result v10

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 2868
    .end local v4           #tentativeViewWidth:I
    .end local v8           #windowWidth:I
    :cond_20
    :goto_7
    int-to-float v9, v7

    iget v10, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2874
    iget v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    if-nez v9, :cond_22

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    :goto_8
    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2877
    int-to-float v9, v7

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, v10, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2879
    const/4 v9, 0x0

    iput-boolean v9, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 2880
    const/4 v9, 0x0

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 2883
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v10, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v9, v10}, Landroid/webkit/WebViewCore$EventHub;->access$8400(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2886
    invoke-direct {p0, v1}, Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V

    goto/16 :goto_0

    .line 2858
    :cond_21
    iput v3, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    goto :goto_7

    .line 2874
    :cond_22
    iget v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    int-to-float v9, v9

    iget v10, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v10, v6

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    goto :goto_8
.end method

.method private showFullScreenPlugin(Landroid/webkit/ViewManager$ChildView;II)V
    .locals 3
    .parameter "childView"
    .parameter "orientation"
    .parameter "npp"

    .prologue
    .line 3063
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 3072
    :goto_0
    return-void

    .line 3067
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3068
    .local v0, message:Landroid/os/Message;
    iget-object v1, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3069
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3070
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 3071
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private showRect(IIIIIIFFFF)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "contentWidth"
    .parameter "contentHeight"
    .parameter "xPercentInDoc"
    .parameter "xPercentInView"
    .parameter "yPercentInDoc"
    .parameter "yPercentInView"

    .prologue
    .line 3139
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3140
    new-instance v0, Landroid/webkit/WebViewCore$ShowRectData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ShowRectData;-><init>()V

    .line 3141
    .local v0, data:Landroid/webkit/WebViewCore$ShowRectData;
    iput p1, v0, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    .line 3142
    iput p2, v0, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    .line 3143
    iput p3, v0, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    .line 3144
    iput p4, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    .line 3145
    iput p5, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    .line 3146
    iput p6, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    .line 3147
    iput p7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    .line 3148
    iput p8, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    .line 3149
    iput p9, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    .line 3150
    iput p10, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    .line 3151
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3154
    .end local v0           #data:Landroid/webkit/WebViewCore$ShowRectData;
    :cond_0
    return-void
.end method

.method private updateContent(I)V
    .locals 3
    .parameter "pointer"

    .prologue
    .line 3371
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3372
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xcd

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3375
    :cond_0
    return-void
.end method

.method private updateSurface(Landroid/webkit/ViewManager$ChildView;IIII)V
    .locals 0
    .parameter "childView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3115
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 3116
    return-void
.end method

.method private updateTextSelection(IIII)V
    .locals 4
    .parameter "pointer"
    .parameter "start"
    .parameter "end"
    .parameter "textGeneration"

    .prologue
    const/4 v2, -0x1

    .line 2926
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 2930
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2931
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/EditableWebView;

    .line 2932
    .local v0, editableWebView:Landroid/webkit/EditableWebView;
    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->updatePositionRect()V

    .line 2933
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v1, :cond_0

    .line 2934
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, p1, v2, p1, v2}, Landroid/webkit/HTCWebCore;->nativeGetTextBetween(IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->setCurrentEditingNodeText(Ljava/lang/String;)V

    .line 2939
    .end local v0           #editableWebView:Landroid/webkit/EditableWebView;
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    new-instance v3, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v3, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v1, v2, p1, p4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2943
    :cond_1
    return-void
.end method

.method private updateTextfield(IZLjava/lang/String;I)V
    .locals 3
    .parameter "ptr"
    .parameter "changeToPassword"
    .parameter "text"
    .parameter "textGeneration"

    .prologue
    .line 2914
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2915
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-static {v1, v2, p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2918
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2919
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2921
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateViewport()V
    .locals 1

    .prologue
    .line 2624
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 2625
    return-void
.end method

.method private useMockDeviceOrientation()V
    .locals 1

    .prologue
    .line 3183
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-virtual {v0}, Landroid/webkit/DeviceMotionAndOrientationManager;->useMock()V

    .line 3184
    return-void
.end method

.method private viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V
    .locals 16
    .parameter "data"

    .prologue
    .line 2151
    move-object/from16 v0, p1

    iget v6, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2152
    .local v6, w:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2153
    .local v12, h:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2154
    .local v4, textwrapWidth:I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2159
    .local v5, scale:F
    if-nez v6, :cond_0

    .line 2160
    const-string/jumbo v1, "webcore"

    const-string/jumbo v7, "skip viewSizeChanged as w is 0"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :goto_0
    return-void

    .line 2163
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v2

    .line 2164
    .local v2, width:I
    move v3, v12

    .line 2165
    .local v3, height:I
    if-eq v2, v6, :cond_1

    .line 2166
    move-object/from16 v0, p1

    iget v13, v0, Landroid/webkit/WebView$ViewSizeData;->mHeightWidthRatio:F

    .line 2167
    .local v13, heightWidthRatio:F
    const/4 v1, 0x0

    cmpl-float v1, v13, v1

    if-lez v1, :cond_4

    move v15, v13

    .line 2168
    .local v15, ratio:F
    :goto_1
    int-to-float v1, v2

    mul-float/2addr v1, v15

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2172
    .end local v13           #heightWidthRatio:F
    .end local v15           #ratio:F
    :cond_1
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebView$ViewSizeData;->mFocusNode:I

    if-nez v1, :cond_2

    .line 2173
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewCore;->nativeGetLastFocusNode()I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/webkit/WebView$ViewSizeData;->mFocusNode:I

    .line 2175
    :cond_2
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebView$ViewSizeData;->mFocusNode:I

    if-eqz v1, :cond_6

    .line 2176
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    if-lez v1, :cond_5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    :goto_2
    move-object/from16 v0, p1

    iget v8, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    move-object/from16 v0, p1

    iget-boolean v10, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    move-object/from16 v0, p1

    iget v11, v0, Landroid/webkit/WebView$ViewSizeData;->mFocusNode:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Landroid/webkit/WebViewCore;->nativeSetSizeWithNode(IIIFIIIIZI)V

    .line 2186
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-nez v1, :cond_8

    const/4 v14, 0x1

    .line 2187
    .local v14, needInvalidate:Z
    :goto_4
    move-object/from16 v0, p0

    iput v6, v0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2188
    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2189
    move-object/from16 v0, p0

    iput v5, v0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2190
    if-eqz v14, :cond_3

    .line 2194
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2196
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v7, 0x0

    const/16 v8, 0x75

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v7}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .line 2167
    .end local v14           #needInvalidate:Z
    .restart local v13       #heightWidthRatio:F
    :cond_4
    int-to-float v1, v12

    int-to-float v7, v6

    div-float v15, v1, v7

    goto :goto_1

    .end local v13           #heightWidthRatio:F
    :cond_5
    move v7, v12

    .line 2176
    goto :goto_2

    .line 2181
    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    if-lez v1, :cond_7

    move-object/from16 v0, p1

    iget v7, v0, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    :goto_5
    move-object/from16 v0, p1

    iget v8, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    move-object/from16 v0, p1

    iget-boolean v10, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Landroid/webkit/WebViewCore;->nativeSetSize(IIIFIIIIZ)V

    goto :goto_3

    :cond_7
    move v7, v12

    goto :goto_5

    .line 2186
    :cond_8
    const/4 v14, 0x0

    goto :goto_4
.end method

.method private webkitDraw()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x82

    const/4 v8, 0x0

    .line 2320
    iput-boolean v8, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2321
    new-instance v3, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v3}, Landroid/webkit/WebViewCore$DrawData;-><init>()V

    .line 2323
    .local v3, draw:Landroid/webkit/WebViewCore$DrawData;
    iget-object v6, v3, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    iget-object v7, v3, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    invoke-direct {p0, v6, v7}, Landroid/webkit/WebViewCore;->nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)I

    move-result v6

    iput v6, v3, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    .line 2324
    iget v6, v3, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    if-nez v6, :cond_6

    .line 2327
    iget-boolean v6, p0, Landroid/webkit/WebViewCore;->mInterruptDraw:Z

    if-eqz v6, :cond_2

    .line 2328
    iget-boolean v6, p0, Landroid/webkit/WebViewCore;->mShowInterruptInfo:Z

    if-eqz v6, :cond_0

    .line 2329
    const-string/jumbo v6, "webcore"

    const-string v7, "[InterruptDraw][webkitDraw] webkitDraw abort due to drawIsPaused. no need to  enqueue"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v6, v9}, Landroid/webkit/WebViewCore$EventHub;->access$8400(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2369
    :cond_1
    :goto_0
    return-void

    .line 2334
    :cond_2
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->isPaused()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2343
    .local v0, currentTime:J
    iget-wide v6, p0, Landroid/webkit/WebViewCore;->mLastWebkitDrawTime:J

    sub-long v4, v0, v6

    .line 2344
    .local v4, duration:J
    const/4 v2, 0x0

    .line 2346
    .local v2, deferMsg:Z
    const-wide/16 v6, 0x22

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 2347
    iget v6, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    .line 2348
    const/16 v6, 0xa

    iget v7, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    if-ne v6, v7, :cond_3

    .line 2349
    iput v8, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    .line 2350
    const-string/jumbo v6, "webcore"

    const-string v7, "[webViewCore::webkitDraw] defer message ===="

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    const/4 v2, 0x1

    .line 2355
    :cond_3
    :goto_1
    iput-wide v0, p0, Landroid/webkit/WebViewCore;->mLastWebkitDrawTime:J

    .line 2357
    if-eqz v2, :cond_5

    .line 2358
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v10, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v6, v7, v8, v9}, Landroid/webkit/WebViewCore$EventHub;->access$8300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    goto :goto_0

    .line 2354
    :cond_4
    iput v8, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    goto :goto_1

    .line 2360
    :cond_5
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v10, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .line 2367
    .end local v0           #currentTime:J
    .end local v2           #deferMsg:Z
    .end local v4           #duration:J
    :cond_6
    iput-object v3, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    .line 2368
    invoke-direct {p0, v3}, Landroid/webkit/WebViewCore;->webkitDraw(Landroid/webkit/WebViewCore$DrawData;)V

    goto :goto_0
.end method

.method private webkitDraw(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 3
    .parameter "draw"

    .prologue
    .line 2372
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 2373
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFocusBoundsChanged()Z

    move-result v0

    iput-boolean v0, p1, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    .line 2374
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    iget v2, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 2375
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2376
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x3d4

    :goto_0
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    .line 2382
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    if-eqz v0, :cond_1

    .line 2383
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 2384
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 2386
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v0, :cond_2

    .line 2387
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/webkit/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    .line 2388
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 2391
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2394
    :cond_3
    return-void

    .line 2376
    :cond_4
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v0, :cond_5

    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0
.end method

.method private webkitDrawLayers()V
    .locals 3

    .prologue
    const/16 v2, 0x75

    .line 2300
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    .line 2301
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    if-nez v0, :cond_1

    .line 2302
    :cond_0
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 2303
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    .line 2314
    :goto_0
    return-void

    .line 2307
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    iget v1, v1, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebViewCore;->nativeUpdateLayers(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2309
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    .line 2311
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2312
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method protected addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 341
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/CallbackProxy;->addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V

    .line 342
    return-void
.end method

.method public checkBlock()D
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 1984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v0, v4

    .line 1993
    .local v0, currTime:D
    iget-object v4, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkit/CallbackProxy;->getIsonJsAlert()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2001
    :cond_0
    :goto_0
    return-wide v2

    .line 1996
    :cond_1
    sget v4, Landroid/webkit/WebViewCore;->sHandleMsgId:I

    if-eqz v4, :cond_0

    sget-wide v4, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    sget-wide v4, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    sub-double v4, v0, v4

    const-wide v6, 0x40cd4c0000000000L

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 1998
    sget-wide v2, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    sub-double v2, v0, v2

    goto :goto_0
.end method

.method public composingText(ILjava/lang/String;)V
    .locals 1
    .parameter "pnode"
    .parameter "s"

    .prologue
    .line 3286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/WebViewCore;->composingText(ILjava/lang/String;I)V

    .line 3287
    return-void
.end method

.method public composingText(ILjava/lang/String;I)V
    .locals 2
    .parameter "pnode"
    .parameter "s"
    .parameter "c"

    .prologue
    .line 3290
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3291
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x1f6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3292
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3293
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 3294
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3295
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3296
    return-void
.end method

.method contentDraw()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2480
    monitor-enter p0

    .line 2481
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-nez v0, :cond_1

    .line 2483
    :cond_0
    monitor-exit p0

    .line 2510
    :goto_0
    return-void

    .line 2487
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2488
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 2509
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2492
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mInterruptDraw:Z

    if-eqz v0, :cond_5

    .line 2493
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mShowInterruptInfo:Z

    if-eqz v0, :cond_4

    .line 2494
    const-string/jumbo v0, "webcore"

    const-string v1, "[InterruptDraw][contentDraw] InterruptDraw enable, return directly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 2499
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_6

    monitor-exit p0

    goto :goto_0

    .line 2500
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2505
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeNeedAcceleratedWebkitDraw()Z

    move-result v0

    if-ne v1, v0, :cond_7

    .line 2506
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2509
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 2508
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public deleteSurroundingText(IIIII)V
    .locals 4
    .parameter "pnode"
    .parameter "leftStart"
    .parameter "leftEnd"
    .parameter "rightStart"
    .parameter "rightEnd"

    .prologue
    const/16 v3, 0x1f7

    .line 3300
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3301
    .local v0, m:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 3302
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3303
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x2

    aput p4, v1, v2

    const/4 v2, 0x3

    aput p5, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3304
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/webkit/WebViewCore$EventHub;->access$8700(Landroid/webkit/WebViewCore$EventHub;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3305
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3308
    :goto_0
    return-void

    .line 3307
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$8200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0
.end method

.method destroy()V
    .locals 4

    .prologue
    .line 2073
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    monitor-enter v1

    .line 2078
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x1

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$802(Landroid/webkit/WebViewCore$EventHub;Z)Z

    .line 2079
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2081
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->blockMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$8600(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2082
    monitor-exit v1

    .line 2083
    return-void

    .line 2082
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method doSelection(IIZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "extent"

    .prologue
    .line 3330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    .line 3331
    return-void
.end method

.method doSelection(IIZZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "extent"
    .parameter "wordBase"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3334
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3335
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x213

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3336
    if-eqz p3, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3337
    if-eqz p4, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 3338
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3339
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3340
    return-void

    :cond_0
    move v1, v3

    .line 3336
    goto :goto_0

    :cond_1
    move v2, v3

    .line 3337
    goto :goto_1
.end method

.method doSelectionByIndex(IIII)V
    .locals 3
    .parameter "nodeStart"
    .parameter "start"
    .parameter "nodeEnd"
    .parameter "end"

    .prologue
    .line 3343
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3344
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x214

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3345
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3346
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 3347
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p4, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3348
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3349
    return-void
.end method

.method protected enterFullscreenForVideoLayer(ILjava/lang/String;)V
    .locals 4
    .parameter "layerId"
    .parameter "url"

    .prologue
    .line 523
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 528
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x89

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 526
    .local v0, message:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"

    .prologue
    .line 412
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v7

    new-instance v9, Landroid/webkit/WebViewCore$1;

    invoke-direct {v9, p0}, Landroid/webkit/WebViewCore$1;-><init>(Landroid/webkit/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/CallbackProxy;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 419
    return-void
.end method

.method protected geolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsHidePrompt()V

    .line 469
    return-void
.end method

.method protected geolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 451
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/webkit/WebViewCore$4;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$4;-><init>(Landroid/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 462
    return-void
.end method

.method declared-synchronized getBrowserFrame()Landroid/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3021
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDeviceMotionService()Landroid/webkit/DeviceMotionService;
    .locals 3

    .prologue
    .line 3193
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    if-nez v0, :cond_0

    .line 3194
    new-instance v0, Landroid/webkit/DeviceMotionService;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkit/DeviceMotionService;-><init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    .line 3197
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    return-object v0
.end method

.method protected getDeviceOrientationService()Landroid/webkit/DeviceOrientationService;
    .locals 3

    .prologue
    .line 3201
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    if-nez v0, :cond_0

    .line 3202
    new-instance v0, Landroid/webkit/DeviceOrientationService;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkit/DeviceOrientationService;-><init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    .line 3205
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    return-object v0
.end method

.method getRectOf(I)Landroid/graphics/Rect;
    .locals 2
    .parameter "type"

    .prologue
    .line 3317
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3318
    .local v0, ret:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, v0, p1}, Landroid/webkit/HTCWebCore;->nativeGetRectOf(Landroid/graphics/Rect;I)V

    .line 3319
    return-object v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method public getViewportWidth()I
    .locals 1

    .prologue
    .line 3419
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    return v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 2585
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method initializeSubwindow()V
    .locals 2

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    .line 278
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 279
    return-void
.end method

.method public insetText(ILjava/lang/String;)V
    .locals 2
    .parameter "pnode"
    .parameter "s"

    .prologue
    .line 3277
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3278
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x1f5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3279
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3280
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3281
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3282
    return-void
.end method

.method public isThisWebCoreBlocked()Z
    .locals 2

    .prologue
    .line 2005
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget v1, Landroid/webkit/WebViewCore;->sCurrentWebViewCoreHashCode:I

    if-ne v0, v1, :cond_0

    .line 2006
    const/4 v0, 0x1

    .line 2007
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 349
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 477
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    .line 488
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 499
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method layersDraw()V
    .locals 3

    .prologue
    .line 2514
    monitor-enter p0

    .line 2515
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 2519
    :goto_0
    return-void

    .line 2516
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    .line 2517
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x94

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2518
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method loadStarted()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 3387
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->m_bNeedInvalidate:Z

    .line 3388
    iput v0, p0, Landroid/webkit/WebViewCore;->m_nNeedInvalidateCount:I

    .line 3389
    return-void
.end method

.method modifySelection(Z)V
    .locals 2
    .parameter "willModifyStart"

    .prologue
    .line 3323
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3324
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x212

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3325
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3326
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3327
    return-void

    .line 3325
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public native nativeContainVideoPlugin()Z
.end method

.method public native nativeGetHitNode(II)I
.end method

.method public native nativeGetPluginCount()I
.end method

.method protected populateVisitedLinks()V
    .locals 2

    .prologue
    .line 436
    new-instance v0, Landroid/webkit/WebViewCore$3;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$3;-><init>(Landroid/webkit/WebViewCore;)V

    .line 441
    .local v0, callback:Landroid/webkit/ValueCallback;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0}, Landroid/webkit/CallbackProxy;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 442
    return-void
.end method

.method protected reachedMaxAppCacheSize(J)V
    .locals 6
    .parameter "spaceNeeded"

    .prologue
    .line 427
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v3

    new-instance v5, Landroid/webkit/WebViewCore$2;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewCore$2;-><init>(Landroid/webkit/WebViewCore;)V

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/CallbackProxy;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 433
    return-void
.end method

.method removeMessages()V
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$8500(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2066
    return-void
.end method

.method removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 2061
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$8400(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2062
    return-void
.end method

.method sendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 2020
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2021
    return-void
.end method

.method sendMessage(II)V
    .locals 3
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 2029
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2030
    return-void
.end method

.method sendMessage(III)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2033
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2034
    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2042
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2043
    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "obj"

    .prologue
    .line 2038
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2039
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2024
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2025
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2016
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2017
    return-void
.end method

.method sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2046
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$8200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2048
    return-void
.end method

.method sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2056
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p5, p6}, Landroid/webkit/WebViewCore$EventHub;->access$8300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 2057
    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2051
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p3, p4}, Landroid/webkit/WebViewCore$EventHub;->access$8300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 2052
    return-void
.end method

.method public setEditable(Z)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 3269
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3270
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3271
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3272
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$8100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3273
    return-void

    .line 3271
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setHTCWebCore(Landroid/webkit/HTCWebCore;)V
    .locals 0
    .parameter "htcWebCore"

    .prologue
    .line 3265
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    .line 3266
    return-void
.end method

.method protected setInstallableWebApp()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->setInstallableWebApp()V

    .line 517
    return-void
.end method

.method public setInterruptDraw(Z)V
    .locals 3
    .parameter "bSignal"

    .prologue
    .line 3236
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mEnableInterruptDraw:Z

    if-nez v0, :cond_1

    .line 3246
    :cond_0
    :goto_0
    return-void

    .line 3239
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mInterruptDraw:Z

    if-eq v0, p1, :cond_0

    .line 3242
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mShowInterruptInfo:Z

    if-eqz v0, :cond_2

    .line 3243
    const-string/jumbo v0, "webcore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InterruptDraw][setInterruptDraw] bInterruptDraw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    :cond_2
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mInterruptDraw:Z

    .line 3245
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetInterruptDraw(Z)V

    goto :goto_0
.end method

.method public setIsLoading(Z)V
    .locals 3
    .parameter "bIsLoading"

    .prologue
    .line 3399
    if-nez p1, :cond_0

    .line 3400
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->m_bForceDraw:Z

    .line 3403
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3404
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3407
    :cond_1
    if-nez p1, :cond_2

    .line 3410
    :cond_2
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    .line 3188
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/DeviceMotionAndOrientationManager;->setMockOrientation(ZDZDZD)V

    .line 3190
    return-void
.end method

.method setProgress(I)V
    .locals 1
    .parameter "newProgress"

    .prologue
    .line 3393
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3394
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setProgress(I)V

    .line 3395
    :cond_0
    return-void
.end method

.method setTextwrapWithProp(F)V
    .locals 0
    .parameter "prop"

    .prologue
    .line 3415
    iput p1, p0, Landroid/webkit/WebViewCore;->mTextwrapWithProp:F

    .line 3416
    return-void
.end method

.method signalRepaintDone()V
    .locals 1

    .prologue
    .line 2579
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 2580
    return-void
.end method

.method splitContent(I)V
    .locals 2
    .parameter "content"

    .prologue
    .line 2243
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    if-nez v0, :cond_0

    .line 2244
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    .line 2245
    const/16 v0, 0x85

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2247
    :cond_0
    return-void
.end method

.method stopLoading()V
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v0, :cond_0

    .line 1928
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1930
    :cond_0
    return-void
.end method

.method public updateRestoreScroll(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3379
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 3380
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 3381
    return-void
.end method
