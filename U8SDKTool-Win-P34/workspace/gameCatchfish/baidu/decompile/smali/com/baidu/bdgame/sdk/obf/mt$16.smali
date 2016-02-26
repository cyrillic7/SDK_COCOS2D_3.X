.class final Lcom/baidu/bdgame/sdk/obf/mt$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mt;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mt;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mt;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mt$16;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$16;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->a(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3f

    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$16;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->b(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :goto_1c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$16;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->c(Lcom/baidu/bdgame/sdk/obf/mt;)V

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$16;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->d(Lcom/baidu/bdgame/sdk/obf/mt;)Lcom/baidu/bdgame/sdk/obf/mt$a;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$16;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->d(Lcom/baidu/bdgame/sdk/obf/mt;)Lcom/baidu/bdgame/sdk/obf/mt$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mt$a;->c()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$16;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->d(Lcom/baidu/bdgame/sdk/obf/mt;)Lcom/baidu/bdgame/sdk/obf/mt$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mt$a;->b()V

    .line 138
    :cond_3e
    return-void

    .line 132
    :cond_3f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mt$16;->a:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->b(Lcom/baidu/bdgame/sdk/obf/mt;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1c
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 125
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 121
    return-void
.end method
