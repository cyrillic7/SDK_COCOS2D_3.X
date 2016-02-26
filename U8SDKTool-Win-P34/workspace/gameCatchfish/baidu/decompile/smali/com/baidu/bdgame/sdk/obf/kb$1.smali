.class final Lcom/baidu/bdgame/sdk/obf/kb$1;
.super Lcom/baidu/bdgame/sdk/obf/kb$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/kb;->g()V
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
    .line 159
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kb$1;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kb$a;-><init>(Lcom/baidu/bdgame/sdk/obf/kb;)V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 163
    if-nez p1, :cond_9

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$1;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    :goto_8
    return-void

    .line 166
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$1;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Lcom/baidu/bdgame/sdk/obf/kb;)V

    .line 169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$1;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb$1;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_sso_login_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    goto :goto_8

    .line 172
    :cond_2a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$1;->a:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8
.end method
