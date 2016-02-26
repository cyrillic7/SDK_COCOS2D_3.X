.class final Lcom/baidu/bdgame/sdk/obf/fa$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fa;->k()V
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
        "Lcom/baidu/bdgame/sdk/obf/hn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fa;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fa;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fa$1;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hn;)V
    .registers 7

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa$1;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fa;->a(Lcom/baidu/bdgame/sdk/obf/fa;)Lcom/baidu/bdgame/sdk/obf/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fc;->O()V

    .line 73
    if-nez p1, :cond_16

    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa$1;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/fa;->a(Lcom/baidu/bdgame/sdk/obf/fa;Lcom/baidu/bdgame/sdk/obf/hn;)Lcom/baidu/bdgame/sdk/obf/hn;

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa$1;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fa;->b(Lcom/baidu/bdgame/sdk/obf/fa;)V

    .line 90
    :goto_15
    return-void

    .line 77
    :cond_16
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 79
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa$1;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa$1;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fa;->c(Lcom/baidu/bdgame/sdk/obf/fa;)Lcom/baidu/bdgame/sdk/obf/hn;

    move-result-object v0

    if-nez v0, :cond_2d

    const-string v0, ""

    :goto_29
    invoke-virtual {v1, v2, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fa;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa$1;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fa;->c(Lcom/baidu/bdgame/sdk/obf/fa;)Lcom/baidu/bdgame/sdk/obf/hn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hn;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 86
    :cond_38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa$1;->a:Lcom/baidu/bdgame/sdk/obf/fa;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fa;->a(Lcom/baidu/bdgame/sdk/obf/fa;)Lcom/baidu/bdgame/sdk/obf/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fc;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_15
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 67
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/hn;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fa$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hn;)V

    return-void
.end method
