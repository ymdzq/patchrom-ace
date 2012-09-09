.class final Lcom/android/server/HtcPMSExtension;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HtcPMSExtension$LogRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcPMSExtension"


# instance fields
.field private mLogRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/HtcPMSExtension$LogRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    .line 57
    return-void
.end method

.method protected static getWakeLockFlagInfo(I)Ljava/lang/String;
    .locals 3
    .parameter "flags"

    .prologue
    .line 86
    const-string v0, ""

    .line 88
    .local v0, info:Ljava/lang/String;
    const/high16 v1, 0x1000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACQUIRE_CAUSES_WAKEUP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_0
    const/high16 v1, 0x2000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ON_AFTER_RELEASE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_1
    return-object v0
.end method

.method protected static getWakeLockTypeInfo(II)Ljava/lang/String;
    .locals 2
    .parameter "flags"
    .parameter "LOCK_MASK"

    .prologue
    .line 60
    const-string v0, ""

    .line 62
    .local v0, info:Ljava/lang/String;
    and-int v1, p0, p1

    sparse-switch v1, :sswitch_data_0

    .line 82
    :goto_0
    return-object v0

    .line 64
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK"

    .line 65
    goto :goto_0

    .line 67
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK"

    .line 68
    goto :goto_0

    .line 70
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK"

    .line 71
    goto :goto_0

    .line 73
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK"

    .line 74
    goto :goto_0

    .line 76
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    .line 77
    goto :goto_0

    .line 79
    :sswitch_5
    const-string v0, "CPU_PERF_WAKE_LOCK"

    goto :goto_0

    .line 62
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method protected reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "tag"
    .parameter "logBody"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HtcPMSExtension$LogRecord;

    .line 99
    .local v0, recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/server/HtcPMSExtension$LogRecord;

    .end local v0           #recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/HtcPMSExtension$LogRecord;-><init>(Lcom/android/server/HtcPMSExtension;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .restart local v0       #recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    iget-object v1, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/HtcPMSExtension$LogRecord;->check(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
