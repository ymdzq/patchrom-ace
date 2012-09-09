.class Lcom/android/server/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 825
    monitor-enter p0

    .line 830
    :try_start_0
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v9

    .line 831
    .local v9, allowWifi:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 832
    .local v0, allowBT:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v4

    .line 833
    .local v4, allowInterSharing:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;)I

    move-result v1

    .line 834
    .local v1, allowBrowser:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v7

    .line 835
    .local v7, allowTextMessage:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v6

    .line 837
    .local v6, allowStorageCard:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;)I

    move-result v2

    .line 838
    .local v2, allowGPS:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;)I

    move-result v8

    .line 839
    .local v8, allowVzwLBS:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I

    move-result v3

    .line 842
    .local v3, allowGoogleLBS:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;)I

    move-result v5

    .line 845
    .local v5, allowLTE:I
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v11, v11, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/16 v12, 0x9

    invoke-virtual {v11, v12}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    .line 847
    .local v10, doProxyCleanup:Z
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v11, v11, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 848
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v11, v11, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v11}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked()V

    .line 850
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v11}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked()V

    .line 851
    if-eqz v10, :cond_0

    .line 852
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxy()V
    invoke-static {v11}, Lcom/android/server/DevicePolicyManagerService;->access$200(Lcom/android/server/DevicePolicyManagerService;)V

    .line 854
    :cond_0
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    invoke-static {v11}, Lcom/android/server/DevicePolicyManagerService;->access$100(Lcom/android/server/DevicePolicyManagerService;)V

    .line 857
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v9, v11, :cond_1

    .line 858
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_WIFI_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 860
    :cond_1
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v0, v11, :cond_2

    .line 861
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_BT_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 863
    :cond_2
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v4, v11, :cond_3

    .line 864
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_INTERNET_SHARING_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowInternetSharingStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 866
    :cond_3
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v1, v11, :cond_4

    .line 867
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_BROWSER_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowBrowserStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 869
    :cond_4
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v7, v11, :cond_5

    .line 870
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_TEXT_MESSAGING_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowTextMessagingStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 872
    :cond_5
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v6, v11, :cond_6

    .line 873
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_STORAGE_CARD_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowStorageCardStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 876
    :cond_6
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v2, v11, :cond_7

    .line 877
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_GPS_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGPSStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 879
    :cond_7
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v8, v11, :cond_8

    .line 880
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_VZW_LBS_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowVzwLBSStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 882
    :cond_8
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v3, v11, :cond_9

    .line 883
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_GOOGLE_LBS_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 887
    :cond_9
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;)I

    move-result v11

    if-eq v5, v11, :cond_a

    .line 888
    iget-object v11, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const-string v12, "android.app.admin.intent.ALLOW_LTE_CHANGE"

    iget-object v13, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/DevicePolicyManagerService;->getAllowLTEStatus(Landroid/content/ComponentName;)I

    move-result v13

    #calls: Lcom/android/server/DevicePolicyManagerService;->broadcaseAllowStatusChange(Ljava/lang/String;I)V
    invoke-static {v11, v12, v13}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 892
    :cond_a
    monitor-exit p0

    .line 893
    return-void

    .line 892
    .end local v0           #allowBT:I
    .end local v1           #allowBrowser:I
    .end local v2           #allowGPS:I
    .end local v3           #allowGoogleLBS:I
    .end local v4           #allowInterSharing:I
    .end local v5           #allowLTE:I
    .end local v6           #allowStorageCard:I
    .end local v7           #allowTextMessage:I
    .end local v8           #allowVzwLBS:I
    .end local v9           #allowWifi:I
    .end local v10           #doProxyCleanup:Z
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method
