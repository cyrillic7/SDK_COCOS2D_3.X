.class final Lcom/baidu/bdgame/sdk/obf/mo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mo;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mo;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mo;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mo$2;->a:Lcom/baidu/bdgame/sdk/obf/mo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mo$2;->a:Lcom/baidu/bdgame/sdk/obf/mo;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/mo;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bl;->c(Landroid/content/Context;)I

    move-result v1

    .line 54
    packed-switch v1, :pswitch_data_42

    .line 64
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/lc;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mo$2;->a:Lcom/baidu/bdgame/sdk/obf/mo;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/mo;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lc;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 67
    :goto_19
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mo$2;->a:Lcom/baidu/bdgame/sdk/obf/mo;

    invoke-virtual {v2, v1, v0}, Lcom/baidu/bdgame/sdk/obf/mo;->b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 68
    return-void

    .line 56
    :pswitch_1f
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ja;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mo$2;->a:Lcom/baidu/bdgame/sdk/obf/mo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mo;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ja;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v2, "bundle_key_index"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_19

    .line 61
    :pswitch_36
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/md;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/mo$2;->a:Lcom/baidu/bdgame/sdk/obf/mo;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/mo;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/md;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    goto :goto_19

    .line 54
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
