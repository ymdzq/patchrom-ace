.class Lcom/android/internal/telephony/HtcSequentialRadioPower$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcSequentialRadioPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/HtcSequentialRadioPower;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcSequentialRadioPower;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 421
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.internal.telephony.seq-radio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I
    invoke-static {v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$200(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I

    move-result v3

    const-string v4, "seqNo"

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I
    invoke-static {v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$200(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 423
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$208(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I

    .line 424
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->sendEmptyMessage(I)Z

    .line 425
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #calls: Lcom/android/internal/telephony/HtcSequentialRadioPower;->commandTimer(Ljava/lang/Integer;)V
    invoke-static {v3, v8}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$300(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Integer;)V

    .line 426
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeqRdo-Command timeout alarm - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I
    invoke-static {v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$200(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 430
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #setter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mLast_PartialControl_Radio:Ljava/lang/Boolean;
    invoke-static {v3, v8}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$402(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 433
    .local v0, airplaneMode:I
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeqRdo-Quick power on - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I
    invoke-static {v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$200(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Z
    invoke-static {v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$500(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, blockingCommands:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$600(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 438
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$700(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/util/LinkedList;

    move-result-object v1

    .line 439
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    #setter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandQueue:Ljava/util/LinkedList;
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$702(Lcom/android/internal/telephony/HtcSequentialRadioPower;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 440
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Z
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$502(Lcom/android/internal/telephony/HtcSequentialRadioPower;Z)Z

    .line 441
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 443
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;

    .line 444
    .local v2, cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    if-eqz v2, :cond_2

    .line 445
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    iget-boolean v4, v2, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->radioOn:Z

    iget-object v5, v2, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->simOn:Ljava/lang/Boolean;

    iget-object v6, v2, Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;->response:Landroid/os/Message;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    goto :goto_1

    .line 441
    .end local v2           #cmd:Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 448
    :cond_3
    if-eqz v0, :cond_0

    .line 449
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v7, v4, v8}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 452
    .end local v0           #airplaneMode:I
    .end local v1           #blockingCommands:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/HtcSequentialRadioPower$CommandInQueue;>;"
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeqRdo-Quick power off - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mProcessingIndex:I
    invoke-static {v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$200(Lcom/android/internal/telephony/HtcSequentialRadioPower;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Z
    invoke-static {v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$500(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v7, v4, v8}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->controlRadioPower(ZLjava/lang/Boolean;Landroid/os/Message;)V

    .line 456
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    #getter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mStateMonitor:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$600(Lcom/android/internal/telephony/HtcSequentialRadioPower;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 457
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/HtcSequentialRadioPower$1;->this$0:Lcom/android/internal/telephony/HtcSequentialRadioPower;

    const/4 v5, 0x1

    #setter for: Lcom/android/internal/telephony/HtcSequentialRadioPower;->mBlockingCommandUntilQuickbootOn:Z
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcSequentialRadioPower;->access$502(Lcom/android/internal/telephony/HtcSequentialRadioPower;Z)Z

    .line 458
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method
