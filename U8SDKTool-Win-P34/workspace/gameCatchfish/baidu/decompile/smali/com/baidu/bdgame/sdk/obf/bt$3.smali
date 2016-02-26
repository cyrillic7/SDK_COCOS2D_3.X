.class final Lcom/baidu/bdgame/sdk/obf/bt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bt;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/bt;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/bt;)V
    .registers 2

    .prologue
    .line 379
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bt$3;->a:Lcom/baidu/bdgame/sdk/obf/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/r;Lcom/baidu/bdgame/sdk/obf/r;)I
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 385
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->d()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/r;->d()Z

    move-result v2

    if-nez v2, :cond_f

    .line 397
    :cond_e
    :goto_e
    return v0

    .line 387
    :cond_f
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->d()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/r;->d()Z

    move-result v2

    if-eqz v2, :cond_1d

    move v0, v1

    .line 388
    goto :goto_e

    .line 390
    :cond_1d
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->g()J

    move-result-wide v2

    .line 391
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/r;->g()J

    move-result-wide v4

    .line 392
    cmp-long v6, v2, v4

    if-gtz v6, :cond_e

    .line 394
    cmp-long v0, v2, v4

    if-gez v0, :cond_2f

    move v0, v1

    .line 395
    goto :goto_e

    .line 397
    :cond_2f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 379
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/r;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/baidu/bdgame/sdk/obf/r;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bt$3;->a(Lcom/baidu/bdgame/sdk/obf/r;Lcom/baidu/bdgame/sdk/obf/r;)I

    move-result v0

    return v0
.end method
