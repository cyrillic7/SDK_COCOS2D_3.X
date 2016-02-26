.class final Lcom/baidu/bdgame/sdk/obf/bt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/bt;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/r;Lcom/baidu/bdgame/sdk/obf/r;)I
    .registers 8

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->g()J

    move-result-wide v0

    .line 296
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/r;->g()J

    move-result-wide v2

    .line 297
    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    .line 298
    const/4 v0, -0x1

    .line 302
    :goto_d
    return v0

    .line 299
    :cond_e
    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 300
    const/4 v0, 0x1

    goto :goto_d

    .line 302
    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 291
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/r;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/baidu/bdgame/sdk/obf/r;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bt$2;->a(Lcom/baidu/bdgame/sdk/obf/r;Lcom/baidu/bdgame/sdk/obf/r;)I

    move-result v0

    return v0
.end method
