.class Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;
.super Landroid/os/Handler;
.source "UsbnetStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/usbnet/UsbnetStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHandler"
.end annotation


# instance fields
.field private mCancelCallback:Z

.field private mTarget:Landroid/os/Handler;

.field final synthetic this$0:Lcom/htc/net/usbnet/UsbnetStateTracker;


# direct methods
.method public constructor <init>(Lcom/htc/net/usbnet/UsbnetStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 731
    iput-object p1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;->this$0:Lcom/htc/net/usbnet/UsbnetStateTracker;

    .line 732
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 733
    iput-object p3, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    .line 734
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 737
    const/4 v0, 0x0

    .line 739
    .local v0, event:I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 768
    :goto_0
    return-void

    .line 741
    :pswitch_0
    monitor-enter p0

    .line 743
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 744
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 745
    const-string v1, "UsbnetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbnetStateTracker.DhcpHandler: usbnet DHCP request started, mInterfaceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;->this$0:Lcom/htc/net/usbnet/UsbnetStateTracker;

    #getter for: Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/net/usbnet/UsbnetStateTracker;->access$000(Lcom/htc/net/usbnet/UsbnetStateTracker;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-static {}, Lcom/htc/net/usbnet/UsbnetNative;->StartDhcpUsbnet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;->this$0:Lcom/htc/net/usbnet/UsbnetStateTracker;

    #getter for: Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v1}, Lcom/htc/net/usbnet/UsbnetStateTracker;->access$100(Lcom/htc/net/usbnet/UsbnetStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/net/usbnet/UsbnetNative;->DoUsbnetDhcpRequest(Landroid/net/DhcpInfo;)Z

    .line 750
    const/16 v0, 0xa

    .line 753
    const-string v1, "UsbnetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbNet IpAddr = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;->this$0:Lcom/htc/net/usbnet/UsbnetStateTracker;

    #getter for: Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v3}, Lcom/htc/net/usbnet/UsbnetStateTracker;->access$100(Lcom/htc/net/usbnet/UsbnetStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v3

    iget v3, v3, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v1, "UsbnetStateTracker"

    const-string v2, "UsbnetStateTracker.DhcpHandler: usbnet DHCP request succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :goto_1
    monitor-enter p0

    .line 762
    :try_start_1
    iget-boolean v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 765
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 744
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 757
    :cond_1
    const/16 v0, 0xb

    .line 758
    const-string v1, "UsbnetStateTracker"

    const-string v2, "UsbnetStateTracker.DhcpHandler: usbnet DHCP request failed: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 739
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .locals 1
    .parameter "cancelCallback"

    .prologue
    .line 771
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;->mCancelCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    monitor-exit p0

    return-void

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
