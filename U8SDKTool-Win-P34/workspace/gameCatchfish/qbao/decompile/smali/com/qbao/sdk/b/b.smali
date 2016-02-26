.class public Lcom/qbao/sdk/b/b;
.super Ljava/lang/Exception;
.source "CommonFailError.java"


# instance fields
.field private dA:Lcom/qbao/sdk/b/e;

.field private dz:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    iput p2, p0, Lcom/qbao/sdk/b/b;->dz:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/qbao/sdk/b/e;)V
    .registers 4

    .prologue
    .line 22
    invoke-virtual {p2}, Lcom/qbao/sdk/b/e;->getResponseCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/qbao/sdk/b/b;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p2, p0, Lcom/qbao/sdk/b/b;->dA:Lcom/qbao/sdk/b/e;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/qbao/sdk/b/e;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/qbao/sdk/b/b;->dA:Lcom/qbao/sdk/b/e;

    .line 39
    return-void
.end method

.method public aw()Lcom/qbao/sdk/b/e;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/qbao/sdk/b/b;->dA:Lcom/qbao/sdk/b/e;

    return-object v0
.end method

.method public ax()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/qbao/sdk/b/b;->dz:I

    return v0
.end method
