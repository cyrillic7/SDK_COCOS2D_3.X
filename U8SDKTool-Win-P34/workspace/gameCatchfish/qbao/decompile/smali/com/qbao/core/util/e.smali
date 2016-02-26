.class public Lcom/qbao/core/util/e;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field private bX:Ljava/lang/String;

.field private bY:Ljava/lang/String;

.field private bZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qbao/core/util/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/qbao/core/util/e;->bX:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/qbao/core/util/e;->bY:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qbao/core/util/e;->bZ:Ljava/util/List;

    .line 12
    if-nez p1, :cond_15

    .line 14
    :goto_14
    return-void

    .line 13
    :cond_15
    iput-object p1, p0, Lcom/qbao/core/util/e;->bX:Ljava/lang/String;

    goto :goto_14
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/qbao/core/util/e;->bX:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/qbao/core/util/e;->bY:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qbao/core/util/e;->bZ:Ljava/util/List;

    .line 17
    if-eqz p1, :cond_16

    if-nez p2, :cond_17

    .line 20
    :cond_16
    :goto_16
    return-void

    .line 18
    :cond_17
    iput-object p1, p0, Lcom/qbao/core/util/e;->bX:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/qbao/core/util/e;->bY:Ljava/lang/String;

    goto :goto_16
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/qbao/core/util/e;->q(Ljava/lang/String;)Lcom/qbao/core/util/e;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/qbao/core/util/e;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qbao/core/util/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qbao/core/util/e;->bZ:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/qbao/core/util/e;->bX:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qbao/core/util/e;->bY:Ljava/lang/String;

    return-object v0
.end method

.method public isLeaf()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qbao/core/util/e;->bZ:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/qbao/core/util/e;->bZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public p(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 27
    if-nez p1, :cond_3

    .line 29
    :goto_2
    return-void

    .line 28
    :cond_3
    iput-object p1, p0, Lcom/qbao/core/util/e;->bX:Ljava/lang/String;

    goto :goto_2
.end method

.method public q(Ljava/lang/String;)Lcom/qbao/core/util/e;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v0, p0, Lcom/qbao/core/util/e;->bX:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37
    :goto_9
    return-object p0

    .line 33
    :cond_a
    iget-object v0, p0, Lcom/qbao/core/util/e;->bZ:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/qbao/core/util/e;->bZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    move-object p0, v1

    goto :goto_9

    .line 34
    :cond_18
    iget-object v0, p0, Lcom/qbao/core/util/e;->bZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_26

    move-object p0, v1

    .line 37
    goto :goto_9

    .line 34
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qbao/core/util/e;

    .line 35
    invoke-virtual {v0, p1}, Lcom/qbao/core/util/e;->q(Ljava/lang/String;)Lcom/qbao/core/util/e;

    move-result-object v3

    if-eqz v3, :cond_1e

    move-object p0, v0

    goto :goto_9
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/qbao/core/util/e;->q(Ljava/lang/String;)Lcom/qbao/core/util/e;

    move-result-object v0

    .line 47
    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/qbao/core/util/e;->bZ:Ljava/util/List;

    new-instance v1, Lcom/qbao/core/util/e;

    invoke-direct {v1, p1, p2}, Lcom/qbao/core/util/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_10
    return-void

    .line 48
    :cond_11
    invoke-virtual {v0, p2}, Lcom/qbao/core/util/e;->setText(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    if-nez p1, :cond_3

    .line 58
    :goto_2
    return-void

    .line 57
    :cond_3
    iput-object p1, p0, Lcom/qbao/core/util/e;->bY:Ljava/lang/String;

    goto :goto_2
.end method
