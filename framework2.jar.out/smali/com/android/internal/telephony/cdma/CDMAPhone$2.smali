.class Lcom/android/internal/telephony/cdma/CDMAPhone$2;
.super Landroid/os/Handler;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CDMAPhone;->htcThreadUpdateCarrierInProvider(Ljava/lang/String;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 3638
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 3641
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 3660
    :goto_0
    return-void

    .line 3644
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, [Ljava/lang/Object;

    .line 3645
    .local v3, params:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    .line 3646
    .local v4, setupOperatorNum:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v3, v5

    check-cast v5, Landroid/os/Message;

    move-object v0, v5

    check-cast v0, Landroid/os/Message;

    .line 3647
    .local v0, completeMsg:Landroid/os/Message;
    const/4 v5, 0x2

    aget-object v5, v3, v5

    check-cast v5, Landroid/os/HandlerThread;

    move-object v2, v5

    check-cast v2, Landroid/os/HandlerThread;

    .line 3649
    .local v2, mccUpdateThread:Landroid/os/HandlerThread;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    move-result v1

    .line 3650
    .local v1, completionStatus:Z
    if-eqz v0, :cond_0

    .line 3651
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3652
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3654
    :cond_0
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update operator "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " complete - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 3641
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
