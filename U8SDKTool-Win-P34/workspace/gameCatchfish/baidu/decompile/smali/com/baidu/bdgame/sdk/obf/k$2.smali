.class final Lcom/baidu/bdgame/sdk/obf/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/k;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
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
        "Lcom/baidu/bdgame/sdk/obf/gx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/n;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/k;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/k;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 3

    .prologue
    .line 623
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/k$2;->b:Lcom/baidu/bdgame/sdk/obf/k;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/k$2;->a:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/gx;)V
    .registers 8

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    if-eqz p3, :cond_17

    .line 630
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/gx;->a()Lcom/baidu/bdgame/sdk/obf/iw;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iw;->f()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iw;->e()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 633
    :cond_17
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/k$2;->a:Lcom/baidu/bdgame/sdk/obf/n;

    if-eqz v1, :cond_20

    .line 634
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/k$2;->a:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-interface {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 636
    :cond_20
    return-void
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 623
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/gx;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/k$2;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/gx;)V

    return-void
.end method
