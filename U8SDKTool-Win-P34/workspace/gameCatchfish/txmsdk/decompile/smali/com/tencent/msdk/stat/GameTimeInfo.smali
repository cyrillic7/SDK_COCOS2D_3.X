.class public Lcom/tencent/msdk/stat/GameTimeInfo;
.super Ljava/lang/Object;
.source "GameTimeInfo.java"


# instance fields
.field appid:Ljava/lang/String;

.field devid:Ljava/lang/String;

.field eventType:Ljava/lang/String;

.field localGameTime:Ljava/lang/String;

.field localTime:Ljava/lang/String;

.field openid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->eventType:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->devid:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->localTime:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->localGameTime:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->appid:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->openid:Ljava/lang/String;

    return-void
.end method
