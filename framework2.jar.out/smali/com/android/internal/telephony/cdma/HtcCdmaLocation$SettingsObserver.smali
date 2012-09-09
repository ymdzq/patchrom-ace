.class Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HtcCdmaLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWhat:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaLocation;Landroid/os/Handler;I)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaLocation;

    .line 127
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 128
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 129
    iput p3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;->mWhat:I

    .line 130
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaLocation$SettingsObserver;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method
