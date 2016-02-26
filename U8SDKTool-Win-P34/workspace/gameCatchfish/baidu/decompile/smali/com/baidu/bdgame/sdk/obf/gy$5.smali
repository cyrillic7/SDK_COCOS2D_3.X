.class final Lcom/baidu/bdgame/sdk/obf/gy$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gy;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gy;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gy;)V
    .registers 2

    .prologue
    .line 236
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gy;->a(Lcom/baidu/bdgame/sdk/obf/gy;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gy;->j(Lcom/baidu/bdgame/sdk/obf/gy;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    new-instance v5, Lcom/baidu/bdgame/sdk/obf/gy$5$1;

    invoke-direct {v5, p0, v1}, Lcom/baidu/bdgame/sdk/obf/gy$5$1;-><init>(Lcom/baidu/bdgame/sdk/obf/gy$5;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    .line 250
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/gy;->g(Lcom/baidu/bdgame/sdk/obf/gy;)I

    move-result v3

    packed-switch v3, :pswitch_data_72

    .line 263
    :goto_2b
    if-eqz v0, :cond_3e

    .line 264
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_bind"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gy;->c(I)V

    .line 266
    :cond_3e
    return-void

    .line 252
    :pswitch_3f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2, v5}, Lcom/baidu/bdgame/sdk/obf/bl;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    goto :goto_2b

    .line 255
    :pswitch_4a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/gy;->h(Lcom/baidu/bdgame/sdk/obf/gy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    goto :goto_2b

    .line 258
    :pswitch_5b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gy;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/gy;->l(Lcom/baidu/bdgame/sdk/obf/gy;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/gy$5;->a:Lcom/baidu/bdgame/sdk/obf/gy;

    invoke-static {v4}, Lcom/baidu/bdgame/sdk/obf/gy;->i(Lcom/baidu/bdgame/sdk/obf/gy;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    goto :goto_2b

    .line 250
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_4a
        :pswitch_5b
    .end packed-switch
.end method
