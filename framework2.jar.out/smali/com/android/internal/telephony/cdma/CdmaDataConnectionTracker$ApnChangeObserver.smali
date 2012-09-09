.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "CdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    .line 143
    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 144
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const v2, 0x42013

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method
