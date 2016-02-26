.class public Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final STATUS_CHECKUPDATE_FAILURE:I = 0x1

.field public static final STATUS_CHECKUPDATE_RESPONSE_IS_NULL:I = 0x2

.field public static final STATUS_OK:I = 0x0

.field public static final UpdateMethod_ByPatch:I = 0x2

.field public static final UpdateMethod_NoUpdate:I = 0x0

.field public static final UpdateMethod_Normal:I = 0x1


# instance fields
.field private newApkSize:J

.field private newFeature:Ljava/lang/String;

.field private overwriteChannelid:B

.field private patchSize:J

.field private status:I

.field private updateDownloadUrl:Ljava/lang/String;

.field private updateMethod:I


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Ljava/lang/String;B)V
    .registers 11

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->status:I

    .line 67
    iput p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->status:I

    .line 68
    iput p2, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateMethod:I

    .line 69
    iput-wide p3, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newApkSize:J

    .line 70
    iput-wide p5, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->patchSize:J

    .line 71
    iput-object p7, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newFeature:Ljava/lang/String;

    .line 72
    iput-object p8, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateDownloadUrl:Ljava/lang/String;

    .line 73
    iput-byte p9, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->overwriteChannelid:B

    .line 74
    return-void
.end method


# virtual methods
.method public getNewApkSize()J
    .registers 3

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newApkSize:J

    return-wide v0
.end method

.method public getNewFeature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newFeature:Ljava/lang/String;

    return-object v0
.end method

.method public getOverwriteChannelid()B
    .registers 2

    .prologue
    .line 125
    iget-byte v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->overwriteChannelid:B

    return v0
.end method

.method public getPatchSize()J
    .registers 3

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->patchSize:J

    return-wide v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->status:I

    return v0
.end method

.method public getUpdateDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateMethod()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateMethod:I

    return v0
.end method

.method public setNewApkSize(J)V
    .registers 4

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newApkSize:J

    .line 98
    return-void
.end method

.method public setNewFeature(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->newFeature:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setOverwriteChannelid(B)V
    .registers 2

    .prologue
    .line 129
    iput-byte p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->overwriteChannelid:B

    .line 130
    return-void
.end method

.method public setPatchSize(J)V
    .registers 4

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->patchSize:J

    .line 106
    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .prologue
    .line 81
    iput p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->status:I

    .line 82
    return-void
.end method

.method public setUpdateDownloadUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateDownloadUrl:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setUpdateMethod(I)V
    .registers 2

    .prologue
    .line 89
    iput p1, p0, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->updateMethod:I

    .line 90
    return-void
.end method
