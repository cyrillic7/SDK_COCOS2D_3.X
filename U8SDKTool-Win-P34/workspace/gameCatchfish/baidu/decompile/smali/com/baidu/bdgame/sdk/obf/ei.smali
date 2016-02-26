.class public abstract Lcom/baidu/bdgame/sdk/obf/ei;
.super Lcom/baidu/bdgame/sdk/obf/ej;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ej;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method protected b()Z
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ei;->e:Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dp;->d()Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
