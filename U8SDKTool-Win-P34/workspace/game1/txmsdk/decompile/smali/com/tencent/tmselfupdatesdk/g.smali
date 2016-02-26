.class Lcom/tencent/tmselfupdatesdk/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/tmselfupdatesdk/f;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/f;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 887
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iput-object p2, p0, Lcom/tencent/tmselfupdatesdk/g;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/tmselfupdatesdk/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/16 v6, -0x14

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 892
    :try_start_4
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    if-eqz v0, :cond_11f

    .line 894
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->getDownloadTaskState(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    .line 895
    if-eqz v0, :cond_111

    .line 897
    iget-object v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    .line 899
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mClientSDKListener,url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/tmselfupdatesdk/g;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; patchPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_103

    .line 903
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_69

    .line 905
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v1, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;)V

    .line 952
    :goto_68
    return-void

    .line 908
    :cond_69
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    if-ne v1, v4, :cond_df

    .line 911
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnDownloadSDKTaskStateChanged download finished overwriteChannelid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v3, v3, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->writeChannelIdAfterUpdate(Ljava/lang/String;)V

    .line 915
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v3, v3, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;Ljava/lang/String;B)V

    .line 918
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "SelfUpdate success !"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b4} :catch_b5

    goto :goto_68

    .line 946
    :catch_b5
    move-exception v0

    .line 948
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mClientSDKListener,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v6, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 949
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 950
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    .line 921
    :cond_df
    :try_start_df
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v0, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    if-ne v0, v5, :cond_f5

    .line 923
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x0

    const/16 v2, -0xf

    const-string v3, "SelfUpdate success, NO Update!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_68

    .line 928
    :cond_f5
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x2

    const/16 v2, -0x14

    const-string v3, "OnDownloadSDKTaskStateChanged,OnDownloadSDKTaskStateChanged,unknown exception!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_68

    .line 933
    :cond_103
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x2

    const/16 v2, -0x13

    const-string v3, "SelfUpdate failure,OnDownloadSDKTaskStateChanged SelfUpdateSDKErrorCode_getSavePath_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_68

    .line 938
    :cond_111
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x2

    const/16 v2, -0x13

    const-string v3, "SelfUpdate failure,OnDownloadSDKTaskStateChanged SelfUpdateSDKErrorCode_GetDownloadTaskState_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_68

    .line 943
    :cond_11f
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/g;->c:Lcom/tencent/tmselfupdatesdk/f;

    iget-object v0, v0, Lcom/tencent/tmselfupdatesdk/f;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x2

    const/16 v2, -0x12

    const-string v3, "SelfUpdate failure, TMAssistantDownloadSDKClient_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_12b} :catch_b5

    goto/16 :goto_68
.end method
