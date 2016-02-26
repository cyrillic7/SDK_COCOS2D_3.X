.class final Lcom/baidu/bdgame/sdk/obf/cw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cw;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/hv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cw;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cw;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cw$2;->a:Lcom/baidu/bdgame/sdk/obf/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hv;)V
    .registers 6

    .prologue
    .line 69
    if-nez p1, :cond_16

    if-eqz p3, :cond_16

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw$2;->a:Lcom/baidu/bdgame/sdk/obf/cw;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/hv;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cw;->b(Lcom/baidu/bdgame/sdk/obf/cw;Ljava/util/List;)V

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw$2;->a:Lcom/baidu/bdgame/sdk/obf/cw;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/hv;->c()Lcom/baidu/bdgame/sdk/obf/iy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cw;->a(Lcom/baidu/bdgame/sdk/obf/cw;Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 73
    :cond_16
    return-void
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 64
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/hv;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cw$2;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hv;)V

    return-void
.end method
