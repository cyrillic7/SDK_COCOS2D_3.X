.class Lcom/tencent/tmselfupdatesdk/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;


# instance fields
.field final synthetic a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V
    .registers 2

    .prologue
    .line 987
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckUpdateFailed(Ljava/lang/String;)V
    .registers 13

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 990
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arg0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    sget-boolean v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    if-eqz v0, :cond_4e

    .line 996
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/4 v1, 0x2

    const/16 v2, -0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckUpdateFailed; message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_4b

    :goto_38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 1005
    :goto_43
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    return-void

    .line 996
    :cond_4b
    const-string p1, ""

    goto :goto_38

    .line 1001
    :cond_4e
    new-instance v1, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;

    const/4 v2, 0x1

    const-string v8, ""

    const-string v9, ""

    move-wide v6, v4

    move v10, v3

    invoke-direct/range {v1 .. v10}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;B)V

    .line 1003
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    goto :goto_43
.end method

.method public onCheckUpdateSucceed(Ljava/util/ArrayList;)V
    .registers 14

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1010
    const-string v1, "TMSelfUpdateManager"

    const-string v7, "enter"

    invoke-static {v1, v7}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    if-eqz p1, :cond_f9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f9

    .line 1015
    const-string v1, "TMSelfUpdateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCheckUpdateSucceed apkUpdateDetailList size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;

    .line 1019
    sget-boolean v7, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    if-eqz v7, :cond_bd

    .line 1021
    if-eqz v1, :cond_b3

    .line 1023
    const-string v3, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selfUpdateDetail:pakgname="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_ad

    iget-object v2, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->packageName:Ljava/lang/String;

    :goto_4f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; versioncode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->versioncode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; updatemethod="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->url:Ljava/lang/String;

    if-eqz v2, :cond_b0

    iget-object v2, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->url:Ljava/lang/String;

    :goto_77
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; overwriteChannelid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->overwriteChannelid:B

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v3, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    iput v3, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    .line 1027
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v3, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->url:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    .line 1028
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v1, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->overwriteChannelid:B

    iput-byte v1, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    .line 1031
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    .line 1089
    :goto_a5
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    return-void

    .line 1023
    :cond_ad
    const-string v2, ""

    goto :goto_4f

    :cond_b0
    const-string v2, ""

    goto :goto_77

    .line 1035
    :cond_b3
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v3, -0xd

    const-string v4, "onCheckUpdateSucceed,but apkUpdateDetailList is null!"

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto :goto_a5

    .line 1041
    :cond_bd
    if-eqz v1, :cond_e8

    .line 1045
    iget v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    if-ne v4, v6, :cond_db

    move v4, v3

    .line 1060
    :goto_c4
    new-instance v2, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;

    iget v5, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->newapksize:I

    int-to-long v5, v5

    iget v7, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->patchsize:I

    int-to-long v7, v7

    iget-object v9, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->newFeature:Ljava/lang/String;

    iget-object v10, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->url:Ljava/lang/String;

    iget-byte v11, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->overwriteChannelid:B

    invoke-direct/range {v2 .. v11}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;B)V

    .line 1063
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    goto :goto_a5

    .line 1050
    :cond_db
    iget v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    if-ne v4, v2, :cond_e1

    move v4, v6

    .line 1052
    goto :goto_c4

    .line 1055
    :cond_e1
    iget v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_120

    move v4, v2

    .line 1057
    goto :goto_c4

    .line 1067
    :cond_e8
    new-instance v1, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;

    const-string v8, ""

    const-string v9, ""

    move-wide v6, v4

    move v10, v3

    invoke-direct/range {v1 .. v10}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;B)V

    .line 1069
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v2, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    goto :goto_a5

    .line 1076
    :cond_f9
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "apkUpdateDetailList == null || apkUpdateDetailList.size() <=0"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    sget-boolean v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    if-eqz v1, :cond_10e

    .line 1079
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v2, -0xf

    const-string v4, "SelfUpdate success, NO Update!"

    invoke-virtual {v1, v3, v2, v4}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto :goto_a5

    .line 1084
    :cond_10e
    new-instance v1, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;

    const-string v8, ""

    const-string v9, ""

    move v2, v3

    move-wide v6, v4

    move v10, v3

    invoke-direct/range {v1 .. v10}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;B)V

    .line 1086
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/h;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v2, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    goto :goto_a5

    :cond_120
    move v4, v3

    goto :goto_c4
.end method
