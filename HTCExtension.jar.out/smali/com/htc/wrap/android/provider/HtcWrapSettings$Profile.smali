.class public Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;
.super Lcom/htc/wrap/android/provider/HtcWrapSettings$NameValueTable;
.source "HtcWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Profile"
.end annotation


# static fields
.field private static final CALL_METHOD_GET_PROFILE:Ljava/lang/String;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static MONITOR_KEYS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYS_PROP_SETTING_VERSION:Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->TAG:Ljava/lang/String;

    .line 4139
    const-class v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->TABLE_NAME:Ljava/lang/String;

    .line 4142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys.settings_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->SYS_PROP_SETTING_VERSION:Ljava/lang/String;

    .line 4149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->CALL_METHOD_GET_PROFILE:Ljava/lang/String;

    .line 4155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 4161
    sput-object v2, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->sNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    .line 4163
    sput-object v2, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->MONITOR_KEYS:Ljava/util/HashSet;

    .line 4171
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4132
    invoke-direct {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$NameValueTable;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 4391
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    return-void
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4357
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4359
    .local v0, v:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4360
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4362
    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 4330
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4332
    .local v0, v:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4335
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move p2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4278
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4280
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4281
    :catch_0
    move-exception v0

    .line 4282
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 4250
    invoke-static {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4252
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 4254
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 4253
    .restart local p2
    :catch_0
    move-exception v0

    .line 4254
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 4186
    const-class v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->sNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    if-nez v0, :cond_0

    .line 4187
    new-instance v0, Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->SYS_PROP_SETTING_VERSION:Ljava/lang/String;

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->CALL_METHOD_GET_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/wrap/android/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->sNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    .line 4196
    :cond_0
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->sNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1}, Lcom/htc/wrap/android/provider/Settings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 4186
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 4382
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 4302
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 4218
    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, p1, p2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 4227
    .local v0, successful:Z
    return v0
.end method
