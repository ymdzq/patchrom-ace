.class Lcom/htc/net/usbnet/UsbnetStateTracker$NetworkStateChangeResult;
.super Ljava/lang/Object;
.source "UsbnetStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/usbnet/UsbnetStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkStateChangeResult"
.end annotation


# instance fields
.field networkId:I

.field state:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method constructor <init>(Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 0
    .parameter "state"
    .parameter "networkId"

    .prologue
    .line 707
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput-object p1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    .line 709
    iput p2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker$NetworkStateChangeResult;->networkId:I

    .line 710
    return-void
.end method
