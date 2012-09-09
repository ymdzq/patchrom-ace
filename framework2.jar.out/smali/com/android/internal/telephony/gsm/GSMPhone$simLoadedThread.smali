.class Lcom/android/internal/telephony/gsm/GSMPhone$simLoadedThread;
.super Ljava/lang/Thread;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "simLoadedThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 3993
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$simLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/GSMPhone$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3993
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone$simLoadedThread;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3995
    const-string v0, "GSM"

    const-string v1, "GSM: simLoadedThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$simLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #calls: Lcom/android/internal/telephony/gsm/GSMPhone;->handleIdenticalNumericCase()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$300(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 3999
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$simLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 4014
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$simLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #getter for: Lcom/android/internal/telephony/gsm/GSMPhone;->readSpecialDialNumber:Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$400(Lcom/android/internal/telephony/gsm/GSMPhone;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4015
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$simLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/GSMPhone;->readSpecialDialNumber:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$402(Lcom/android/internal/telephony/gsm/GSMPhone;Z)Z

    .line 4016
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$simLoadedThread;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->initSpecificDialNumbers()V

    .line 4019
    :cond_0
    const-string v0, "GSM"

    const-string v1, "GSM: simLoadedThread end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    return-void
.end method
