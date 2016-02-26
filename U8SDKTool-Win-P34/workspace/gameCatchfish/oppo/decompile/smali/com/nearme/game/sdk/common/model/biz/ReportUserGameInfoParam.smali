.class public Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;
.super Ljava/lang/Object;
.source "ReportUserGameInfoParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x341a9ad0eaeef5ecL


# instance fields
.field public gameId:Ljava/lang/String;

.field public grade:Ljava/lang/String;

.field public role:Ljava/lang/String;

.field public service:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;->gameId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;->service:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;->grade:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;->role:Ljava/lang/String;

    .line 22
    return-void
.end method
