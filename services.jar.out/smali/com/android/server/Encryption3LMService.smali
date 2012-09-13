.class public final Lcom/android/server/Encryption3LMService;
.super Landroid/os/IEncryption3LM$Stub;
.source "Encryption3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Encryption3LMService$1;,
        Lcom/android/server/Encryption3LMService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field static final ACORE_PROCESS_NAME:Ljava/lang/String; = "android.process.acore"

.field static final TAG:Ljava/lang/String; = "Encryption3LMService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/IEncryption3LM$Stub;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Encryption3LMService;->mKeyStore:Landroid/security/KeyStore;

    .line 60
    invoke-static {}, Lcom/android/server/pm/Installer;->getInstance()Lcom/android/server/pm/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Encryption3LMService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 61
    invoke-direct {p0}, Lcom/android/server/Encryption3LMService;->encryptedAppsDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;-><init>(Lcom/android/server/Encryption3LMService;Lcom/android/server/Encryption3LMService$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    :cond_0
    return-void
.end method

.method private encryptedAppsDetected()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    iget-object v6, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_encryption"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v4

    .line 78
    :cond_1
    iget-object v6, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 79
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x2000

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 82
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v6, p0, Lcom/android/server/Encryption3LMService;->mKeyStore:Landroid/security/KeyStore;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 83
    goto :goto_0

    .line 87
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/Encryption3LMService;->internalStorageEncrypted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 88
    const-string v4, "Encryption3LMService"

    const-string v6, "[encryptedAppsDetected] wrong DATA_ENCRYPTION settings"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 89
    goto :goto_0
.end method

.method private internalStorageEncrypted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 153
    const-string v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, strState:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 157
    :cond_1
    const-string v2, "encrypted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 158
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isProcessRunning(Ljava/lang/String;I)Z
    .locals 7
    .parameter "appName"
    .parameter "pid"

    .prologue
    const/4 v4, 0x0

    .line 166
    iget-object v5, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 167
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 168
    .local v3, runningApp:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v3, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v4

    .line 169
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 170
    .local v2, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_2

    .line 171
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public convertToPlaintext(Ljava/lang/String;I)Z
    .locals 10
    .parameter "packageName"
    .parameter "uid"

    .prologue
    const/4 v9, -0x1

    .line 103
    iget-object v7, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 105
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v4, -0x1

    .line 106
    .local v4, pidAcore:I
    const/4 v6, -0x1

    .line 107
    .local v6, uidAcore:I
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 108
    .local v5, runningApp:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_1

    .line 109
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 110
    .local v3, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v8, "android.process.acore"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 111
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 112
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 118
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 122
    const-wide/16 v7, 0x3e8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    if-eq v9, v4, :cond_2

    if-eq v9, v6, :cond_2

    if-ne p2, v6, :cond_2

    .line 128
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 129
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v7, 0x64

    if-ge v1, v7, :cond_2

    .line 130
    const-string v7, "android.process.acore"

    invoke-direct {p0, v7, v4}, Lcom/android/server/Encryption3LMService;->isProcessRunning(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 142
    .end local v1           #i:I
    :cond_2
    iget-object v7, p0, Lcom/android/server/Encryption3LMService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/Installer;->decrypt(Ljava/lang/String;)I

    .line 143
    iget-object v7, p0, Lcom/android/server/Encryption3LMService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v7, p1, p2, p2}, Lcom/android/server/pm/Installer;->unEncryptData(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    return v7

    .line 134
    .restart local v1       #i:I
    :cond_3
    const-wide/16 v7, 0xa

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    .end local v1           #i:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 123
    :catch_0
    move-exception v7

    goto :goto_0

    .line 135
    .restart local v1       #i:I
    :catch_1
    move-exception v7

    goto :goto_3
.end method
