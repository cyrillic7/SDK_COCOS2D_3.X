.class final Lcom/baidu/bdgame/sdk/obf/kb$3;
.super Lcom/baidu/bdgame/sdk/obf/kb$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/kb;->a(Lcom/baidu/bdgame/sdk/obf/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/kb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/kb;)V
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kb$3;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kb$a;-><init>(Lcom/baidu/bdgame/sdk/obf/kb;)V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 221
    if-nez p1, :cond_9

    .line 222
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$3;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 237
    :goto_8
    return-void

    .line 223
    :cond_9
    const v0, 0x8d04

    if-ne p1, v0, :cond_23

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/ag;

    if-eqz v0, :cond_23

    .line 225
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mr;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb$3;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/kb;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v0, v1, p3}, Lcom/baidu/bdgame/sdk/obf/mr;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/ag;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->a()V

    goto :goto_8

    .line 229
    :cond_23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$3;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Lcom/baidu/bdgame/sdk/obf/kb;)V

    .line 231
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 232
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$3;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb$3;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    goto :goto_8

    .line 234
    :cond_44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$3;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8
.end method
