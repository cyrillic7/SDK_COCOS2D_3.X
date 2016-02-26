.class public Lcom/nearme/game/sdk/common/model/biz/ReportParam;
.super Ljava/lang/Object;
.source "ReportParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EVENT_PAY:Ljava/lang/String; = "pay"

.field public static final EVENT_PAY_RESULT:Ljava/lang/String; = "pay_result"

.field private static final serialVersionUID:J = -0x1bdf3ea3080f00b8L


# instance fields
.field public event:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e9

    const-string v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/nearme/game/sdk/common/model/biz/ReportParam;->event:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/nearme/game/sdk/common/model/biz/ReportParam;->id:Ljava/lang/String;

    .line 26
    iput p3, p0, Lcom/nearme/game/sdk/common/model/biz/ReportParam;->statusCode:I

    .line 27
    iput-object p4, p0, Lcom/nearme/game/sdk/common/model/biz/ReportParam;->message:Ljava/lang/String;

    .line 28
    return-void
.end method
