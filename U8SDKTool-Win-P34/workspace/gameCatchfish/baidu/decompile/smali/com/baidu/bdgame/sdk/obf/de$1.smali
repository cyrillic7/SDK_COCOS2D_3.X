.class final Lcom/baidu/bdgame/sdk/obf/de$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/de;->a()V
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
        "Lcom/baidu/bdgame/sdk/obf/dq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/de;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/de;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/de$1;->a:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/dq;)V
    .registers 7

    .prologue
    .line 54
    if-nez p1, :cond_8

    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de$1;->a:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/de;->a(Lcom/baidu/bdgame/sdk/obf/de;Lcom/baidu/bdgame/sdk/obf/dq;)V

    .line 65
    :goto_7
    return-void

    .line 57
    :cond_8
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de$1;->a:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/de;->a(Lcom/baidu/bdgame/sdk/obf/de;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->g(Ljava/lang/String;)V

    goto :goto_7

    .line 60
    :cond_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de$1;->a:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/de;->a(Lcom/baidu/bdgame/sdk/obf/de;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/de$1;->a:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/de;->a(Lcom/baidu/bdgame/sdk/obf/de;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_tips_paychannel_get_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->g(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 49
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/dq;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/de$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/dq;)V

    return-void
.end method
