.class final Lcom/baidu/bdgame/sdk/obf/ay$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay$11;->a(Lcom/baidu/sapi2/result/FastRegResult;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay$11;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay$11;)V
    .registers 2

    .prologue
    .line 744
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$11$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 748
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$11$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$11;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 749
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$11$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$11;

    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    if-nez p1, :cond_39

    const/4 v0, 0x1

    :goto_12
    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ay;->b(Lcom/baidu/bdgame/sdk/obf/ay;Z)V

    .line 750
    if-eqz p1, :cond_38

    .line 751
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$11$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$11;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$11$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$11;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ay$11;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_fail_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    .line 753
    :cond_38
    return-void

    .line 749
    :cond_39
    const/4 v0, 0x0

    goto :goto_12
.end method
