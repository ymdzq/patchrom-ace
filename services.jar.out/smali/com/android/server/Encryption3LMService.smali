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
.field static final TAG:Ljava/lang/String; = "Encryption3LMService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mWrongSettings:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/os/IEncryption3LM$Stub;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Encryption3LMService;->mKeyStore:Landroid/security/KeyStore;

    .line 65
    invoke-static {}, Lcom/android/server/pm/Installer;->getInstance()Lcom/android/server/pm/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Encryption3LMService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 66
    invoke-direct {p0}, Lcom/android/server/Encryption3LMService;->encryptedAppsDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/Encryption3LMService$BootCompletedReceiver;-><init>(Lcom/android/server/Encryption3LMService;Lcom/android/server/Encryption3LMService$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/Encryption3LMService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/Encryption3LMService;->mWrongSettings:Z

    return v0
.end method

.method private encryptedAppsDetected()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    iget-object v6, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_encryption"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v4

    .line 83
    :cond_1
    iget-object v6, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 84
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x2000

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 86
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

    .line 87
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v6, p0, Lcom/android/server/Encryption3LMService;->mKeyStore:Landroid/security/KeyStore;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 88
    goto :goto_0

    .line 92
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/Encryption3LMService;->internalStorageEncrypted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 93
    const-string v4, "Encryption3LMService"

    const-string v6, "[encryptedAppsDetected] wrong DATA_ENCRYPTION settings"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-boolean v5, p0, Lcom/android/server/Encryption3LMService;->mWrongSettings:Z

    move v4, v5

    .line 95
    goto :goto_0
.end method

.method private internalStorageEncrypted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    const-string v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, strState:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 131
    :cond_1
    const-string v2, "encrypted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public convertToPlaintext(Ljava/lang/String;I)Z
    .locals 3
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/server/Encryption3LMService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 110
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 113
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/server/Encryption3LMService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Installer;->decrypt(Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/android/server/Encryption3LMService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2, p2}, Lcom/android/server/pm/Installer;->unEncryptData(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 114
    :catch_0
    move-exception v1

    goto :goto_0
.end method
