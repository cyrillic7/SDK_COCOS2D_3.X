.class final Lcom/baidu/bdgame/sdk/obf/ay$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay;->c()V
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
        "Lcom/baidu/bdgame/sdk/obf/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay;)V
    .registers 2

    .prologue
    .line 476
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/r;)V
    .registers 6

    .prologue
    .line 481
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/r;->e()Z

    move-result v0

    if-nez v0, :cond_e

    .line 482
    :cond_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->r(Lcom/baidu/bdgame/sdk/obf/ay;)V

    .line 515
    :goto_d
    return-void

    .line 484
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$5;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->s(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ay$5$1;

    invoke-direct {v1, p0, p3}, Lcom/baidu/bdgame/sdk/obf/ay$5$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ay$5;Lcom/baidu/bdgame/sdk/obf/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 476
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/r;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ay$5;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/r;)V

    return-void
.end method
