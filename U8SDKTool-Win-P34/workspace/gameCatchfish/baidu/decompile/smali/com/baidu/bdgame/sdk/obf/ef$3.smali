.class final Lcom/baidu/bdgame/sdk/obf/ef$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ef;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ef;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ef;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ef$3;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef$3;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ef;->a(Lcom/baidu/bdgame/sdk/obf/ef;Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef$3;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ef;->b(Lcom/baidu/bdgame/sdk/obf/ef;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 139
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef$3;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ef;->c(Lcom/baidu/bdgame/sdk/obf/ef;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ef$3;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->c(Lcom/baidu/bdgame/sdk/obf/ef;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ef$3;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ef;->a(Lcom/baidu/bdgame/sdk/obf/ef;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/eg;->b(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/eg;->a(J)V

    .line 152
    :cond_3a
    :goto_3a
    return-void

    .line 143
    :cond_3b
    :try_start_3b
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ef$3;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ef;->a(Lcom/baidu/bdgame/sdk/obf/ef;F)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 145
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ef$3;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->c(Lcom/baidu/bdgame/sdk/obf/ef;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/eg;->a(F)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_50} :catch_51

    goto :goto_3a

    .line 147
    :catch_51
    move-exception v0

    .line 148
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef$3;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ef;->b(Lcom/baidu/bdgame/sdk/obf/ef;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ef$3;->a:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ef;->f(Lcom/baidu/bdgame/sdk/obf/ef;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->g(Landroid/content/Context;)V

    goto :goto_3a
.end method
