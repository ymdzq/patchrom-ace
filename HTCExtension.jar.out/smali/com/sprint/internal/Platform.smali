.class public Lcom/sprint/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final DISABLE_SCREEN_TIMEOUT_VALUE:I = -0x1

.field private static final DSA_ENABLE_SCREEN_TIMEOUT:Ljava/lang/String; = "dsa_screen_off_enable"

.field private static final DSA_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "dsa_screen_off_timeout"

.field private static final EVENT_BIND_SERVICE:I = 0x64

.field private static final EVENT_REBOOT_REQUEST:I = 0x66

.field private static final EVENT_SERVICE_CONNECTED:I = 0x65

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mPermissionPass:Z

.field private mRebootRequest:Z

.field private mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

.field private mSignaturePass:Z

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "Platform"

    sput-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "mContext"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    .line 38
    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    .line 40
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mLock:Ljava/lang/Object;

    .line 41
    iput-boolean v2, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    .line 50
    new-instance v1, Lcom/sprint/internal/Platform$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sprint/internal/Platform$1;-><init>(Lcom/sprint/internal/Platform;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v1, Lcom/sprint/internal/Platform$2;

    invoke-direct {v1, p0}, Lcom/sprint/internal/Platform$2;-><init>(Lcom/sprint/internal/Platform;)V

    iput-object v1, p0, Lcom/sprint/internal/Platform;->serviceConnection:Landroid/content/ServiceConnection;

    .line 93
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    .line 95
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Platform - Caller: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p1}, Lcom/sprint/internal/ConnectionManager;->checkCallerSignature(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    .line 99
    iget-boolean v1, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-nez v1, :cond_1

    .line 100
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sprint.internal.htcsprintservice.IHtcSprintService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/internal/Platform;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    const-string v1, "com.sprint.internal.permission.PLATFORM"

    invoke-static {v1}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iput-boolean v4, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    .line 109
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "bindService is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "****** require PLATFORM permission!!****** "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sprint/internal/Platform;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sprint/internal/Platform;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sprint/internal/Platform;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sprint/internal/Platform;Lcom/sprint/internal/htcsprintservice/IHtcSprintService;)Lcom/sprint/internal/htcsprintservice/IHtcSprintService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sprint/internal/Platform;->mService:Lcom/sprint/internal/htcsprintservice/IHtcSprintService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sprint/internal/Platform;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getCdmaPrlVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 241
    .local v0, prl_prop:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 221
    .end local v0           #prl_prop:Ljava/lang/String;
    :cond_0
    const-string v1, "com.sprint.internal.permission.PLATFORM"

    invoke-static {v1}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    const-string v1, "ro.cdma.prl"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .restart local v0       #prl_prop:Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v0           #prl_prop:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v2, "****** require PLATFORM permission!!****** "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, ""

    goto :goto_0
.end method

.method private static isMainThread()Z
    .locals 6

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 246
    .local v2, myLooper:Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 247
    .local v1, mainLooper:Landroid/os/Looper;
    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 248
    .local v0, bIsMainLooper:Z
    :goto_0
    sget-object v3, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bIsMainLooper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return v0

    .line 247
    .end local v0           #bIsMainLooper:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableScreenTimeout()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 124
    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_0

    .line 159
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "disableScreenTimeout"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean v4, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v4, :cond_2

    .line 127
    :cond_1
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "Signature or Permission failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_screen_off_enable"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 136
    .local v2, enableTimeout:Z
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/16 v6, 0x7530

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 141
    .local v0, deviceTimeOut:I
    if-nez v2, :cond_3

    if-eq v0, v7, :cond_4

    .line 143
    :cond_3
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_screen_off_timeout"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save device timeout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_4
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    iget-object v4, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_screen_off_enable"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 154
    .end local v0           #deviceTimeOut:I
    .end local v2           #enableTimeout:Z
    :catch_0
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "could not persist screen timeout setting"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 156
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 157
    .local v3, se:Ljava/lang/SecurityException;
    sget-object v4, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v5, "need Permission"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public enableScreenTimeout()V
    .locals 8

    .prologue
    .line 161
    sget-boolean v5, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v5, :cond_0

    .line 203
    :goto_0
    return-void

    .line 162
    :cond_0
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "enableScreenTimeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-boolean v5, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v5, :cond_2

    .line 164
    :cond_1
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "Signature or Permission failed!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_screen_off_enable"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 172
    .local v2, enableTimeout:Z
    if-eqz v2, :cond_3

    .line 174
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "already enableScreenTimeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 198
    .end local v2           #enableTimeout:Z
    :catch_0
    move-exception v1

    .line 199
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "could not persist screen timeout setting"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #enableTimeout:Z
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 181
    .local v3, savedTimeout:I
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, currTimeout:I
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "savedTimeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currTimeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    if-eq v0, v3, :cond_4

    .line 188
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reset timeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    :goto_1
    iget-object v5, p0, Lcom/sprint/internal/Platform;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_screen_off_enable"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 200
    .end local v0           #currTimeout:I
    .end local v2           #enableTimeout:Z
    .end local v3           #savedTimeout:I
    :catch_1
    move-exception v4

    .line 201
    .local v4, se:Ljava/lang/SecurityException;
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "need Permission"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 192
    .end local v4           #se:Ljava/lang/SecurityException;
    .restart local v0       #currTimeout:I
    .restart local v2       #enableTimeout:Z
    .restart local v3       #savedTimeout:I
    :cond_4
    :try_start_2
    sget-object v5, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v6, "user already enableScreenTimeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public reboot()V
    .locals 2

    .prologue
    .line 207
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_0
    sget-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v1, "reboot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mSignaturePass:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sprint/internal/Platform;->mPermissionPass:Z

    if-nez v0, :cond_2

    .line 210
    :cond_1
    sget-object v0, Lcom/sprint/internal/Platform;->TAG:Ljava/lang/String;

    const-string v1, "Signature or Permission failed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/internal/Platform;->mRebootRequest:Z

    .line 214
    iget-object v0, p0, Lcom/sprint/internal/Platform;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
