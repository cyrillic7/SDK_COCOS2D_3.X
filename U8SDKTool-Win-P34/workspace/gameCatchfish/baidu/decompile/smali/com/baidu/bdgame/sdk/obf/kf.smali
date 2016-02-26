.class public Lcom/baidu/bdgame/sdk/obf/kf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kf;->a:[B

    .line 21
    return-void
.end method

.method public a()[B
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kf;->a:[B

    return-object v0
.end method

.method public b([B)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kf;->b:[B

    .line 29
    return-void
.end method

.method public b()[B
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kf;->b:[B

    return-object v0
.end method
