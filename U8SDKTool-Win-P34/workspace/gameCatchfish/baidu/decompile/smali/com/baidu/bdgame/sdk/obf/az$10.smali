.class final Lcom/baidu/bdgame/sdk/obf/az$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/az;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/az;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/az;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/az$10;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 127
    if-nez p2, :cond_26

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$10;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->f(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az$10;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/az;->e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_icon_unfold_selector"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az$10;->a:Lcom/baidu/bdgame/sdk/obf/az;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/az;->g(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    :cond_26
    return-void
.end method
