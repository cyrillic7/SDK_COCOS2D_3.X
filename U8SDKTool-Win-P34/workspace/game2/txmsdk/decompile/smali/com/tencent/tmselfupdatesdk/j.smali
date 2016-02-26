.class Lcom/tencent/tmselfupdatesdk/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V
    .registers 2

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/16 v6, -0x14

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1121
    :try_start_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1122
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_TASK_PACKNAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_CHANNELID:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_VIA:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    if-ne v1, v5, :cond_c2

    .line 1129
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 1131
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_DOWNLOADTYPE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1132
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    const-string v3, "application/tm.android.apkdiff"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->startDownloadTask(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 1133
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apkPatch start download Result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    if-ne v5, v0, :cond_a3

    .line 1138
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->getDownloadTaskState(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    .line 1139
    if-eqz v0, :cond_a3

    .line 1141
    iget-object v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    .line 1143
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apkPatch has yet exists\uff1aurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";  patchPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v1, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;)V

    .line 1218
    :cond_a3
    :goto_a3
    return-void

    .line 1151
    :cond_a4
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x2

    const/16 v2, -0x12

    const-string v3, "SelfUpdate failure, TMAssistantDownloadSDKClient_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_ae} :catch_af

    goto :goto_a3

    .line 1212
    :catch_af
    move-exception v0

    .line 1214
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const-string v2, "SelfUpdate failure, UNKNOWN EXCEPTION!"

    invoke-virtual {v1, v4, v6, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 1215
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1216
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a3

    .line 1155
    :cond_c2
    :try_start_c2
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    if-ne v1, v4, :cond_19e

    .line 1157
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v1

    if-eqz v1, :cond_192

    .line 1159
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadConst;->PARAM_DOWNLOADTYPE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 1160
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->startDownloadTask(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 1161
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newapk start download Result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    if-ne v5, v0, :cond_a3

    .line 1166
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v1, v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->getDownloadTaskState(Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    .line 1167
    if-eqz v0, :cond_186

    .line 1169
    iget-object v0, v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mSavePath:Ljava/lang/String;

    .line 1171
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newapk has yet exists\uff1aurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; apkPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17a

    .line 1176
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genNewPkgProcess overwriteChannelid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->writeChannelIdAfterUpdate(Ljava/lang/String;)V

    .line 1180
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v2, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v3, v3, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;Ljava/lang/String;B)V

    .line 1183
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "SelfUpdate success !"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_a3

    .line 1187
    :cond_17a
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x2

    const/16 v2, -0x13

    const-string v3, "SelfUpdate failure, SelfUpdateSDKErrorCode_getSavePath_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_a3

    .line 1192
    :cond_186
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x2

    const/16 v2, -0x13

    const-string v3, "SelfUpdate failure, SelfUpdateSDKErrorCode_GetDownloadTaskState_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_a3

    .line 1198
    :cond_192
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x2

    const/16 v2, -0x12

    const-string v3, "SelfUpdate failure, TMAssistantDownloadSDKClient_IS_NULL!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_a3

    .line 1202
    :cond_19e
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v0, v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    if-ne v0, v3, :cond_1b0

    .line 1204
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x0

    const/16 v2, -0xf

    const-string v3, "SelfUpdate success, NO Update!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto/16 :goto_a3

    .line 1209
    :cond_1b0
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/j;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x2

    const/16 v2, -0x14

    const-string v3, "SelfUpdate failure, UNKNOWN EXCEPTION!"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V
    :try_end_1ba
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_1ba} :catch_af

    goto/16 :goto_a3
.end method
