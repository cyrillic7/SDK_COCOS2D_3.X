.class final Lcom/baidu/bdgame/sdk/obf/kb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/mm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/kb;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/kb$a;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/kb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/kb;Lcom/baidu/bdgame/sdk/obf/kb$a;)V
    .registers 3

    .prologue
    .line 180
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kb$2;->b:Lcom/baidu/bdgame/sdk/obf/kb;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kb$2;->a:Lcom/baidu/bdgame/sdk/obf/kb$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$2;->b:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Lcom/baidu/bdgame/sdk/obf/kb;)V

    .line 206
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$2;->b:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->b(Lcom/baidu/bdgame/sdk/obf/kb;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb$2;->b:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_now_logining"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$2;->b:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bq;->a(Landroid/content/Context;I)V

    .line 190
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb$2;->b:Lcom/baidu/bdgame/sdk/obf/kb;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb$2;->b:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/kb$2$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/kb$2$1;-><init>(Lcom/baidu/bdgame/sdk/obf/kb$2;)V

    invoke-static {v1, p1, v2}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->a(Lcom/baidu/bdgame/sdk/obf/kb;Lcom/baidu/bdgame/sdk/obf/bk;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 198
    return-void
.end method
