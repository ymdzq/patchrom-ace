.class Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;
.super Ljava/lang/Object;
.source "ComposerBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForComposerAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mFilter:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/htc/music/NpCategory;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    const-class v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "pickermode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-virtual {v3, v0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-virtual {v3, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
