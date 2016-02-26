.class final Lcom/baidu/bdgame/sdk/obf/ge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ge;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ge;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ge;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(I)V

    .line 100
    :goto_18
    return-void

    .line 87
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->b(Lcom/baidu/bdgame/sdk/obf/ge;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 93
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ge;->a(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ge;->c(Lcom/baidu/bdgame/sdk/obf/ge;)Lcom/baidu/bdgame/sdk/obf/gf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/bdgame/sdk/obf/gf;->d(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5b} :catch_5c

    goto :goto_18

    .line 96
    :catch_5c
    move-exception v0

    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->b(Lcom/baidu/bdgame/sdk/obf/ge;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ge$1;->a:Lcom/baidu/bdgame/sdk/obf/ge;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ge;->d(Lcom/baidu/bdgame/sdk/obf/ge;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->g(Landroid/content/Context;)V

    goto :goto_18
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 79
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 73
    return-void
.end method
