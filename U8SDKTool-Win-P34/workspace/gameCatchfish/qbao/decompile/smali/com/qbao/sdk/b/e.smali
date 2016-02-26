.class public Lcom/qbao/sdk/b/e;
.super Ljava/lang/Object;
.source "QBDataModel.java"


# static fields
.field public static final dC:I = 0x3e8

.field public static final dD:I = 0x3e9

.field public static final dE:I = 0x3ea

.field public static final dF:I = 0x3eb

.field public static final dG:I = 0x3ec

.field public static final dH:I = 0x3ed


# instance fields
.field private dI:Ljava/lang/String;

.field private errorCode:I

.field private responseCode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/qbao/sdk/b/e;->responseCode:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qbao/sdk/b/e;->dI:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/qbao/sdk/b/e;->errorCode:I

    .line 24
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/qbao/sdk/b/e;->responseCode:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qbao/sdk/b/e;->dI:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/qbao/sdk/b/e;->errorCode:I

    .line 28
    iput p1, p0, Lcom/qbao/sdk/b/e;->responseCode:I

    .line 29
    iput p2, p0, Lcom/qbao/sdk/b/e;->errorCode:I

    .line 30
    iput-object p3, p0, Lcom/qbao/sdk/b/e;->dI:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public az()Z
    .registers 3

    .prologue
    .line 82
    iget v0, p0, Lcom/qbao/sdk/b/e;->responseCode:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getErrorCode()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/qbao/sdk/b/e;->errorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qbao/sdk/b/e;->dI:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/qbao/sdk/b/e;->responseCode:I

    return v0
.end method

.method public m(I)V
    .registers 2

    .prologue
    .line 68
    iput p1, p0, Lcom/qbao/sdk/b/e;->errorCode:I

    .line 69
    return-void
.end method

.method public n(I)V
    .registers 2

    .prologue
    .line 78
    iput p1, p0, Lcom/qbao/sdk/b/e;->responseCode:I

    .line 79
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/qbao/sdk/b/e;->dI:Ljava/lang/String;

    .line 58
    return-void
.end method
