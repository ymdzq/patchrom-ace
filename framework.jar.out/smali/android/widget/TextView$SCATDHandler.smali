.class Landroid/widget/TextView$SCATDHandler;
.super Landroid/os/Handler;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCATDHandler"
.end annotation


# static fields
.field static final MESSAGE_SCAN_WORD:I = 0x3

.field static final MESSAGE_SC_INIT:I = 0x1

.field static final MESSAGE_SC_RETRY:I = 0x2

.field static final MESSAGE_SC_TIMEOUT_CLOSE:I = 0x4

.field private static final SC_INIT_DELAY:I = 0x3e8

.field private static final SC_RETRY_DELAY:I = 0x1f4

.field private static final SC_RETRY_TIMES:I = 0x2

.field private static final SC_TIMEOUT_DURATION:I = 0x3a98


# instance fields
.field mRetry:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 13900
    iput-object p1, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 13912
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$SCATDHandler;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13900
    invoke-direct {p0, p1}, Landroid/widget/TextView$SCATDHandler;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 13915
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 13946
    :cond_0
    :goto_0
    return-void

    .line 13918
    :pswitch_0
    iput v2, p0, Landroid/widget/TextView$SCATDHandler;->mRetry:I

    .line 13919
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView$SCATDHandler;->postSpellCheck(Ljava/lang/String;)V

    goto :goto_0

    .line 13922
    :pswitch_1
    iget v0, p0, Landroid/widget/TextView$SCATDHandler;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$SCATDHandler;->mRetry:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 13923
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView$SCATDHandler;->postSpellCheck(Ljava/lang/String;)V

    goto :goto_0

    .line 13926
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    iget-object v1, v0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13927
    invoke-static {v2}, Landroid/widget/TextView;->access$12402(Z)Z

    .line 13928
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->SCATDProcessQueue()V

    goto :goto_0

    .line 13933
    :pswitch_2
    iget-object v1, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Landroid/widget/TextView;->SCATDRescanWord(Ljava/lang/String;)V
    invoke-static {v1, v0}, Landroid/widget/TextView;->access$12500(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 13938
    :pswitch_3
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;
    invoke-static {v0}, Landroid/widget/TextView;->access$12600(Landroid/widget/TextView;)Landroid/widget/SpellChecker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13939
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;
    invoke-static {v0}, Landroid/widget/TextView;->access$12600(Landroid/widget/TextView;)Landroid/widget/SpellChecker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 13940
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$12602(Landroid/widget/TextView;Landroid/widget/SpellChecker;)Landroid/widget/SpellChecker;

    .line 13941
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x1

    #setter for: Landroid/widget/TextView;->mIsSCTimeoutclosed:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$12702(Landroid/widget/TextView;Z)Z

    goto :goto_0

    .line 13915
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method postSpellCheck(Ljava/lang/String;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 13949
    iget-object v1, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;
    invoke-static {v1}, Landroid/widget/TextView;->access$12600(Landroid/widget/TextView;)Landroid/widget/SpellChecker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 13950
    iget-object v1, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;
    invoke-static {v1}, Landroid/widget/TextView;->access$12600(Landroid/widget/TextView;)Landroid/widget/SpellChecker;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/SpellChecker;->spellCheck(Ljava/lang/String;)V

    .line 13952
    :cond_0
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 13953
    .local v0, m:Landroid/os/Message;
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13954
    return-void
.end method
